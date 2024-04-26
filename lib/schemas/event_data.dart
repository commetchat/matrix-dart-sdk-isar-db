import 'package:isar/isar.dart';

part 'event_data.g.dart';

@collection
class EventData {
  Id id = Isar.autoIncrement;
  late String roomId;
  late String eventId;
  late String content;
}
