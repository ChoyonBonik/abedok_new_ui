
import 'package:flutter/material.dart';

class GovtJob extends StatefulWidget {
  const GovtJob({Key? key}) : super(key: key);

  @override
  State<GovtJob> createState() => _GovtJobState();
}

class _GovtJobState extends State<GovtJob> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Government Job Page'),
        centerTitle: true,
      ),
      body: Center(
        child: Text('Government Job Page'),
      )
    );
  }
}
