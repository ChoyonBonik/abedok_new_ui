import 'package:flutter/material.dart';

class PoliceClear extends StatefulWidget {
  const PoliceClear({Key? key}) : super(key: key);

  @override
  State<PoliceClear> createState() => _PoliceClearState();
}

class _PoliceClearState extends State<PoliceClear> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Police Clearence'),
      ),
      body: Center(
        child: Text('Police Clearence'),
      ),
    );
  }
}
