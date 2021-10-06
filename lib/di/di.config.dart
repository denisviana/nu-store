// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:dio/dio.dart' as _i3;
import 'package:flutter_secure_storage/flutter_secure_storage.dart' as _i4;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:shared_preferences/shared_preferences.dart' as _i6;

import '../core/data/helpers/secure_local_storage.dart' as _i5;
import '../core/data/network/dio_client.dart' as _i7;
import 'modules/device_module.dart' as _i10;
import 'modules/local_module.dart' as _i9;
import 'modules/remote_module.dart'
    as _i8; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// an extension to register the provided dependencies inside of [GetIt]
extension GetItInjectableX on _i1.GetIt {
  /// initializes the registration of provided dependencies inside of [GetIt]
  Future<_i1.GetIt> init(
      {String? environment, _i2.EnvironmentFilter? environmentFilter}) async {
    final gh = _i2.GetItHelper(this, environment, environmentFilter);
    final remoteModule = _$RemoteModule();
    final localModule = _$LocalModule();
    final deviceModule = _$DeviceModule();
    gh.factory<_i3.Dio>(() => remoteModule.provideDio());
    gh.singleton<_i4.FlutterSecureStorage>(localModule.storage);
    gh.singleton<_i5.SecureLocalStorage>(
        _i5.SecureLocalStorage(get<_i4.FlutterSecureStorage>()));
    await gh.factoryAsync<_i6.SharedPreferences>(() => localModule.prefs,
        preResolve: true);
    gh.factory<String>(() => deviceModule.language, instanceName: 'language');
    gh.singleton<_i3.InterceptorsWrapper>(remoteModule.provideInterceptor(
        get<_i3.Dio>(),
        get<String>(instanceName: 'language'),
        get<_i4.FlutterSecureStorage>()));
    gh.factory<_i7.DioClient>(() => remoteModule.provideApi(
        get<_i3.Dio>(), get<_i3.InterceptorsWrapper>()));
    return this;
  }
}

class _$RemoteModule extends _i8.RemoteModule {}

class _$LocalModule extends _i9.LocalModule {}

class _$DeviceModule extends _i10.DeviceModule {}
