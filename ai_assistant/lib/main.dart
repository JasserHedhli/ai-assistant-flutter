import 'package:ai_assistant/helper/preference.dart';
import 'package:ai_assistant/screen/splash-screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';

import 'helper/global.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  //init Hive
  Preference.initialized();

  await SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersiveSticky);
  await SystemChrome.setPreferredOrientations(
      [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const GetMaterialApp(
        title: appName,
        debugShowCheckedModeBanner: false,
        home: SplashScreen());
  }
}
