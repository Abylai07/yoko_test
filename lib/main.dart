import 'package:flutter/material.dart';
import 'package:yoko_test/screens/activities_screen/activities_screen.dart';
import 'package:yoko_test/screens/activity_details_screen/activity_details_screen.dart';
import 'package:yoko_test/screens/login_screen/login_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Yoko Test',
      debugShowCheckedModeBanner: false,
      home: ActivityDetailsScreen(),
    );
  }
}
