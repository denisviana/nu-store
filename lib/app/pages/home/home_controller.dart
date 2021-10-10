import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_app/app/pages/home/adapter/home_adapter.dart';
import 'package:my_app/app/pages/home/model/home_view_model.dart';
import 'package:my_app/app/styles/app_color_scheme.dart';
import 'package:my_app/app/widgets/dialog/simple_dialog.dart';
import 'package:my_app/core/data/enum/status.dart';
import 'package:my_app/core/data/model/app_exception.dart';
import 'package:my_app/core/data/model/resource.dart';
import 'package:my_app/core/domain/use_cases/customer/get_customer_use_case.dart';
import 'package:my_app/generated/l10n.dart';

import '../../helpers/dialog_helper.dart';

class HomeController extends GetxController {
  HomeController(this._getCustomerUseCase);

  //region Use Cases
  final GetCustomerUseCase _getCustomerUseCase;

  //endregion

  //region State
  final state = Resource.loading<HomeViewModel?>().obs;

//endregion

//region Functions
  @override
  void onReady() {
    super.onReady();
    _getCustomer();
  }

  Future _getCustomer() async {
    final response = await _getCustomerUseCase();
    switch (response.status) {
      case Status.loading:
        break;
      case Status.success:
        final data = response.data;
        if (data == null)
          _handleError(
            response.error ??
                AppException(
                    title: S.current.error, data: S.current.somethingWentWrong),
          );
        else
          state.value = Resource.success(data: HomeAdapter.toViewModel(data));
        break;
      case Status.failed:
        _handleError(
          response.error ??
              AppException(
                  title: S.current.error, data: S.current.somethingWentWrong),
        );
        break;
    }
  }

  void _handleError(AppException error) {
    Get.appDialog(
      barrierDismissible: false,
      pageChild: AppSimpleDialog(
        title: error.title ?? '',
        message: error.description ?? '',
        buttonTitle: S.current.retry,
        icon: Icon(Icons.error_outline, size: 50, color: AppColorScheme.error),
        onButtonPressed: () {
          _getCustomer();
        },
      ),
    );
  }

//endregion

}
