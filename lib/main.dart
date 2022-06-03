import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ur_pulse_modified/common/main_drawer/drawer_body.dart';

import 'home/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const HomePage(),
      getPages: [
        GetPage(name:"/drawer", page:()=>const DrawerBody())
      ],
    );
  }
}

