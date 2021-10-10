import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_app/app/helpers/ui_helper.dart';
import 'package:my_app/app/pages/home/model/offer_model.dart';
import 'package:my_app/app/pages/offer_details/offer_page.dart';
import 'package:my_app/app/styles/app_color_scheme.dart';
import 'package:my_app/app/styles/app_corner_radius.dart';
import 'package:my_app/app/styles/app_font_size.dart';
import 'package:my_app/app/styles/app_font_weight.dart';
import 'package:my_app/app/styles/app_spacing.dart';
import 'package:my_app/app/widgets/offer/offer_widget.dart';
import 'package:my_app/core/data/enum/status.dart';
import 'package:shimmer/shimmer.dart';

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
              return Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(
                        left: AppSpacing.medium, right: AppSpacing.medium),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        if (status == Status.loading)
                          Shimmer.fromColors(
                            baseColor: AppColorScheme.shimmerBaseColor,
                            highlightColor:
                                AppColorScheme.shimmerHighlightColor,
                            child: Container(
                              width: 170,
                              height: 40,
                              decoration: BoxDecoration(
                                color: AppColorScheme.background,
                                borderRadius: const BorderRadius.all(
                                    AppCornerRadius.tiny),
                              ),
                            ),
                          )
                        else
                          Text(
                            S.of(context).olaUser(data?.userName ?? ''),
                            style: TextStyle(
                                fontSize: AppFontSize.mega,
                                color: AppColorScheme.emphasis,
                                fontWeight: AppFontWeight.bold),
                          ),
                        UIHelper.horizontalSpaceMedium,
                        if (status == Status.loading)
                          Shimmer.fromColors(
                            baseColor: AppColorScheme.shimmerBaseColor,
                            highlightColor:
                                AppColorScheme.shimmerHighlightColor,
                            child: Container(
                              width: 90,
                              height: 40,
                              decoration: BoxDecoration(
                                color: AppColorScheme.background,
                                borderRadius: const BorderRadius.all(
                                    AppCornerRadius.tiny),
                              ),
                            ),
                          )
                        else
                          Flexible(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  S.of(context).saldo,
                                  style: TextStyle(
                                      fontSize: AppFontSize.secondary,
                                      color: AppColorScheme.emphasis,
                                      fontWeight: AppFontWeight.semiBold),
                                ),
                                AutoSizeText(
                                  data?.userBalance ?? '',
                                  maxLines: 1,
                                  style: TextStyle(
                                      fontSize: AppFontSize.primary,
                                      color: AppColorScheme.success,
                                      fontWeight: AppFontWeight.semiBold),
                                )
                              ],
                            ),
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
                      child: _buildOffers(data?.offers ?? [], status),
                    ),
                  )
                ],
              );
            }),
          ),
        ),
      );

  Widget _buildOffers(List<OfferModel> offers, Status status) {
    if (status == Status.loading)
      return Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: List.generate(
            3,
            (index) => Shimmer.fromColors(
                  baseColor: AppColorScheme.shimmerBaseColor,
                  highlightColor: AppColorScheme.shimmerHighlightColor,
                  child: Container(
                    height: 150,
                    margin:
                        const EdgeInsets.symmetric(vertical: AppSpacing.tiny),
                    decoration: BoxDecoration(
                      color: AppColorScheme.background,
                      borderRadius:
                          const BorderRadius.all(AppCornerRadius.tiny),
                    ),
                  ),
                )),
      );

    if (offers.isEmpty)
      return Container(
        child: Center(child: Text(S.current.noOffersAvailable)),
      );
    else {
      return ListView.separated(
        itemCount: offers.length,
        shrinkWrap: true,
        separatorBuilder: (context, index) => Container(
          height: 0.5,
          color: AppColorScheme.border,
        ),
        itemBuilder: (context, index) => InkWell(
          onTap: () {
            OfferPage.navigateWith(arguments: offers[index]);
          },
          child: OfferWidget(
            model: offers[index],
          ),
        ),
      );
    }
  }
}
