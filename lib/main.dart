import 'package:fire_baseproject/Screen/Home_Screen/View/home_screen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';


Future<void> main()
async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();

  runApp(
      Sizer(builder: (context, orientation, deviceType) => GetMaterialApp(
        debugShowCheckedModeBanner: false,
        getPages: [
          GetPage(name: '/', page:() =>  HomeScreen(),),
        ],
      ),)
  );
}
