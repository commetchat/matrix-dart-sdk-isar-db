import 'package:isar/isar.dart';

part 'account_data.g.dart';

@collection
class AccountData {
  Id id = Isar.autoIncrement;
  late String type;
  late String content;
}
