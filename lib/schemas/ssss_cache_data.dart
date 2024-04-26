import 'package:isar/isar.dart';

part 'ssss_cache_data.g.dart';

@collection
class SSSSCacheData {
  Id id = Isar.autoIncrement;
  late String type;
  late String keyId;
  late String cipherText;
  late String content;
}
