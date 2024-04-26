import 'package:isar/isar.dart';

part 'client.g.dart';

@collection
class ClientData {
  Id id = 0;
  late String name;
  late String homeserverUrl;
  late String token;
  DateTime? tokenExpiresAt;
  String? refreshToken;
  late String userId;
  String? deviceId;
  String? deviceName;
  String? prevBatch;
  String? olmAccount;
  String? syncFilterId;
}
