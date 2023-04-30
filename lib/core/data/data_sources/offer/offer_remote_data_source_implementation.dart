import 'package:graphql/client.dart';
import 'package:injectable/injectable.dart';
import 'package:my_app/core/data/data_sources/offer/offer_remote_data_source.dart';
import 'package:my_app/graphql/graphql_api.graphql.dart';

@Injectable(as: OfferRemoteDataSource)
class OfferRemoteDataSourceImplementation extends OfferRemoteDataSource {
  final GraphQLClient _graphQLClient;

  OfferRemoteDataSourceImplementation(this._graphQLClient);

  @override
  Future<QueryResult> purchaseOffer({required String offerId}) {
    final mutation =
        PurchaseMutation(variables: PurchaseArguments(offerId: offerId));
    return _graphQLClient.mutate(
      MutationOptions(
        document: mutation.document,
        variables: mutation.getVariablesMap(),
      ),
    );
  }
}
