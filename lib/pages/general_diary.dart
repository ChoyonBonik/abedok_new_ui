import 'package:flutter/material.dart';

class GeneralDiary extends StatefulWidget {
  const GeneralDiary({Key? key}) : super(key: key);

  @override
  State<GeneralDiary> createState() => _GeneralDiaryState();
}

class _GeneralDiaryState extends State<GeneralDiary> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('General Diary Page'),
      ),
      body: Center(
        child: Text('General Diary Page'),
      ),
    );
  }
}
