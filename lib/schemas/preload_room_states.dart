import 'package:isar/isar.dart';

part 'preload_room_states.g.dart';

@collection
class PreloadRoomState {
  Id id = Isar.autoIncrement;
  late String roomId;
  late String type;
  late String content;
}
