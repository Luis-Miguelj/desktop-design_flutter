import 'package:desktop_app/mobile/widget/add_list.dart';
import 'package:desktop_app/pages/home.dart';
import 'package:desktop_app/pages/login.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'desktop',
      debugShowCheckedModeBanner: false,
      initialRoute: Login.route,
     routes: {
      Login.route: (_)=> Login(),
      Home.route:(_)=> Home(),
      AddList.route:(_) => AddList(),
     },
    );
  }
}