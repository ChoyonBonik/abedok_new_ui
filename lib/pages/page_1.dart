import 'package:abedok_new_ui/pages/page_2.dart';
import 'package:abedok_new_ui/pages/page_3.dart';
import 'package:abedok_new_ui/pages/page_4.dart';
import 'package:abedok_new_ui/pages/page_5.dart';
import 'package:abedok_new_ui/pages/page_6.dart';
import 'package:flutter/material.dart';

class Page1 extends StatefulWidget {
  const Page1({Key? key}) : super(key: key);

  @override
  State<Page1> createState() => _Page1State();
}

class _Page1State extends State<Page1> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('hi'),
        centerTitle: true,
      ),
      body: Center(
        child: Text('JOI'),
      )
    );
  }
}
