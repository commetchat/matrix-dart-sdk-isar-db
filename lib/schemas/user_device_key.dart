import 'package:isar/isar.dart';

part 'user_device_key.g.dart';

@collection
class UserDeviceKey {
  Id id = Isar.autoIncrement;
  late String userId;
  late String deviceId;
  String content = "{}";
  String lastSentMessage = "";
  bool verified = false;
  bool blocked = false;
  int lastActive = 0;
}
