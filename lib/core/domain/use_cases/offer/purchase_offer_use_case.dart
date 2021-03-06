import 'package:injectable/injectable.dart';
import 'package:my_app/core/data/model/resource.dart';
import 'package:my_app/core/domain/base/base_use_case.dart';
import 'package:my_app/core/domain/entities/customer/customer_entity.dart';
import 'package:my_app/core/domain/repositories/offer/offer_repository.dart';

@injectable
class PurchaseOfferUseCase
    extends BaseFutureResourceUseCase<String, CustomerEntity> {
  final OfferRepository _offerRepository;

  PurchaseOfferUseCase(this._offerRepository);

  @override
  Future<Resource<CustomerEntity?>> call(String params) =>
      _offerRepository.purchaseOffer(offerId: params);
}
