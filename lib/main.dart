import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'bindings/bindings.dart';
import 'route/page_route.dart';
import 'screens/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Find My Movie',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialBinding: HomeBinding(),
      getPages: pageRoute,
      home: const Home(),
    );
  }
}
