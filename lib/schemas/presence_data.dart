import 'package:isar/isar.dart';

part 'presence_data.g.dart';

@collection
class PresenceData {
  Id id = Isar.autoIncrement;
  late String userId;
  late String presence;
}
