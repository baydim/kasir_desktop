import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:kasir_desktop/app/theme/app_theme.dart';

import 'app/routes/app_pages.dart';

void main() {
  runApp(
    const App(),
  );
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
        title: "Application",
        initialRoute: AppPages.INITIAL,
        getPages: AppPages.routes,
        theme: appTheme(context),
        darkTheme: appTheme(context));
  }
}
