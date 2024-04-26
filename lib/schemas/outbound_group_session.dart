import 'package:isar/isar.dart';

part 'outbound_group_session.g.dart';

@collection
class OutboundGroupSessionData {
  Id id = Isar.autoIncrement;
  late String roomId;
  late String pickle;
  late String deviceIds;
  late int creationTime;
}
