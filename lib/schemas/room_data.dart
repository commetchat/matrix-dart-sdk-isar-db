import 'package:isar/isar.dart';

part 'room_data.g.dart';

@collection
class RoomData {
  Id id = Isar.autoIncrement;
  late String roomId;
  late String content;
}
