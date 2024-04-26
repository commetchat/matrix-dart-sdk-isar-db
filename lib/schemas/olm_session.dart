import 'package:isar/isar.dart';

part 'olm_session.g.dart';

@collection
class OlmSessionData {
  Id id = Isar.autoIncrement;
  late String identityKey;
  late String sessionId;
  late String pickle;
  late int lastReceived;
}
