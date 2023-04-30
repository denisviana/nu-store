import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:my_app/core/data/enum/status.dart';
import 'package:my_app/core/data/model/app_exception.dart';
import 'package:my_app/core/data/model/resource.dart';
import 'package:my_app/core/domain/entities/customer/customer_entity.dart';
import 'package:my_app/core/domain/repositories/offer/offer_repository.dart';
import 'package:my_app/core/domain/use_cases/offer/purchase_offer_use_case.dart';

class MockOfferRepository extends Mock implements OfferRepository {}

void main() {
  late OfferRepository offerRepository;
  late PurchaseOfferUseCase purchaseOfferUseCase;

  setUp(() {
    offerRepository = MockOfferRepository();
    purchaseOfferUseCase = PurchaseOfferUseCase(offerRepository);
  });

  test('should return a success resource with CustomerEntity on successful purchase', () async {
    // arrange
    const offerId = '123';
    const customerEntity = CustomerEntity(
      name: 'John Doe',
      balance: 100,
      offers: [],
    );
    when(() => offerRepository.purchaseOffer(offerId: offerId))
        .thenAnswer((_) async => Resource.success(data: customerEntity));

    // act
    final result = await purchaseOfferUseCase(offerId);

    // assert
    expect(result.status, Status.success);
    expect(result.data, customerEntity);
    expect(result.error, isNull);
  });

  test('should return a failed resource with AppException on unsuccessful purchase', () async {
    // arrange
    const offerId = '123';
    const errorMessage = 'Insufficient balance';
    final appException = AppException(title: 'Error', description: errorMessage);
    when(() => offerRepository.purchaseOffer(offerId: offerId))
        .thenAnswer((_) async => Resource.failed(error: appException));

    // act
    final result = await purchaseOfferUseCase(offerId);

    // assert
    expect(result.status, Status.failed);
    expect(result.data, isNull);
    expect(result.error, appException);
  });
}
