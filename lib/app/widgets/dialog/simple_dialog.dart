import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_app/app/helpers/ui_helper.dart';
import 'package:my_app/app/styles/app_border_radius.dart';
import 'package:my_app/app/styles/app_color_scheme.dart';
import 'package:my_app/app/styles/app_font_size.dart';
import 'package:my_app/app/styles/app_font_weight.dart';
import 'package:my_app/app/styles/app_spacing.dart';
import 'package:my_app/app/widgets/buttons/app_button.dart';

import '../../../generated/l10n.dart';

class AppSimpleDialog extends StatelessWidget {
  final String title;
  final String? buttonTitle;
  final String message;
  final VoidCallback? onCloseButtonPressed;
  final VoidCallback? onButtonPressed;
  final Widget? icon;

  const AppSimpleDialog({
    required this.title,
    required this.message,
    this.onCloseButtonPressed,
    this.onButtonPressed,
    this.icon,
    this.buttonTitle
  });

  Future<void> showAlert(BuildContext context) async => showGeneralDialog(
        barrierLabel: 'Label',
        barrierDismissible: true,
        barrierColor: Colors.black.withOpacity(0.5),
        transitionDuration: const Duration(milliseconds: 700),
        context: context,
        pageBuilder: (context, anim1, anim2) => Align(
          alignment: Alignment.bottomCenter,
          child: Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
            ),
            child: const SizedBox.expand(child: FlutterLogo()),
          ),
        ),
        transitionBuilder: (context, anim1, anim2, child) => SlideTransition(
          position: Tween(begin: const Offset(0, 1), end: const Offset(0, 0))
              .animate(anim1),
          child: child,
        ),
      );

  @override
  Widget build(BuildContext context) => AnimatedSwitcher(
        duration: const Duration(seconds: 1),
        child: Center(
          child: Container(
            width: double.infinity,
            margin: const EdgeInsets.symmetric(horizontal: AppSpacing.medium),
            padding: const EdgeInsets.all(AppSpacing.medium),
            decoration: BoxDecoration(
              borderRadius: AppBorderRadius.medium,
              color: AppColorScheme.white,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              mainAxisSize: MainAxisSize.min,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      width: 40,
                    ),
                    Text(
                      title,
                      textAlign: TextAlign.center,
                      style: const TextStyle(
                          color: Colors.black,
                          fontSize: AppFontSize.medium,
                          fontWeight: AppFontWeight.bold),
                    ),
                    if (onCloseButtonPressed != null)
                      IconButton(
                        onPressed: () {
                          Get.back();
                          onCloseButtonPressed!();
                        },
                        icon: const Icon(
                          Icons.close,
                          color: Colors.black,
                        ),
                      )
                    else
                      Container()
                  ],
                ),
                Container(
                  height: 0.5,
                  color: AppColorScheme.border,
                  width: MediaQuery.of(context).size.width,
                ),
                UIHelper.verticalSpaceSmall,
                if (icon != null) ...[
                  icon!,
                  UIHelper.verticalSpaceSmall,
                ],
                Text(
                  message,
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                      color: Colors.black, fontSize: AppFontSize.primary),
                ),
                UIHelper.verticalSpaceMedium,
                if (onButtonPressed != null)
                  AppButton(
                      onPressed: () {
                        Get.back();
                        onButtonPressed!();
                      },
                      title: buttonTitle ?? S.of(context).ok,
                      style: AppButtonStyle.filled
                  )
              ],
            ),
          ),
        ),
      );

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
        .add(ObjectFlagProperty<VoidCallback>.has('onCancel', onCloseButtonPressed));
    properties.add(StringProperty('title', title));
    properties.add(StringProperty('message', message));
    properties.add(DiagnosticsProperty<Widget?>('icon', icon));
    properties
        .add(ObjectFlagProperty<VoidCallback?>.has('onOkPressed', onButtonPressed));
        properties.add(StringProperty('buttonTitle', buttonTitle));
  }
}
