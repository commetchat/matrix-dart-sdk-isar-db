import 'package:file/local.dart';
import 'package:isar/isar.dart';
import 'package:matrix/matrix.dart';
import 'package:matrix_dart_sdk_isar_db/matrix_dart_sdk_isar_db.dart';

Future<MatrixSdkIsarDatabase> getIsarDatabase(Client? c) async {
  await Isar.initializeIsarCore(download: false);

  final tempPath = await LocalFileSystem()
      .systemTempDirectory
      .createTemp('dart-sdk-tests-database');

  return MatrixSdkIsarDatabase.init(tempPath.path);
}
