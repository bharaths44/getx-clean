// import 'package:flutter/material.dart';
// import 'package:flutter_localizations/flutter_localizations.dart';
// import 'package:get/get.dart';
// import 'package:getx_clean_architecture/generated/locales.g.dart';

// import 'domain/core/di/dependancy.dart';
// import 'infrastructure/navigation/bindings/controllers/controllers_bindings.dart';
// import 'infrastructure/navigation/bindings/controllers/home.controller.binding.dart';
// import 'infrastructure/navigation/navigation.dart';
// import 'infrastructure/navigation/routes.dart';

// void main() async {
//   var initialRoute = await Routes.initialRoute;
//   DependencyCreator.init();
//   runApp(Main(initialRoute));
// }

// class Main extends StatelessWidget {
//   final String initialRoute;

//   Main(this.initialRoute);

//   @override
//   Widget build(BuildContext context) {
//     return GetMaterialApp(
//       initialRoute: initialRoute,
//       getPages: Nav.routes,
//       initialBinding: HomeControllerBinding(),

//       debugShowCheckedModeBanner: false,
//       translationsKeys: AppTranslation.translations,
//       localizationsDelegates: GlobalMaterialLocalizations.delegates,
//       supportedLocales: [
//         Locale('en', 'US'),
//       ],
//       locale: Locale('en', 'US'),
//       fallbackLocale: Locale('en', 'US'),

//       ///for custom themes
//       //theme: AppThemes.light,
//       // darkTheme: AppThemes.light,
//       // themeMode: ThemeMode.system,
//     );
//   }
// }
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_clean_architecture/presentation/auth/login/login_screen.dart';
import 'package:getx_clean_architecture/presentation/auth/register/register_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'My App',
      initialRoute: '/register',
      getPages: [
        GetPage(name: '/register', page: () => RegisterScreen()),
        // Define other routes as needed
      ],
    );
  }
}
