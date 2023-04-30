import 'package:injectable/injectable.dart';
import 'package:my_app/core/data/data_sources/offer/offer_remote_data_source.dart';
import 'package:my_app/core/data/model/resource.dart';
import 'package:my_app/core/domain/entities/customer/customer_entity.dart';
import 'package:my_app/core/domain/repositories/offer/offer_repository.dart';
import 'package:my_app/graphql/graphql_api.graphql.dart';

import '../../../adapter/customer_adapter/customer_adapter.dart';

@Injectable(as: OfferRepository)
class OfferRepositoryImplementation extends OfferRepository {
  final OfferRemoteDataSource _remoteDataSource;

  OfferRepositoryImplementation(this._remoteDataSource);

  @override
  Future<Resource<CustomerEntity?>> purchaseOffer({required String offerId}) =>
      Resource.asFuture(
        () => _remoteDataSource.purchaseOffer(offerId: offerId),
        (data) => Purchase$MutationRoot.fromJson(data).purchase?.toEntity,
      );
}
