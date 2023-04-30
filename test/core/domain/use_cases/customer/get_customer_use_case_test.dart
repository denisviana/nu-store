import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:my_app/core/data/model/resource.dart';
import 'package:my_app/core/domain/entities/customer/customer_entity.dart';
import 'package:my_app/core/domain/repositories/customer/customer_repository.dart';
import 'package:my_app/core/domain/use_cases/customer/get_customer_use_case.dart';

class MockCustomerRepository extends Mock implements CustomerRepository {}

void main() {
  late GetCustomerUseCase useCase;
  late MockCustomerRepository mockCustomerRepository;

  setUp(() {
    mockCustomerRepository = MockCustomerRepository();
    useCase = GetCustomerUseCase(mockCustomerRepository);
  });

  test('should get customer from repository', () async {
    // Arrange
    const customer = CustomerEntity(
      name: 'John',
      balance: 100,
      offers: [],
    );
    when(() => mockCustomerRepository.getCustomer()).thenAnswer(
      (_) async => Resource.success(data: customer),
    );

    // Act
    final result = await useCase();

    // Assert
    expect(result.data, customer);
    verify(() => mockCustomerRepository.getCustomer());
    verifyNoMoreInteractions(mockCustomerRepository);
  });

  test('should return error if repository fails', () async {
    // Arrange
    final error = Exception('something went wrong');
    when(() => mockCustomerRepository.getCustomer()).thenAnswer(
      (_) async => Resource.failed(error: error),
    );

    // Act
    final result = await useCase();

    // Assert
    expect(
      result,
      Resource.failed<CustomerEntity>(error: error),
    );
    verify(
      () => mockCustomerRepository.getCustomer(),
    );
    verifyNoMoreInteractions(mockCustomerRepository);
  });
}
