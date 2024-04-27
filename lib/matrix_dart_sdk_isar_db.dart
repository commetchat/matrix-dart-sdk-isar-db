// ignore_for_file: avoid_print

library matrix_dart_sdk_isar_db;

import 'dart:convert';
import 'dart:math';
import 'dart:typed_data';

import 'package:isar/isar.dart';
import 'package:matrix/encryption/utils/olm_session.dart';
import 'package:matrix/encryption/utils/outbound_group_session.dart';
import 'package:matrix/encryption/utils/ssss_cache.dart';
import 'package:matrix/encryption/utils/stored_inbound_group_session.dart';
import 'package:matrix/matrix.dart';
import 'package:matrix/src/utils/queued_to_device_event.dart';
import 'package:matrix_dart_sdk_isar_db/schemas/account_data.dart';
import 'package:matrix_dart_sdk_isar_db/schemas/client.dart';
import 'package:matrix_dart_sdk_isar_db/schemas/event_data.dart';
import 'package:matrix_dart_sdk_isar_db/schemas/inbound_group_session.dart';
import 'package:matrix_dart_sdk_isar_db/schemas/non_preload_room_states.dart';
import 'package:matrix_dart_sdk_isar_db/schemas/olm_session.dart';
import 'package:matrix_dart_sdk_isar_db/schemas/outbound_group_session.dart';
import 'package:matrix_dart_sdk_isar_db/schemas/preload_room_states.dart';
import 'package:matrix_dart_sdk_isar_db/schemas/presence_data.dart';
import 'package:matrix_dart_sdk_isar_db/schemas/room_account_data.dart';
import 'package:matrix_dart_sdk_isar_db/schemas/room_data.dart';
import 'package:matrix_dart_sdk_isar_db/schemas/room_members.dart';
import 'package:matrix_dart_sdk_isar_db/schemas/seen_device_id.dart';
import 'package:matrix_dart_sdk_isar_db/schemas/seen_public_key.dart';
import 'package:matrix_dart_sdk_isar_db/schemas/ssss_cache_data.dart';
import 'package:matrix_dart_sdk_isar_db/schemas/timeline_fragment_data.dart';
import 'package:matrix_dart_sdk_isar_db/schemas/to_device_queue.dart';
import 'package:matrix_dart_sdk_isar_db/schemas/user_cross_signing_key.dart';
import 'package:matrix_dart_sdk_isar_db/schemas/user_device_key.dart';
import 'package:matrix_dart_sdk_isar_db/schemas/user_device_key_info.dart';

class MatrixSdkIsarDatabase extends DatabaseApi {
  static Future<MatrixSdkIsarDatabase> init(
      String directory, String name) async {
    var instance = await Isar.open([
      SeenDeviceIdSchema,
      SeenPublicKeySchema,
      AccountDataSchema,
      ClientDataSchema,
      ToDeviceQueueSchema,
      OlmSessionDataSchema,
      UserDeviceKeySchema,
      UserDeviceKeyInfoSchema,
      EventDataSchema,
      PreloadRoomStateSchema,
      NonPreloadRoomStateSchema,
      TimelineFragmentDataSchema,
      RoomAccountDataSchema,
      RoomMembersSchema,
      RoomDataSchema,
      InboundGroupSessionSchema,
      UserCrossSigningKeySchema,
      OutboundGroupSessionDataSchema,
      SSSSCacheDataSchema,
      PresenceDataSchema,
    ], directory: directory, name: name);
    return MatrixSdkIsarDatabase._(instance);
  }

  Isar instance;
  MatrixSdkIsarDatabase._(this.instance);

  @override
  Future<void> addSeenDeviceId(
      String userId, String deviceId, String publicKeys) async {
    await instance.writeTxn(() async {
      await instance.seenDeviceIds
          .put(SeenDeviceId(userId, deviceId, publicKeys));
    });
  }

  @override
  Future<void> addSeenPublicKey(String publicKey, String deviceId) async {
    await instance.writeTxn(() async {
      return instance.seenPublicKeys.put(SeenPublicKey(publicKey, deviceId));
    });
  }

  @override
  Future<void> clear() {
    return instance.writeTxn(() => instance.clear());
  }

  @override
  Future<void> clearCache() async {}

  @override
  Future clearSSSSCache() {
    return instance.writeTxn(() => instance.sSSSCacheDatas.clear());
  }

  @override
  Future close() {
    return instance.close();
  }

  @override
  Future<void> delete() {
    return instance.close(deleteFromDisk: true);
  }

  @override
  Future deleteFromToDeviceQueue(int id) {
    return instance.writeTxn(() => instance.toDeviceQueues.delete(id));
  }

  @override
  Future deleteOldFiles(int savedAt) async {}

  @override
  Future<void> deleteTimelineForRoom(String roomId) {
    return instance.writeTxn(() async {
      var data = await instance.timelineFragmentDatas
          .filter()
          .roomIdEqualTo(roomId)
          .findFirst();

      if (data != null) {
        await instance.timelineFragmentDatas.delete(data.id);
      }
    });
  }

  @override
  Future<String?> deviceIdSeen(userId, deviceId) async {
    var data = await instance.txn(() => instance.seenDeviceIds
        .filter()
        .userIdEqualTo(userId)
        .deviceIdEqualTo(deviceId)
        .findFirst());

    if (data == null) return null;

    return data.publicKeys;
  }

  @override
  Future<String> exportDump() async {
    return "";
  }

  @override
  Future<void> forgetRoom(String roomId) async {
    await instance.writeTxn(() async {
      var events =
          await instance.eventDatas.filter().roomIdEqualTo(roomId).findAll();
      await instance.eventDatas.deleteAll(events.map((e) => e.id).toList());

      var states = await instance.preloadRoomStates
          .filter()
          .roomIdEqualTo(roomId)
          .findAll();
      await instance.preloadRoomStates
          .deleteAll(states.map((e) => e.id).toList());

      var nonPreloadStates = await instance.nonPreloadRoomStates
          .filter()
          .roomIdEqualTo(roomId)
          .findAll();
      await instance.nonPreloadRoomStates
          .deleteAll(nonPreloadStates.map((e) => e.id).toList());

      var members =
          await instance.roomMembers.filter().roomIdEqualTo(roomId).findAll();
      await instance.roomMembers.deleteAll(members.map((e) => e.id).toList());

      var accountData = await instance.roomAccountDatas
          .filter()
          .roomIdEqualTo(roomId)
          .findAll();
      await instance.roomAccountDatas
          .deleteAll(accountData.map((e) => e.id).toList());

      var rooms =
          await instance.roomDatas.filter().roomIdEqualTo(roomId).findAll();

      await instance.roomDatas.deleteAll(rooms.map((e) => e.id).toList());
    });
  }

  @override
  Future<Map<String, BasicEvent>> getAccountData() async {
    final data = <String, BasicEvent>{};

    await instance.txn(() async {
      var entries = await instance.accountDatas.where().findAll();
      for (var entry in entries) {
        data[entry.type] =
            BasicEvent(type: entry.type, content: jsonDecode(entry.content));
      }
    });

    return data;
  }

  @override
  Future<List<StoredInboundGroupSession>> getAllInboundGroupSessions() async {
    var data = await instance
        .txn(() => instance.inboundGroupSessions.where().findAll());

    return (data.map((e) => StoredInboundGroupSession(
        roomId: e.roomId,
        sessionId: e.sessionId,
        pickle: e.pickle,
        content: e.content,
        indexes: e.indexes,
        allowedAtIndex: e.allowedAtIndex,
        uploaded: e.uploaded,
        senderKey: e.senderKey,
        senderClaimedKeys: e.senderClaimedKey))).toList();
  }

  @override
  Future<Map<String, Map>> getAllOlmSessions() async {
    var data = await instance.olmSessionDatas.where().findAll();

    var result = <String, Map>{};
    for (var entry in data) {
      if (result.containsKey(entry.identityKey) == false) {
        result[entry.identityKey] = {};
      }
      result[entry.identityKey]![entry.sessionId] = {
        "identity_key": entry.identityKey,
        "pickle": entry.pickle,
        "session_id": entry.sessionId,
        "last_received": entry.lastReceived,
      };
    }

    return result;
  }

  @override
  Future<Map<String, dynamic>?> getClient(String name) async {
    Map<String, dynamic>? result;
    await instance.txn(() async {
      var entry = await instance.clientDatas.get(0);
      if (entry == null) {
        return null;
      }

      result = {};
      result!["homeserver_url"] = entry.homeserverUrl;
      result!["token"] = entry.token;
      result!["token_expires_at"] =
          entry.tokenExpiresAt?.millisecondsSinceEpoch.toString();
      result!["refresh_token"] = entry.refreshToken;
      result!["user_id"] = entry.userId;
      result!["device_id"] = entry.deviceId;
      result!["device_name"] = entry.deviceName;
      result!["prev_batch"] = entry.prevBatch;
      result!["olm_account"] = entry.olmAccount;
      result!["sync_filter_id"] = entry.syncFilterId;
      result!.removeWhere((key, value) => value == null);
    });

    return result;
  }

  @override
  Future<Event?> getEventById(String eventId, Room room) async {
    var data = await instance.txn(() async {
      return await instance.eventDatas
          .filter()
          .roomIdEqualTo(room.id)
          .eventIdEqualTo(eventId)
          .findFirst();
    });

    if (data == null) {
      return null;
    }

    return Event.fromJson(jsonDecode(data.content), room);
  }

  @override
  Future<List<String>> getEventIdList(Room room,
      {int start = 0, bool includeSending = false, int? limit}) async {
    return await instance.txn(() async {
      var sending = includeSending
          ? await instance.timelineFragmentDatas
              .filter()
              .roomIdEqualTo(room.id)
              .sendingEqualTo(true)
              .findFirst()
          : null;

      var sent = await instance.timelineFragmentDatas
          .filter()
          .roomIdEqualTo(room.id)
          .sendingEqualTo(false)
          .findFirst();

      if (sent == null) return <String>[];

      final eventIds = sending != null
          ? sending.fragments! + sent.fragments!
          : sent.fragments!;
      if (limit != null && eventIds.length > limit) {
        eventIds.removeRange(limit, eventIds.length);
      }

      return eventIds;
    });
  }

  Future<List<Event>> _getEventsByIds(List<String> eventIds, Room room) async {
    var data = await instance.txn(() async {
      return await Future.wait(eventIds.map((e) => instance.eventDatas
          .filter()
          .roomIdEqualTo(room.id)
          .eventIdEqualTo(e)
          .findFirst()));
    });

    data.removeWhere((element) => element == null);

    return data
        .map((e) => Event.fromJson(jsonDecode(e!.content), room))
        .toList();
  }

  @override
  Future<List<Event>> getEventList(Room room,
      {int start = 0, bool onlySending = false, int? limit}) async {
    var data = await instance.txn(() async {
      var sending = await instance.timelineFragmentDatas
          .filter()
          .roomIdEqualTo(room.id)
          .sendingEqualTo(true)
          .findFirst();

      var sent = await instance.timelineFragmentDatas
          .filter()
          .roomIdEqualTo(room.id)
          .sendingEqualTo(false)
          .findFirst();

      if (sent == null) {
        return <String>[];
      }

      final end = min(
          sent.fragments!.length, start + (limit ?? sent.fragments!.length));

      final eventIds = [
        if (sending != null) ...sending.fragments!,
        if (!onlySending && start < sent.fragments!.length)
          ...sent.fragments!.getRange(start, end),
      ];

      return eventIds;
    });

    return _getEventsByIds(data, room);
  }

  @override
  Future<Uint8List?> getFile(Uri mxcUri) async {
    return null;
  }

  @override
  Future<StoredInboundGroupSession?> getInboundGroupSession(
      String roomId, String sessionId) async {
    var data = await instance.txn(() => instance.inboundGroupSessions
        .filter()
        .sessionIdEqualTo(sessionId)
        .findFirst());

    if (data == null) {
      return null;
    }

    return StoredInboundGroupSession(
        roomId: data.roomId,
        sessionId: data.sessionId,
        pickle: data.pickle,
        content: data.content,
        indexes: data.indexes,
        allowedAtIndex: data.allowedAtIndex,
        uploaded: data.uploaded,
        senderKey: data.senderKey,
        senderClaimedKeys: data.senderClaimedKey);
  }

  @override
  Future<List<StoredInboundGroupSession>>
      getInboundGroupSessionsToUpload() async {
    var data = await instance.txn(() => instance.inboundGroupSessions
        .filter()
        .uploadedEqualTo(false)
        .findAll());

    return (data.map((e) => StoredInboundGroupSession(
        roomId: e.roomId,
        sessionId: e.sessionId,
        pickle: e.pickle,
        content: e.content,
        indexes: e.indexes,
        allowedAtIndex: e.allowedAtIndex,
        uploaded: e.uploaded,
        senderKey: e.senderKey,
        senderClaimedKeys: e.senderClaimedKey))).toList();
  }

  @override
  Future<List<String>> getLastSentMessageUserDeviceKey(
      String userId, String deviceId) async {
    var data = await instance.txn(() => instance.userDeviceKeys
        .filter()
        .userIdEqualTo(userId)
        .deviceIdEqualTo(deviceId)
        .findFirst());
    if (data == null) return [];

    return [data.lastSentMessage];
  }

  @override
  Future<List<OlmSession>> getOlmSessions(
      String identityKey, String userId) async {
    var data = await instance.txn(() => instance.olmSessionDatas
        .filter()
        .identityKeyEqualTo(identityKey)
        .findAll());

    return data
        .map((e) => OlmSession.fromJson({
              'identity_key': e.identityKey,
              'pickle': e.pickle,
              'session_id': e.sessionId,
              'last_received': e.lastReceived
            }, userId))
        .toList();
  }

  @override
  Future<List<OlmSession>> getOlmSessionsForDevices(
      List<String> identityKeys, String userId) async {
    final sessions =
        await Future.wait(identityKeys.map((e) => getOlmSessions(e, userId)));
    return <OlmSession>[for (final sublist in sessions) ...sublist];
  }

  @override
  Future<OutboundGroupSession?> getOutboundGroupSession(
      String roomId, String userId) async {
    return instance.txn(() async {
      var data = await instance.outboundGroupSessionDatas
          .filter()
          .roomIdEqualTo(roomId)
          .findFirst();

      if (data == null) return null;

      return OutboundGroupSession.fromJson({
        "room_id": data.roomId,
        "pickle": data.pickle,
        "device_ids": data.deviceIds,
        "creation_time": data.creationTime,
      }, userId);
    });
  }

  @override
  Future<CachedPresence?> getPresence(String userId) {
    return instance.txn(() async {
      var data = await instance.presenceDatas
          .filter()
          .userIdEqualTo(userId)
          .findFirst();

      if (data == null) return null;

      return CachedPresence.fromJson(jsonDecode(data.presence));
    });
  }

  @override
  Future<List<Room>> getRoomList(Client client) async {
    final rooms = <String, Room>{};

    await instance.txn(() async {
      var allRooms = await instance.roomDatas.where().findAll();

      for (var data in allRooms) {
        var room = Room.fromJson(jsonDecode(data.content), client);
        rooms[room.id] = room;
      }

      var preloadStates = await instance.preloadRoomStates.where().findAll();

      for (var state in preloadStates) {
        var room = rooms[state.roomId];
        if (room == null) {
          continue;
        }

        var content = jsonDecode(state.content) as Map<String, dynamic>;
        for (var entry in content.values) {
          var event = Event.fromJson(entry, room);
          room.setState(event);
        }
      }

      var accountDatas = await instance.roomAccountDatas.where().findAll();

      for (var accountData in accountDatas) {
        var event = BasicRoomEvent.fromJson(jsonDecode(accountData.content));

        var room = rooms[event.roomId];
        if (room == null) {
          print("Found account data for unknown room ${event.roomId}");
          continue;
        }

        room.roomAccountData[event.type] = event;
      }
    });

    return rooms.values.toList();
  }

  @override
  Future<SSSSCache?> getSSSSCache(String type) async {
    var data = await instance.txn(
        () => instance.sSSSCacheDatas.filter().typeEqualTo(type).findFirst());

    if (data == null) return null;

    return SSSSCache(
        type: data.type,
        keyId: data.keyId,
        ciphertext: data.cipherText,
        content: data.content);
  }

  @override
  Future<Room?> getSingleRoom(Client client, String roomId,
      {bool loadImportantStates = true}) async {
    return instance.txn(() async {
      var roomData =
          await instance.roomDatas.filter().roomIdEqualTo(roomId).findFirst();

      if (roomData == null) {
        return null;
      }

      final room = Room.fromJson(jsonDecode(roomData.content), client);

      if (loadImportantStates) {
        var states = await instance.preloadRoomStates
            .filter()
            .roomIdEqualTo(roomId)
            .findAll();

        for (var state in states) {
          var content = jsonDecode(state.content)[''];
          room.setState(Event.fromJson(content, room));
        }
      }

      return room;
    });
  }

  @override
  Future<List<QueuedToDeviceEvent>> getToDeviceEventQueue() async {
    late List<ToDeviceQueue> entries;
    await instance.txn(() async {
      entries = await instance.toDeviceQueues.where().findAll();
    });

    return entries
        .map((e) => QueuedToDeviceEvent(
            id: e.id,
            type: e.type,
            txnId: e.txnId,
            content: jsonDecode(e.content)))
        .toList();
  }

  @override
  Future<List<Event>> getUnimportantRoomEventStatesForRoom(
      List<String> events, Room room) async {
    var states = await instance.txn(() => instance.nonPreloadRoomStates
        .filter()
        .roomIdEqualTo(room.id)
        .findAll());

    states = states.where((element) => events.contains(element.type)).toList();

    return states
        .map((e) => Event.fromJson(jsonDecode(e.content), room))
        .toList();
  }

  @override
  Future<User?> getUser(String userId, Room room) {
    return instance.txn(() async {
      var user = await instance.roomMembers
          .filter()
          .roomIdEqualTo(room.id)
          .userIdEqualTo(userId)
          .findFirst();

      if (user == null) {
        return null;
      }

      return Event.fromJson(jsonDecode(user.content), room).asUser;
    });
  }

  @override
  Future<Map<String, DeviceKeysList>> getUserDeviceKeys(Client client) async {
    return instance.txn(() async {
      var keyInfos = await instance.userDeviceKeyInfos.where().findAll();
      if (keyInfos.isEmpty) {
        return {};
      }

      final keyIsOutdated = <String, bool>{
        for (var entry in keyInfos) entry.userId: entry.outdated
      };

      final userDeviceKeys = await instance.userDeviceKeys.where().findAll();

      final userCrossSigningKeys =
          await instance.userCrossSigningKeys.where().findAll();

      final res = <String, DeviceKeysList>{};

      for (final entry in keyInfos) {
        var crossSigningKeys = userCrossSigningKeys
            .where((element) => element.userId == entry.userId)
            .toList();

        var childEntries = userDeviceKeys
            .where((element) => element.userId == entry.userId)
            .toList();

        res[entry.userId] = DeviceKeysList.fromDbJson(
            {
              'client_id': client.id,
              'user_id': entry.userId,
              'outdated': keyIsOutdated[entry.userId],
            },
            childEntries
                .map((e) => {
                      "device_id": e.deviceId,
                      "verified": e.verified,
                      "blocked": e.blocked,
                      "content": jsonDecode(e.content)
                    })
                .toList(),
            crossSigningKeys
                .map((e) => <String, dynamic>{
                      "public_key": e.publicKey,
                      "verified": e.verified,
                      "blocked": e.blocked,
                      "content": jsonDecode(e.content ?? "{}")
                    })
                .toList(),
            client);
      }

      return res;
    });
  }

  @override
  Future<List<User>> getUsers(Room room) {
    return instance.txn(() async {
      var users =
          await instance.roomMembers.filter().roomIdEqualTo(room.id).findAll();

      return users
          .map((e) => Event.fromJson(jsonDecode(e.content), room).asUser)
          .toList();
    });
  }

  @override
  Future<bool> importDump(String export) async {
    return false;
  }

  @override
  Future insertClient(
      String name,
      String homeserverUrl,
      String token,
      DateTime? tokenExpiresAt,
      String? refreshToken,
      String userId,
      String? deviceId,
      String? deviceName,
      String? prevBatch,
      String? olmAccount) async {
    await instance.writeTxn(() async {
      var data = ClientData();
      data.name = name;
      data.homeserverUrl = homeserverUrl;
      data.token = token;
      data.tokenExpiresAt = tokenExpiresAt;
      data.refreshToken = refreshToken;
      data.userId = userId;
      data.deviceId = deviceId;
      data.deviceName = deviceName;
      data.prevBatch = prevBatch;
      data.olmAccount = olmAccount;
      await instance.clientDatas.put(data);
    });
  }

  @override
  Future<int> insertIntoToDeviceQueue(
      String type, String txnId, String content) async {
    int result = 0;
    await instance.writeTxn(() async {
      result = await instance.toDeviceQueues
          .put(ToDeviceQueue(type, txnId, content));
    });

    return result;
  }

  @override
  Future markInboundGroupSessionAsUploaded(
      String roomId, String sessionId) async {
    await instance.writeTxn(() async {
      var existing = await instance.inboundGroupSessions
          .filter()
          .sessionIdEqualTo(sessionId)
          .findFirst();
      if (existing == null) {
        print(
            "tried to update group session indices of a session which was not found in db");
        return;
      }

      existing.uploaded = true;
      await instance.inboundGroupSessions.put(existing);
    });
  }

  @override
  Future markInboundGroupSessionsAsNeedingUpload() async {
    await instance.writeTxn(() async {
      var data = await instance.inboundGroupSessions.where().findAll();
      for (var entry in data) {
        entry.uploaded = false;
      }

      await instance.inboundGroupSessions.putAll(data);
    });
  }

  @override
  Future<String?> publicKeySeen(String publicKey) async {
    var data = await instance.txn(() => instance.seenPublicKeys
        .filter()
        .publicKeyEqualTo(publicKey)
        .findFirst());

    return data?.deviceId;
  }

  @override
  Future removeEvent(String eventId, String roomId) async {
    await instance.writeTxn(() async {
      var entries = await instance.eventDatas
          .filter()
          .roomIdEqualTo(roomId)
          .eventIdEqualTo(eventId)
          .findAll();

      await instance.eventDatas.deleteAll(entries.map((e) => e.id).toList());

      var fragments = await instance.timelineFragmentDatas
          .filter()
          .roomIdEqualTo(roomId)
          .findAll();
      for (var frag in fragments) {
        frag.fragments =
            frag.fragments?.where((element) => element != eventId).toList();
        await instance.timelineFragmentDatas.put(frag);
      }
    });
  }

  @override
  Future removeOutboundGroupSession(String roomId) async {
    await instance.writeTxn(() async {
      var data = await instance.outboundGroupSessionDatas
          .filter()
          .roomIdEqualTo(roomId)
          .findFirst();
      if (data != null) {
        await instance.outboundGroupSessionDatas.delete(data.id);
      }
    });
  }

  @override
  Future removeUserCrossSigningKey(String userId, String publicKey) async {
    await instance.writeTxn(() async {
      var data = await instance.userCrossSigningKeys
          .filter()
          .userIdEqualTo(userId)
          .publicKeyEqualTo(publicKey)
          .findAll();

      await instance.userCrossSigningKeys
          .deleteAll(data.map((e) => e.id).toList());
    });
  }

  @override
  Future removeUserDeviceKey(String userId, String deviceId) {
    return instance.writeTxn(() async {
      var data = await instance.userDeviceKeys
          .filter()
          .userIdEqualTo(userId)
          .deviceIdEqualTo(deviceId)
          .findFirst();
      if (data != null) {
        await instance.userDeviceKeys.delete(data.id);
      }
    });
  }

  @override
  Future setBlockedUserCrossSigningKey(
      bool blocked, String userId, String publicKey) async {
    await instance.writeTxn(() async {
      var data = await instance.userCrossSigningKeys
          .filter()
          .userIdEqualTo(userId)
          .publicKeyEqualTo(publicKey)
          .findFirst();

      data ??= UserCrossSigningKey();
      data.blocked = blocked;
      data.userId = userId;
      data.publicKey = publicKey;

      await instance.userCrossSigningKeys.put(data);
    });
  }

  @override
  Future setBlockedUserDeviceKey(
      bool blocked, String userId, String deviceId) async {
    await instance.writeTxn(() async {
      var existing = await instance.userDeviceKeys
          .filter()
          .userIdEqualTo(userId)
          .deviceIdEqualTo(deviceId)
          .findFirst();

      existing ??= UserDeviceKey();
      existing.userId = userId;
      existing.deviceId = deviceId;

      existing.blocked = blocked;
      await instance.userDeviceKeys.put(existing);
    });
  }

  @override
  Future setLastActiveUserDeviceKey(
      int lastActive, String userId, String deviceId) {
    return instance.writeTxn(() async {
      var data = await instance.userDeviceKeys
          .filter()
          .userIdEqualTo(userId)
          .deviceIdEqualTo(deviceId)
          .findFirst();

      data ??= UserDeviceKey();
      data.userId = userId;
      data.deviceId = deviceId;
      data.lastActive = lastActive;

      instance.userDeviceKeys.put(data);
    });
  }

  @override
  Future setLastSentMessageUserDeviceKey(
      String lastSentMessage, String userId, String deviceId) async {
    await instance.writeTxn(() async {
      var data = await instance.userDeviceKeys
          .filter()
          .userIdEqualTo(userId)
          .deviceIdEqualTo(deviceId)
          .findFirst();

      data ??= UserDeviceKey();

      data.deviceId = deviceId;
      data.userId = userId;
      data.lastSentMessage = lastSentMessage;

      instance.userDeviceKeys.put(data);
    });
  }

  @override
  Future setRoomPrevBatch(
      String? prevBatch, String roomId, Client client) async {
    await instance.writeTxn(() async {
      var roomData =
          await instance.roomDatas.filter().roomIdEqualTo(roomId).findFirst();
      if (roomData == null) {
        return;
      }

      var room = Room.fromJson(jsonDecode(roomData.content), client);
      room.prev_batch = prevBatch;
      roomData.content = jsonEncode(room.toJson());

      await instance.roomDatas.put(roomData);
    });
  }

  @override
  Future setVerifiedUserCrossSigningKey(
      bool verified, String userId, String publicKey) async {
    await instance.writeTxn(() async {
      var data = await instance.userCrossSigningKeys
          .filter()
          .userIdEqualTo(userId)
          .publicKeyEqualTo(publicKey)
          .findFirst();

      data ??= UserCrossSigningKey();
      data.verified = verified;
      data.userId = userId;
      data.publicKey = publicKey;

      await instance.userCrossSigningKeys.put(data);
    });
  }

  @override
  Future setVerifiedUserDeviceKey(
      bool verified, String userId, String deviceId) async {
    await instance.writeTxn(() async {
      var existing = await instance.userDeviceKeys
          .filter()
          .userIdEqualTo(userId)
          .deviceIdEqualTo(deviceId)
          .findFirst();

      existing ??= UserDeviceKey();
      existing.userId = userId;
      existing.deviceId = deviceId;

      existing.verified = verified;
      await instance.userDeviceKeys.put(existing);
    });
  }

  @override
  Future storeAccountData(String type, String content) async {
    await instance.writeTxn(() async {
      var existing =
          await instance.accountDatas.filter().typeEqualTo(type).findFirst();

      existing ??= AccountData();

      existing.content = content;
      existing.type = type;

      await instance.accountDatas.put(existing);
    });
  }

  @override
  Future<void> storeEventUpdate(EventUpdate eventUpdate, Client client) async {
    if (eventUpdate.type == EventUpdateType.ephemeral) {
      return;
    }

    final tmpRoom = client.getRoomById(eventUpdate.roomID) ??
        Room(id: eventUpdate.roomID, client: client);

    if (eventUpdate.content['type'] == EventTypes.Redaction) {
      final eventId = eventUpdate.content.tryGet<String>('redacts');
      final event =
          eventId != null ? await getEventById(eventId, tmpRoom) : null;

      if (event != null) {
        event.setRedactionEvent(Event.fromJson(eventUpdate.content, tmpRoom));

        await instance.writeTxn(() async {
          EventData? data = await instance.eventDatas
              .filter()
              .roomIdEqualTo(eventUpdate.roomID)
              .eventIdEqualTo(eventId!)
              .findFirst();

          data ??= EventData();

          data.roomId = eventUpdate.roomID;
          data.eventId = eventId;
          data.content = jsonEncode(event.toJson());

          await instance.eventDatas.put(data);
        });

        if (tmpRoom.lastEvent?.eventId == event.eventId) {
          await instance.writeTxn(() async {
            if (client.importantStateEvents.contains(event.type)) {
              PreloadRoomState? state = await instance.preloadRoomStates
                  .filter()
                  .roomIdEqualTo(eventUpdate.roomID)
                  .typeEqualTo(event.type)
                  .findFirst();

              state ??= PreloadRoomState();

              state.roomId = eventUpdate.roomID;
              state.type = event.type;
              state.content = jsonEncode({"": event.toJson()});

              await instance.preloadRoomStates.put(state);
            } else {
              NonPreloadRoomState? state = await instance.nonPreloadRoomStates
                  .filter()
                  .roomIdEqualTo(eventUpdate.roomID)
                  .typeEqualTo(event.type)
                  .findFirst();

              state ??= NonPreloadRoomState();

              state.roomId = eventUpdate.roomID;
              state.type = event.type;
              state.content = jsonEncode({"": event.toJson()});
              await instance.nonPreloadRoomStates.put(state);
            }
          });
        }
      }
    }

    if ([EventUpdateType.timeline, EventUpdateType.history]
        .contains(eventUpdate.type)) {
      final eventId = eventUpdate.content["event_id"];
      final prevEvent = await instance.txn(() => instance.eventDatas
          .filter()
          .roomIdEqualTo(eventUpdate.roomID)
          .eventIdEqualTo(eventId)
          .findFirst());

      EventStatus? prevStatus;
      if (prevEvent != null) {
        var content = jsonDecode(prevEvent.content) as Map<String, dynamic>;
        final statusInt = content.tryGet<int>('status') ??
            content
                .tryGetMap<String, dynamic>('unsigned')
                ?.tryGet<int>(messageSendingStatusKey);

        prevStatus = statusInt == null ? null : eventStatusFromInt(statusInt);
      }

      final newStatus = eventStatusFromInt(
        eventUpdate.content.tryGet<int>('status') ??
            eventUpdate.content
                .tryGetMap<String, dynamic>('unsigned')
                ?.tryGet<int>(messageSendingStatusKey) ??
            EventStatus.synced.intValue,
      );

      if (!newStatus.isSynced && prevStatus != null && prevStatus.isSynced) {
        return;
      }

      final status = newStatus.isError || prevStatus == null
          ? newStatus
          : latestEventStatus(
              prevStatus,
              newStatus,
            );

      eventUpdate.content['unsigned'] ??= <String, dynamic>{};
      eventUpdate.content['unsigned'][messageSendingStatusKey] =
          eventUpdate.content['status'] = status.intValue;

      eventUpdate.content['unsigned'] ??= <String, dynamic>{};
      eventUpdate.content['unsigned'][messageSendingStatusKey] =
          eventUpdate.content['status'] = status.intValue;

      final transactionId = eventUpdate.content
          .tryGetMap<String, dynamic>('unsigned')
          ?.tryGet<String>('transaction_id');

      await instance.writeTxn(() async {
        EventData? data = await instance.eventDatas
            .filter()
            .roomIdEqualTo(eventUpdate.roomID)
            .eventIdEqualTo(eventId)
            .findFirst();

        data ??= EventData();
        data.roomId = eventUpdate.roomID;
        data.eventId = eventId;
        data.content = jsonEncode(eventUpdate.content);
        await instance.eventDatas.put(data);
      });

      await instance.writeTxn(() async {
        TimelineFragmentData? data = await instance.timelineFragmentDatas
            .filter()
            .roomIdContains(eventUpdate.roomID)
            .sendingEqualTo(!status.isSent)
            .findFirst();
        data ??= TimelineFragmentData();
        data.roomId = eventUpdate.roomID;
        data.sending = !status.isSent;
        data.fragments ??= List<String>.empty(growable: true);
        data.fragments = List.from(data.fragments!, growable: true);
        if (data.fragments!.contains(eventId) == false) {
          if (eventUpdate.type == EventUpdateType.history) {
            data.fragments!.add(eventId);
          } else {
            data.fragments!.insert(0, eventId);
          }
        } else if (status.isSynced &&
            prevStatus != null &&
            prevStatus.isSent &&
            eventUpdate.type != EventUpdateType.history) {
          data.fragments!.remove(eventId);
          data.fragments!.insert(0, eventId);
        }

        await instance.timelineFragmentDatas.put(data);
      });

      if (status.isSent) {
        await instance.writeTxn(() async {
          TimelineFragmentData? data = await instance.timelineFragmentDatas
              .filter()
              .roomIdContains(eventUpdate.roomID)
              .sendingEqualTo(true)
              .findFirst();
          if (data != null && data.fragments != null) {
            final i =
                data.fragments!.indexWhere((element) => element == eventId);

            if (i != -1) {
              data.fragments!.removeAt(i);
              await instance.timelineFragmentDatas.put(data);
            }
          }
        });
      }

      if (!status.isError && !status.isSending && transactionId != null) {
        await removeEvent(transactionId, eventUpdate.roomID);
      }
    }

    final stateKey = eventUpdate.content['state_key'];
    // Store a common state event
    if (stateKey != null) {
      if (eventUpdate.content['type'] == EventTypes.RoomMember) {
        await instance.writeTxn(() async {
          RoomMembers? member = await instance.roomMembers
              .filter()
              .roomIdEqualTo(eventUpdate.roomID)
              .userIdEqualTo(eventUpdate.content['state_key'])
              .findFirst();

          member ??= RoomMembers();
          member.roomId = eventUpdate.roomID;
          member.userId = eventUpdate.content['state_key'];
          member.content = jsonEncode(eventUpdate.content);

          await instance.roomMembers.put(member);
        });
      } else {
        final type = eventUpdate.content['type'] as String;

        await instance.writeTxn(() async {
          if (client.importantStateEvents.contains(type)) {
            var state = await instance.preloadRoomStates
                .filter()
                .typeEqualTo(type)
                .roomIdEqualTo(eventUpdate.roomID)
                .findFirst();
            state ??= PreloadRoomState();

            state.roomId = eventUpdate.roomID;
            state.type = type;

            var content = jsonDecode(state.content);
            content[stateKey] = eventUpdate.content;
            state.content = jsonEncode(content);
            await instance.preloadRoomStates.put(state);
          } else {
            var state = await instance.nonPreloadRoomStates
                .filter()
                .typeEqualTo(type)
                .roomIdEqualTo(eventUpdate.roomID)
                .findFirst();
            state ??= NonPreloadRoomState();

            state.roomId = eventUpdate.roomID;
            state.type = type;
            state.content = jsonEncode(eventUpdate.content);
            await instance.nonPreloadRoomStates.put(state);
          }
        });
      }

      if (eventUpdate.type == EventUpdateType.accountData) {
        await instance.writeTxn(() async {
          var data = await instance.roomAccountDatas
              .filter()
              .roomIdEqualTo(eventUpdate.roomID)
              .typeEqualTo(eventUpdate.content['type'])
              .findFirst();

          data ??= RoomAccountData();

          data.roomId = eventUpdate.roomID;
          data.type = eventUpdate.content['type'];
          data.content = jsonEncode(eventUpdate.content);
          instance.roomAccountDatas.put(data);
        });
      }
    }
  }

  @override
  Future storeFile(Uri mxcUri, Uint8List bytes, int time) async {}

  @override
  Future storeInboundGroupSession(
      String roomId,
      String sessionId,
      String pickle,
      String content,
      String indexes,
      String allowedAtIndex,
      String senderKey,
      String senderClaimedKey) async {
    await instance.writeTxn(() async {
      var current = await instance.inboundGroupSessions
          .filter()
          .sessionIdEqualTo(sessionId)
          .findFirst();
      current ??= InboundGroupSession();
      current.roomId = roomId;
      current.sessionId = sessionId;
      current.pickle = pickle;
      current.content = content;
      current.indexes = indexes;
      current.allowedAtIndex = allowedAtIndex;
      current.senderKey = senderKey;
      current.senderClaimedKey = senderClaimedKey;

      await instance.inboundGroupSessions.put(current);
    });
  }

  @override
  Future storeOlmSession(
      String identityKey, String sessionId, String pickle, int lastReceived) {
    return instance.writeTxn(() async {
      OlmSessionData? data = await instance.olmSessionDatas
          .filter()
          .sessionIdEqualTo(sessionId)
          .findFirst();
      data ??= OlmSessionData();

      data.identityKey = identityKey;
      data.lastReceived = lastReceived;
      data.pickle = pickle;
      data.sessionId = sessionId;

      await instance.olmSessionDatas.put(data);
    });
  }

  @override
  Future storeOutboundGroupSession(
      String roomId, String pickle, String deviceIds, int creationTime) async {
    await instance.writeTxn(() async {
      var data = await instance.outboundGroupSessionDatas
          .filter()
          .roomIdEqualTo(roomId)
          .findFirst();

      data ??= OutboundGroupSessionData();
      data.roomId = roomId;
      data.pickle = pickle;
      data.deviceIds = deviceIds;
      data.creationTime = creationTime;

      await instance.outboundGroupSessionDatas.put(data);
    });
  }

  @override
  Future<void> storePresence(String userId, CachedPresence presence) async {
    await instance.writeTxn(() async {
      var data = await instance.presenceDatas
          .filter()
          .userIdEqualTo(userId)
          .findFirst();
      data ??= PresenceData();
      data.userId = userId;
      data.presence = jsonEncode(presence.toJson());

      await instance.presenceDatas.put(data);
    });
  }

  @override
  Future storePrevBatch(String prevBatch) async {
    await instance.writeTxn(() async {
      var existing = await instance.clientDatas.get(0);
      if (existing == null) {
        return;
      }

      existing.prevBatch = prevBatch;
      await instance.clientDatas.put(existing);
    });
  }

  @override
  Future<void> storeRoomUpdate(String roomId, SyncRoomUpdate roomUpdate,
      Event? lastEvent, Client client) async {
    // Leave room if membership is leave
    if (roomUpdate is LeftRoomUpdate) {
      await forgetRoom(roomId);
      return;
    }
    final membership = roomUpdate is LeftRoomUpdate
        ? Membership.leave
        : roomUpdate is InvitedRoomUpdate
            ? Membership.invite
            : Membership.join;
    // Make sure room exists
    await instance.writeTxn(() async {
      var current =
          await instance.roomDatas.filter().roomIdEqualTo(roomId).findFirst();

      if (current == null) {
        var content = roomUpdate is JoinedRoomUpdate
            ? Room(
                client: client,
                id: roomId,
                membership: membership,
                highlightCount:
                    roomUpdate.unreadNotifications?.highlightCount?.toInt() ??
                        0,
                notificationCount: roomUpdate
                        .unreadNotifications?.notificationCount
                        ?.toInt() ??
                    0,
                prev_batch: roomUpdate.timeline?.prevBatch,
                summary: roomUpdate.summary,
                lastEvent: lastEvent,
              ).toJson()
            : Room(
                client: client,
                id: roomId,
                membership: membership,
                lastEvent: lastEvent,
              ).toJson();

        current ??= RoomData();
        current.roomId = roomId;
        current.content = jsonEncode(content);

        await instance.roomDatas.put(current);
      } else if (roomUpdate is JoinedRoomUpdate) {
        final currentRoom = Room.fromJson(jsonDecode(current.content), client);
        var content = Room(
          client: client,
          id: roomId,
          membership: membership,
          highlightCount:
              roomUpdate.unreadNotifications?.highlightCount?.toInt() ??
                  currentRoom.highlightCount,
          notificationCount:
              roomUpdate.unreadNotifications?.notificationCount?.toInt() ??
                  currentRoom.notificationCount,
          prev_batch: roomUpdate.timeline?.prevBatch ?? currentRoom.prev_batch,
          summary: RoomSummary.fromJson(currentRoom.summary.toJson()
            ..addAll(roomUpdate.summary?.toJson() ?? {})),
          lastEvent: lastEvent,
        ).toJson();

        current.content = jsonEncode(content);
        await instance.roomDatas.put(current);
      }
    });
  }

  @override
  Future storeSSSSCache(
      String type, String keyId, String ciphertext, String content) async {
    await instance.writeTxn(() async {
      var data =
          await instance.sSSSCacheDatas.filter().typeEqualTo(type).findFirst();

      data ??= SSSSCacheData();
      data.type = type;
      data.keyId = keyId;
      data.cipherText = ciphertext;
      data.content = content;
      await instance.sSSSCacheDatas.put(data);
    });
  }

  @override
  Future storeSyncFilterId(String syncFilterId) async {
    await instance.writeTxn(() async {
      var existing = await instance.clientDatas.get(0);
      if (existing == null) {
        return;
      }

      existing.syncFilterId = syncFilterId;
      await instance.clientDatas.put(existing);
    });
  }

  @override
  Future storeUserCrossSigningKey(String userId, String publicKey,
      String content, bool verified, bool blocked) async {
    await instance.writeTxn(() async {
      var data = await instance.userCrossSigningKeys
          .filter()
          .userIdEqualTo(userId)
          .publicKeyEqualTo(publicKey)
          .findFirst();

      data ??= UserCrossSigningKey();
      data.userId = userId;
      data.publicKey = publicKey;
      data.content = content;
      data.blocked = blocked;
      data.verified = verified;

      await instance.userCrossSigningKeys.put(data);
    });
  }

  List<T> mergeLists<T>(List<T>? a, List<T>? b) {
    var list = List<T>.empty(growable: true);

    if (a != null) {
      list.addAll(a);
    }

    if (b != null) {
      list.addAll(b.where((element) => list.contains(element) == false));
    }

    return list;
  }

  Map<K, V> mergeMaps<K, V>(Map<K, V>? a, Map<K, V>? b) {
    var result = <K, V>{};

    if (a != null) {
      for (var key in a.keys) {
        result[key] = a[key] as V;
      }
    }

    if (b != null) {
      for (var key in b.keys) {
        result[key] = b[key] as V;
      }
    }

    return result;
  }

  @override
  Future storeUserDeviceKey(String userId, String deviceId, String content,
      bool verified, bool blocked, int lastActive) {
    return instance.writeTxn(() async {
      UserDeviceKey? data = await instance.userDeviceKeys
          .filter()
          .userIdEqualTo(userId)
          .userIdEqualTo(deviceId)
          .findFirst();
      var finalContent = content;

      // Merge existing data, because its possible that two different instances of the client are running
      // Maybe one is the main activity and one is in a bubble, we dont want them to overwrite eachother's keys
      if (data != null) {
        var existingContent = jsonDecode(data.content) as Map<String, dynamic>;
        var newContent = jsonDecode(data.content) as Map<String, dynamic>;

        List<String> algorithms = mergeLists(
            existingContent.tryGet<List<String>>("algorithms"),
            newContent.tryGet<List<String>>("algorithms"));

        Map<String, String> keys = mergeMaps(
            existingContent.tryGet("keys"), newContent.tryGet("keys"));

        var existingSignatures = existingContent
            .tryGet<Map<String, Map<String, String>>>("signatures")
            ?.tryGet<Map<String, String>>(userId);

        var newSignatures = newContent
            .tryGet<Map<String, Map<String, String>>>("signatures")
            ?.tryGet<Map<String, String>>(userId);

        var merged = mergeMaps(existingSignatures, newSignatures);

        var signatures = {userId: merged};

        newContent = {
          "algorithms": algorithms,
          "device_id": deviceId,
          "keys": keys,
          "signatures": signatures,
          "unsigned": existingContent.tryGet("unsigned") ??
              newContent.tryGet("unsigned"),
          "user_id": userId
        };

        newContent.removeWhere((key, value) => value == null);

        finalContent = jsonEncode(newContent);
      }

      data ??= UserDeviceKey();

      data.userId = userId;
      data.deviceId = deviceId;
      data.content = finalContent;
      data.verified = verified;
      data.blocked = blocked;
      data.lastActive = lastActive;

      await instance.userDeviceKeys.put(data);
    });
  }

  @override
  Future storeUserDeviceKeysInfo(String userId, bool outdated) {
    return instance.writeTxn(() async {
      UserDeviceKeyInfo? data = await instance.userDeviceKeyInfos
          .filter()
          .userIdEqualTo(userId)
          .findFirst();

      data ??= UserDeviceKeyInfo();

      data.userId = userId;
      data.outdated = outdated;

      await instance.userDeviceKeyInfos.put(data);
    });
  }

  @override
  Future<void> transaction(Future<void> Function() action) async {
    await action();
  }

  @override
  Future updateClient(
      String homeserverUrl,
      String token,
      DateTime? tokenExpiresAt,
      String? refreshToken,
      String userId,
      String? deviceId,
      String? deviceName,
      String? prevBatch,
      String? olmAccount) {
    return insertClient("", homeserverUrl, token, tokenExpiresAt, refreshToken,
        userId, deviceId, deviceName, prevBatch, olmAccount);
  }

  @override
  Future updateClientKeys(String olmAccount) async {
    await instance.writeTxn(() async {
      var existing = await instance.clientDatas.get(0);
      if (existing == null) {
        return;
      }

      existing.olmAccount = olmAccount;
      await instance.clientDatas.put(existing);
    });
  }

  @override
  Future updateInboundGroupSessionAllowedAtIndex(
      String allowedAtIndex, String roomId, String sessionId) async {
    await instance.writeTxn(() async {
      var existing = await instance.inboundGroupSessions
          .filter()
          .sessionIdEqualTo(sessionId)
          .findFirst();
      if (existing == null) {
        print(
            "tried to update group session allowed indices of a session which was not found in db");
        return;
      }

      existing.allowedAtIndex = allowedAtIndex;
      await instance.inboundGroupSessions.put(existing);
    });
  }

  @override
  Future updateInboundGroupSessionIndexes(
      String indexes, String roomId, String sessionId) async {
    await instance.writeTxn(() async {
      var existing = await instance.inboundGroupSessions
          .filter()
          .sessionIdEqualTo(sessionId)
          .findFirst();
      if (existing == null) {
        print(
            "tried to update group session indices of a session which was not found in db");
        return;
      }

      existing.indexes = indexes;
      await instance.inboundGroupSessions.put(existing);
    });
  }
}
