import 'package:isar/isar.dart';

part 'user_device_key_info.g.dart';

@collection
class UserDeviceKeyInfo {
  Id id = Isar.autoIncrement;
  late String userId;
  late bool outdated;
}
