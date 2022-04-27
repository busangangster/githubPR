import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:login/controllerBindings.dart';
import 'package:login/screens/root.dart';

void main() async {
  // Firebase init
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: Size(320, 660),
      builder: () => GetMaterialApp(
        // bind our app with the  Getx Controller
        initialBinding: ControllerBindings(),
        debugShowCheckedModeBanner: false,

        home: IntroScreen(),
      ),
    );
  }
}

class IntroScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Future.delayed(const Duration(seconds: 3), () {
      Navigator.pushAndRemoveUntil(context,
          MaterialPageRoute(builder: (context) => Root()), (route) => false);
    });
    return Scaffold(
      backgroundColor: Color(0xFFfafade),
      body: Center(
        child: Container(width: 2000, child: Image.asset('asset/mainlogo.jpg')),
      ),
    );
  }
}
