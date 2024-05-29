import 'package:flutter/material.dart';
import 'package:flutter_application_1/src/components/home_controller.dart';
import 'package:flutter_application_1/src/components/home_page.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomeController(
        child: HomePage(),
      ),
    );
  }
}
