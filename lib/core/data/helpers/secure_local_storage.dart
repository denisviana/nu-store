import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:injectable/injectable.dart';

@singleton
class SecureLocalStorage {

  final FlutterSecureStorage storage;

  const SecureLocalStorage(this.storage);

  Future<void> saveData({required String key, required String value}) async {
    if (await storage.containsKey(key: key)) {
      await storage.write(key: key, value: value);
    } else {
      await storage.write(key: key, value: value);
    }
  }

  Future<String?> getData({required String key}) async {
    if (await storage.containsKey(key: key)) {
      final response = await storage.read(key: key);
      return response;
    } else {
      return '';
    }
  }

  Future<void> deleteData(String key) async {
    if (await storage.containsKey(key: key)) {
      await storage.delete(key: key);
    }
  }

  Future<void> clearData() async {
    await storage.deleteAll();
  }
}
