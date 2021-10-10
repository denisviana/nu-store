import 'package:injectable/injectable.dart';
import 'package:my_app/core/data/model/resource.dart';
import 'package:my_app/core/domain/base/base_use_case.dart';
import 'package:my_app/core/domain/entities/customer/customer_entity.dart';
import 'package:my_app/core/domain/repositories/customer/customer_repository.dart';

@injectable
class GetCustomerUseCase
    extends BaseFutureResourceUseCase<void, CustomerEntity> {
  final CustomerRepository _customerRepository;

  GetCustomerUseCase(this._customerRepository);

  @override
  Future<Resource<CustomerEntity>> call([void params]) =>
      _customerRepository.getCustomer();
}
