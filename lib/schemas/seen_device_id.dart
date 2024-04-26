import 'package:isar/isar.dart';

part 'seen_device_id.g.dart';

@collection
class SeenDeviceId {
  Id id = Isar.autoIncrement;
  String userId;
  String deviceId;
  String publicKeys;

  SeenDeviceId(this.userId, this.deviceId, this.publicKeys);
}
