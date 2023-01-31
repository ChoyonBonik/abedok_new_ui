import 'package:abedok_new_ui/pages/dashboard_page.dart';
import 'package:abedok_new_ui/pages/page_1.dart';
import 'package:abedok_new_ui/pages/page_2.dart';
import 'package:abedok_new_ui/pages/page_3.dart';
import 'package:abedok_new_ui/pages/page_4.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: DashboardPage(),
    );
  }
}
