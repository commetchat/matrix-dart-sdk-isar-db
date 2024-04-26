import 'package:isar/isar.dart';

part 'user_cross_signing_key.g.dart';

@collection
class UserCrossSigningKey {
  Id id = Isar.autoIncrement;
  late String userId;
  late String publicKey;
  bool verified = false;
  bool blocked = false;
  String? content;
}
