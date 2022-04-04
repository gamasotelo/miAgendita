
import 'package:flutter/material.dart';
import 'package:flutter_application_1/servicios/theme_services.dart';
import 'package:flutter_application_1/ui/home_page.dart';
import 'package:flutter_application_1/ui/loginPage.dart';
import 'package:flutter_application_1/ui/theme.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:get_storage/get_storage.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await GetStorage.init();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: Themes.light,
      darkTheme: Themes.dark,
      themeMode: ThemeService().theme,
      
      home: LoginPage()
    );
  }
}

