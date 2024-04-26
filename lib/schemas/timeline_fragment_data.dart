import 'package:isar/isar.dart';

part 'timeline_fragment_data.g.dart';

@collection
class TimelineFragmentData {
  Id id = Isar.autoIncrement;
  late String roomId;
  late bool sending;
  List<String>? fragments;
}
