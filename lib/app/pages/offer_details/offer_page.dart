import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_app/app/app_routes.dart';
import 'package:my_app/app/helpers/ui_helper.dart';
import 'package:my_app/app/pages/home/model/offer_model.dart';
import 'package:my_app/app/styles/app_color_scheme.dart';
import 'package:my_app/app/styles/app_font_size.dart';
import 'package:my_app/app/styles/app_spacing.dart';
import 'package:my_app/app/widgets/buttons/app_button.dart';

import 'offer_controller.dart';

class OfferPage extends GetView<OfferController> {
  static Future? navigateWith({required OfferModel arguments}) =>
      Get.toNamed(Routes.offerDetails, arguments: arguments);

  @override
  Widget build(BuildContext context) => GetBuilder<OfferController>(
        initState: (_) {},
        builder: (_) => Obx(
          () => Scaffold(
            appBar: AppBar(),
            body: Container(
              padding: const EdgeInsets.only(
                left: AppSpacing.medium,
                right: AppSpacing.medium,
                bottom: AppSpacing.medium,
              ),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Center(
                      child: Hero(
                        tag: controller.state.value.data?.id ?? '',
                        child: CachedNetworkImage(
                          imageUrl:
                              controller.state.value.data?.productImage ?? '',
                          height: 300,
                        ),
                      ),
                    ),
                    Text(
                      controller.state.value.data?.productName ?? '',
                      style: TextStyle(
                          fontSize: AppFontSize.ultra,
                          color: AppColorScheme.emphasis),
                    ),
                    UIHelper.verticalSpaceSmall,
                    Text(
                      controller.state.value.data?.productDescription ?? '',
                      style: TextStyle(color: AppColorScheme.emphasisLight),
                    ),
                    UIHelper.verticalSpaceMedium,
                    Text(
                      controller.state.value.data?.price ?? '',
                      style: TextStyle(
                          fontSize: AppFontSize.extraUltra,
                          color: AppColorScheme.success),
                    ),
                    UIHelper.verticalSpaceMedium,
                    Container(
                      height: 1,
                      color: AppColorScheme.border,
                    ),
                    UIHelper.verticalSpaceMedium,
                    AppButton(
                      onPressed: () {},
                      title: 'Buy Now',
                      style: AppButtonStyle.filled,
                    )
                  ],
                ),
              ),
            ),
          ),
        ),
      );
}
