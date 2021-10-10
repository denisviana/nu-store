import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_app/app/pages/home/model/offer_model.dart';
import 'package:my_app/app/styles/app_color_scheme.dart';
import 'package:my_app/app/widgets/dialog/simple_dialog.dart';
import 'package:my_app/app/widgets/loading/app_ui_block.dart';
import 'package:my_app/core/data/enum/status.dart';
import 'package:my_app/core/data/model/app_exception.dart';
import 'package:my_app/core/data/model/resource.dart';
import 'package:my_app/core/domain/use_cases/offer/purchase_offer_use_case.dart';
import 'package:my_app/generated/l10n.dart';

import '../../helpers/dialog_helper.dart';

class OfferController extends GetxController {
  OfferController(this._purchaseOfferUseCase);

  //region Use Cases
  final PurchaseOfferUseCase _purchaseOfferUseCase;

  //endregion

  //region State
  final state = Resource.success<OfferModel>().obs;

  //endregion

  //region Functions
  @override
  void onInit() {
    super.onInit();
    final OfferModel arguments = Get.arguments;
    state.value = Resource.success(data: arguments);
  }

  Future purchaseOffer() async {
    final data = state.value.data;
    if (data == null) return;
    AppUIBlock.blockUI(context: Get.context);
    final response = await _purchaseOfferUseCase(data.id);
    AppUIBlock.unblock(context: Get.context);
    switch (response.status) {
      case Status.loading:
        break;
      case Status.success:
        Get.appDialog(
          barrierDismissible: false,
          pageChild: AppSimpleDialog(
            title: S.current.success,
            message: S.current.yourPurchaseWasSuccessful,
            buttonTitle: S.current.ok,
            icon: Icon(Icons.check_circle_outline,
                size: 50, color: AppColorScheme.success),
            onButtonPressed: () {
              Get.back(result: response.data);
            },
          ),
        );
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
          purchaseOffer();
        },
        onCloseButtonPressed: () {},
      ),
    );
  }

//endregion

}
