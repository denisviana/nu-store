import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:get/get.dart';
import 'package:radio_life/app/styles/theme_data_radio_life.dart';

import '../generated/l10n.dart';
import 'radio_life_app_binding.dart';
import 'radio_life_app_routes.dart';
import 'styles/app_color_scheme.dart';
import 'styles/app_theme_data.dart';
import 'utils/widget_utils.dart';

class RadioLifeAppWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) => GetMaterialApp(
        navigatorKey: Get.key,
        localizationsDelegates: const [
          S.delegate,
          GlobalMaterialLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate,
          GlobalCupertinoLocalizations.delegate,
        ],
        supportedLocales: S.delegate.supportedLocales,
        builder: (context, child) {
          ThemeDataRadioLife.setIsDark(context);
          return Scaffold(
            backgroundColor: AppColorScheme.background,
            body: GestureDetector(
              onTap: () => WidgetUtils.hideKeyboard(context),
              child: child,
            ),
          );
        },
        debugShowCheckedModeBanner: false,
        title: 'Dibbs',
        themeMode: AppThemeData.themeMode,
        theme: AppThemeData.themeData,
        darkTheme: AppThemeData.themeDataDark,
        getPages: RadioLifeAppRoutes.routes,
        initialRoute: Routes.initial,
        initialBinding: RadioLifeAppBinding(),
      );
}
