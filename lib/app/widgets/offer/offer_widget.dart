import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:my_app/app/helpers/ui_helper.dart';
import 'package:my_app/app/pages/home/model/offer_model.dart';
import 'package:my_app/app/styles/app_border_radius.dart';
import 'package:my_app/app/styles/app_color_scheme.dart';
import 'package:my_app/app/styles/app_font_size.dart';
import 'package:my_app/app/styles/app_font_weight.dart';
import 'package:my_app/app/styles/app_spacing.dart';

class OfferWidget extends StatelessWidget {

  final OfferModel model;

  const OfferWidget({required this.model, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Container(
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
          child: Hero(
            tag: model.id,
            child: Image.network(
              model.productImage,
              width: 100,
            ),
          ),
        ),
        UIHelper.horizontalSpaceExtraMedium,
        Flexible(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                model.productName,
                style: TextStyle(
                    fontSize: AppFontSize.large,
                    color: AppColorScheme.emphasis,
                    fontWeight: AppFontWeight.semiBold),
              ),
              UIHelper.verticalSpaceTiny,
              AutoSizeText(
                model.productDescription,
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
                model.price,
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
  );

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty<OfferModel>('model', model));
  }
}
