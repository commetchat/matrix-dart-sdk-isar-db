import 'package:isar/isar.dart';

part 'room_account_data.g.dart';

@collection
class RoomAccountData {
  Id id = Isar.autoIncrement;
  late String roomId;
  late String type;
  late String content;
}
