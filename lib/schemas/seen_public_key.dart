import 'package:isar/isar.dart';

part 'seen_public_key.g.dart';

@collection
class SeenPublicKey {
  Id id = Isar.autoIncrement;
  String publicKey;
  String deviceId;

  SeenPublicKey(this.publicKey, this.deviceId);
}
