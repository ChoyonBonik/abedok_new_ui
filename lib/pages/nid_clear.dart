import 'package:flutter/material.dart';

class NidClear extends StatefulWidget {
  const NidClear({Key? key}) : super(key: key);

  @override
  State<NidClear> createState() => _NidClearState();
}

class _NidClearState extends State<NidClear> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Nid Clearence Page'),
      ),
      body: Center(
        child: Text('Nid Clearence Page'),
      ),
    );
  }
}
