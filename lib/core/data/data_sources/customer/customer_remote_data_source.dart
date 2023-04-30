import 'package:graphql/client.dart';

abstract class CustomerRemoteDataSource{
  Future<QueryResult> getCustomer();
}