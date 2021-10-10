import 'package:graphql/client.dart';

abstract class OfferRemoteDataSource {
  Future<QueryResult> purchaseOffer({required String offerId});
}
