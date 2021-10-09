import 'package:flutter/material.dart';
import 'package:get/get.dart';
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
        body: Container(
          padding: const EdgeInsets.all(AppSpacing.medium),
          child: Obx(() {
            final status = controller.state.value.status;
            final data = controller.state.value.data;
            return data == null
                ? Container()
                : Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            S.of(context).olaUser(data.userName),
                            style: TextStyle(
                              fontSize: AppFontSize.mega,
                              color: AppColorScheme.emphasis,
                              fontWeight: AppFontWeight.bold
                            ),
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                S.of(context).saldo,
                                style: TextStyle(
                                    fontSize: AppFontSize.secondary,
                                    color: AppColorScheme.emphasis,
                                    fontWeight: AppFontWeight.semiBold
                                ),
                              ),
                              Text(
                                data.userBalance,
                                style: TextStyle(
                                    fontSize: AppFontSize.primary,
                                    color: AppColorScheme.success,
                                    fontWeight: AppFontWeight.semiBold
                                ),
                              )
                            ],
                          )
                        ],
                      ),
                      UIHel
                    ],
                  );
          }),
        ),
      );
}
