// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:flutter_secure_storage/flutter_secure_storage.dart' as _i3;
import 'package:get_it/get_it.dart' as _i1;
import 'package:graphql/client.dart' as _i4;
import 'package:injectable/injectable.dart' as _i2;
import 'package:shared_preferences/shared_preferences.dart' as _i5;

import '../core/data/data_sources/customer/customer_remote_data_source.dart'
    as _i11;
import '../core/data/data_sources/customer/customer_remote_data_source_implementation.dart'
    as _i12;
import '../core/data/data_sources/offer/offer_remote_data_source.dart' as _i6;
import '../core/data/data_sources/offer/offer_remote_data_source_implementation.dart'
    as _i7;
import '../core/data/repositories/costumer/customer_repository_implementation.dart'
    as _i14;
import '../core/data/repositories/offer/offer_repository_implementation.dart'
    as _i9;
import '../core/domain/repositories/customer/customer_repository.dart' as _i13;
import '../core/domain/repositories/offer/offer_repository.dart' as _i8;
import '../core/domain/use_cases/customer/get_customer_use_case.dart' as _i15;
import '../core/domain/use_cases/offer/purchase_offer_use_case.dart' as _i10;
import 'modules/device_module.dart' as _i18;
import 'modules/local_module.dart' as _i16;
import 'modules/remote_module.dart'
    as _i17; // ignore_for_file: unnecessary_lambdas

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
    gh.factory<_i4.HttpLink>(() => remoteModule.provideHttpLink);
    await gh.factoryAsync<_i5.SharedPreferences>(() => localModule.prefs,
        preResolve: true);
    gh.factory<String>(() => deviceModule.language, instanceName: 'language');
    gh.factory<_i4.GraphQLClient>(
        () => remoteModule.provideGraphQLClient(get<_i4.HttpLink>()));
    gh.factory<_i6.OfferRemoteDataSource>(() =>
        _i7.OfferRemoteDataSourceImplementation(get<_i4.GraphQLClient>()));
    gh.factory<_i8.OfferRepository>(() =>
        _i9.OfferRepositoryImplementation(get<_i6.OfferRemoteDataSource>()));
    gh.factory<_i10.PurchaseOfferUseCase>(
        () => _i10.PurchaseOfferUseCase(get<_i8.OfferRepository>()));
    gh.factory<_i11.CustomerRemoteDataSource>(() =>
        _i12.CustomerRemoteDataSourceImplementation(get<_i4.GraphQLClient>()));
    gh.factory<_i13.CustomerRepository>(() =>
        _i14.CustomerRepositoryImplementation(
            get<_i11.CustomerRemoteDataSource>()));
    gh.factory<_i15.GetCustomerUseCase>(
        () => _i15.GetCustomerUseCase(get<_i13.CustomerRepository>()));
    return this;
  }
}

class _$LocalModule extends _i16.LocalModule {}

class _$RemoteModule extends _i17.RemoteModule {}

class _$DeviceModule extends _i18.DeviceModule {}
