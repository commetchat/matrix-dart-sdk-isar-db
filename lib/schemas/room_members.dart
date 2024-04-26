import 'package:isar/isar.dart';

part 'room_members.g.dart';

@collection
class RoomMembers {
  Id id = Isar.autoIncrement;
  late String roomId;
  late String userId;
  late String content;
}
