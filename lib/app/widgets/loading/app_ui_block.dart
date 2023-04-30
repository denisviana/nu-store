import 'package:flutter/material.dart';
import 'package:my_app/app/styles/app_color_scheme.dart';
import 'package:my_app/app/styles/app_font_size.dart';
import 'package:my_app/app/styles/app_font_weight.dart';
import 'package:uiblock/uiblock.dart';

class AppUIBlock {
  static void blockUI({BuildContext? context, String? text}) => (context != null)
      ? UIBlock.block(
          context,
          safeAreaTop: false,
          safeAreaBottom: false,
          isSlideTransitionDefault: false,
          backgroundColor: Colors.black38,
          customLoaderChild: const CircularProgressIndicator(
            valueColor: AlwaysStoppedAnimation<Color>(AppColorScheme.white),
          ),
          loadingTextWidget: (text != null)
              ? Padding(
                  padding: const EdgeInsets.all(8),
                  child: Text(
                    text,
                    textAlign: TextAlign.center,
                    style: const TextStyle(
                      color: AppColorScheme.white,
                      fontSize: AppFontSize.medium,
                      fontWeight: AppFontWeight.semiBold,
                    ),
                  ),
                )
              : Container(),
        )
      : null;

  static void unblock({BuildContext? context}) =>
      (context != null) ? UIBlock.unblock(context) : null;
}
