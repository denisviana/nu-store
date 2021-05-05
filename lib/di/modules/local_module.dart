import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:injectable/injectable.dart';
import 'package:shared_preferences/shared_preferences.dart';

// Use this module to inject your third-party dependencies like [FlutterSecureStorage]
// E.g. @singleton FlutterSecureStorage get secureStorage => FlutterSecureStorage();

@module
abstract class LocalModule {

  @preResolve
  Future<SharedPreferences> get prefs => SharedPreferences.getInstance();

  @singleton
  FlutterSecureStorage get storage => const FlutterSecureStorage();

}
