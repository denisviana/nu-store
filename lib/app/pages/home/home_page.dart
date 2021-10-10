import 'package:auto_size_text/auto_size_text.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_app/app/helpers/ui_helper.dart';
import 'package:my_app/app/pages/home/model/offer_model.dart';
import 'package:my_app/app/styles/app_border_radius.dart';
import 'package:my_app/app/styles/app_color_scheme.dart';
import 'package:my_app/app/styles/app_font_size.dart';
import 'package:my_app/app/styles/app_font_weight.dart';
import 'package:my_app/app/styles/app_spacing.dart';

import '../../../generated/l10n.dart';
import 'home_controller.dart';

class HomePage extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(),
        body: SafeArea(
          child: Container(
            child: Obx(() {
              final status = controller.state.value.status;
              final data = controller.state.value.data;
              return data == null
                  ? Container()
                  : Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(
                              left: AppSpacing.medium,
                              right: AppSpacing.medium),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                S.of(context).olaUser(data.userName),
                                style: TextStyle(
                                    fontSize: AppFontSize.mega,
                                    color: AppColorScheme.emphasis,
                                    fontWeight: AppFontWeight.bold),
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    S.of(context).saldo,
                                    style: TextStyle(
                                        fontSize: AppFontSize.secondary,
                                        color: AppColorScheme.emphasis,
                                        fontWeight: AppFontWeight.semiBold),
                                  ),
                                  Text(
                                    data.userBalance,
                                    style: TextStyle(
                                        fontSize: AppFontSize.primary,
                                        color: AppColorScheme.success,
                                        fontWeight: AppFontWeight.semiBold),
                                  )
                                ],
                              )
                            ],
                          ),
                        ),
                        UIHelper.verticalSpaceSmall,
                        Expanded(
                          child: Container(
                            width: MediaQuery.of(context).size.width,
                            padding: const EdgeInsets.all(AppSpacing.medium),
                            decoration: BoxDecoration(
                                borderRadius: const BorderRadius.vertical(
                                  top: Radius.circular(30),
                                ),
                                color: AppColorScheme.backgroundLight),
                            child: _buildOffers(data.offers),
                          ),
                        )
                      ],
                    );
            }),
          ),
        ),
      );

  Widget _buildOffers(List<OfferModel> offers) {
    if (offers.isEmpty)
      return Container();
    else {
      return ListView.separated(
        itemCount: offers.length,
        shrinkWrap: true,
        separatorBuilder: (context, index) => Container(
          height: 0.5,
          color: AppColorScheme.border,
        ),
        itemBuilder: (context, index) => Container(
          decoration: BoxDecoration(
            borderRadius: AppBorderRadius.small,
          ),
          padding: const EdgeInsets.symmetric(
            vertical: AppSpacing.medium,
          ),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ClipRRect(
                borderRadius: AppBorderRadius.small,
                child: CachedNetworkImage(
                  imageUrl: offers[index].productImage,
                  width: 100,
                ),
              ),
              UIHelper.horizontalSpaceExtraMedium,
              Flexible(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      offers[index].productName,
                      style: TextStyle(
                          fontSize: AppFontSize.large,
                          color: AppColorScheme.emphasis,
                          fontWeight: AppFontWeight.semiBold),
                    ),
                    UIHelper.verticalSpaceTiny,
                    AutoSizeText(
                      offers[index].productDescription,
                      textAlign: TextAlign.justify,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                        fontSize: AppFontSize.secondary,
                        color: AppColorScheme.emphasis,
                      ),
                    ),
                    UIHelper.verticalSpaceTiny,
                    Text(
                      offers[index].price,
                      style: TextStyle(
                          fontSize: AppFontSize.large,
                          color: AppColorScheme.success,
                          fontWeight: AppFontWeight.semiBold),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      );
    }
  }
}
