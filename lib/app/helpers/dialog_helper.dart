import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_interface.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:get/get_navigation/src/dialog/dialog_route.dart';

extension ExtensionDialog on GetInterface {
  /// Api from showGeneralDialog with no context
  Future<T?> appDialog<T>({
    required Widget pageChild,
    bool barrierDismissible = false,
    Color barrierColor = const Color(0x80000000),
    Duration transitionDuration = const Duration(milliseconds: 200),
    RouteTransitionsBuilder? transitionBuilder,
    bool useRootNavigator = true,
    RouteSettings? routeSettings,
  }) {
    assert(!barrierDismissible);
    HapticFeedback.mediumImpact();
    return Navigator.of(
      overlayContext!,
      rootNavigator: useRootNavigator,
    ).push<T>(
      GetDialogRoute<T>(
        pageBuilder: (buildContext, animation, secondaryAnimation) {
          final Widget dialog = Builder(
            builder: (context) => Theme(
              data: Theme.of(key.currentContext!),
              child: pageChild,
            ),
          );
          return SafeArea(child: dialog);
        },
        barrierDismissible: barrierDismissible,
        barrierColor: barrierColor,
        transitionDuration: transitionDuration,
        transitionBuilder: (context, animation, secondaryAnimation, child) => SlideTransition(
          position: Tween(
            begin: const Offset(0, -1),
            end: const Offset(0, 0),
          ).animate(animation),
          child: child,
        ),
        settings: routeSettings,
      ),
    );
  }
}

bool get isOpenDialog => Get.isDialogOpen != null && Get.isDialogOpen == true;
