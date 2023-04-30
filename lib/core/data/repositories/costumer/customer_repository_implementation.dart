import 'package:injectable/injectable.dart';
import 'package:my_app/core/data/data_sources/customer/customer_remote_data_source.dart';
import 'package:my_app/core/data/model/resource.dart';
import 'package:my_app/core/domain/entities/customer/customer_entity.dart';
import 'package:my_app/core/domain/repositories/customer/customer_repository.dart';
import 'package:my_app/graphql/graphql_api.graphql.dart';

import '../../../adapter/customer_adapter/customer_adapter.dart';

@Injectable(as: CustomerRepository)
class CustomerRepositoryImplementation extends CustomerRepository {
  final CustomerRemoteDataSource _remoteDataSource;

  CustomerRepositoryImplementation(this._remoteDataSource);

  @override
  Future<Resource<CustomerEntity?>> getCustomer() => Resource.asFuture(
        () => _remoteDataSource.getCustomer(),
        (data) => Viewer$QueryRoot.fromJson(data).viewer?.toEntity,
      );
}
