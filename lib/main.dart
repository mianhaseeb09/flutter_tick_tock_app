import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_tick_tock_app/constant.dart';
import 'package:flutter_tick_tock_app/controller/auth_user.dart';
import 'package:flutter_tick_tock_app/screen/auth/login_screen.dart';
import 'package:flutter_tick_tock_app/screen/auth/register_screen.dart';
import 'package:get/get.dart';



void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  if (kIsWeb) {
    // run the web
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: Constants.apiKey,
            appId: Constants.appid,
            messagingSenderId: Constants.messagingSenderId,
            projectId: Constants.projectId));
  } else {
    // run the android and ios
    await Firebase.initializeApp().then((value){
      Get.put(AuthController);
    });
  }

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'TikTok App',
        theme:
            ThemeData.dark().copyWith(scaffoldBackgroundColor: backgroundColor),
        home: const RegisterScreen());
  }
}
