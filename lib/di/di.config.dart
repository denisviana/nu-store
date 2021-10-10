// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:flutter_secure_storage/flutter_secure_storage.dart' as _i3;
import 'package:get_it/get_it.dart' as _i1;
import 'package:graphql/client.dart' as _i6;
import 'package:injectable/injectable.dart' as _i2;
import 'package:shared_preferences/shared_preferences.dart' as _i9;

import '../core/domain/repositories/customer/customer_repository.dart' as _i5;
import '../core/domain/repositories/offer/offer_repository.dart' as _i8;
import '../core/domain/use_cases/customer/get_customer_use_case.dart' as _i4;
import '../core/domain/use_cases/offer/purchase_offer_use_case.dart' as _i7;
import 'modules/device_module.dart' as _i12;
import 'modules/local_module.dart' as _i10;
import 'modules/remote_module.dart'
    as _i11; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// an extension to register the provided dependencies inside of [GetIt]
extension GetItInjectableX on _i1.GetIt {
  /// initializes the registration of provided dependencies inside of [GetIt]
  Future<_i1.GetIt> init(
      {String? environment, _i2.EnvironmentFilter? environmentFilter}) async {
    final gh = _i2.GetItHelper(this, environment, environmentFilter);
    final localModule = _$LocalModule();
    final remoteModule = _$RemoteModule();
    final deviceModule = _$DeviceModule();
    gh.singleton<_i3.FlutterSecureStorage>(localModule.storage);
    gh.factory<_i4.GetCustomerUseCase>(
        () => _i4.GetCustomerUseCase(get<_i5.CustomerRepository>()));
    gh.factory<_i6.HttpLink>(() => remoteModule.provideHttpLink);
    gh.factory<_i7.PurchaseOfferUseCase>(
        () => _i7.PurchaseOfferUseCase(get<_i8.OfferRepository>()));
    await gh.factoryAsync<_i9.SharedPreferences>(() => localModule.prefs,
        preResolve: true);
    gh.factory<String>(() => deviceModule.language, instanceName: 'language');
    gh.factory<_i6.GraphQLClient>(
        () => remoteModule.provideGraphQLClient(get<_i6.HttpLink>()));
    return this;
  }
}

class _$LocalModule extends _i10.LocalModule {}

class _$RemoteModule extends _i11.RemoteModule {}

class _$DeviceModule extends _i12.DeviceModule {}
