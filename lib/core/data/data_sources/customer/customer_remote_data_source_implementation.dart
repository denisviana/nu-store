import 'package:graphql/client.dart';
import 'package:injectable/injectable.dart';
import 'package:my_app/core/data/data_sources/customer/customer_remote_data_source.dart';
import 'package:my_app/graphql/graphql_api.graphql.dart';

@Injectable(as: CustomerRemoteDataSource)
class CustomerRemoteDataSourceImplementation extends CustomerRemoteDataSource {
  final GraphQLClient _graphQLClient;

  CustomerRemoteDataSourceImplementation(this._graphQLClient);

  @override
  Future<QueryResult> getCustomer() {
    final query = ViewerQuery();
    return _graphQLClient.query(
      QueryOptions(document: query.document),
    );
  }
}
