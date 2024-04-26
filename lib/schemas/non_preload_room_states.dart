import 'package:isar/isar.dart';

part 'non_preload_room_states.g.dart';

@collection
class NonPreloadRoomState {
  Id id = Isar.autoIncrement;
  late String roomId;
  late String type;
  late String content;
}
