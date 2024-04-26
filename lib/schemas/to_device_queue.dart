import 'package:isar/isar.dart';

part 'to_device_queue.g.dart';

@collection
class ToDeviceQueue {
  Id id = Isar.autoIncrement;
  late String type;
  late String txnId;
  late String content;

  ToDeviceQueue(this.type, this.txnId, this.content);
}
