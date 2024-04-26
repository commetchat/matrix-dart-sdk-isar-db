import 'package:isar/isar.dart';

part 'inbound_group_session.g.dart';

@collection
class InboundGroupSession {
  Id id = Isar.autoIncrement;
  late String roomId;
  late String sessionId;
  late String pickle;
  late String content;
  late String indexes;
  late String allowedAtIndex;
  late String senderKey;
  late String senderClaimedKey;
  bool uploaded = false;
}
