import 'package:flutter/material.dart';

class admission extends StatefulWidget {
  const admission({Key? key}) : super(key: key);

  @override
  State<admission> createState() => _admissionState();
}

class _admissionState extends State<admission> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Admission Page'),
      ),
      body: Center(
        child: Text('Admission Page'),
      ),
    );
  }
}
