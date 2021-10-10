import 'package:my_app/app/helpers/currency_helper.dart';
import 'package:my_app/app/pages/home/model/home_view_model.dart';
import 'package:my_app/app/pages/home/model/offer_model.dart';
import 'package:my_app/core/domain/entities/customer/customer_entity.dart';

abstract class HomeAdapter {
  HomeAdapter._();

  static HomeViewModel toViewModel(CustomerEntity customerEntity) =>
      HomeViewModel(
        userName: customerEntity.name,
        userBalance: CurrencyHelper.doubleToCurrency(
          customerEntity.balance.toDouble(),
        ),
        offers: customerEntity.offers
            .map(
              (offer) => OfferModel(
                id: offer?.id ?? '',
                price: CurrencyHelper.doubleToCurrency(
                  offer?.price.toDouble() ?? 0,
                ),
                productDescription: offer?.product.description ?? '',
                productId: offer?.product.id ?? '',
                productImage: offer?.product.image ?? '',
                productName: offer?.product.name ?? '',
              ),
            )
            .toList(),
      );
}
