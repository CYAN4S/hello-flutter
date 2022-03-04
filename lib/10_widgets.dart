import 'package:flutter/material.dart';

void main() {
  runApp(const StateDemo());
}

class StateDemo extends StatefulWidget {
  const StateDemo({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return StateDemoState();
  }
}

class StateDemoState extends State<StateDemo> {
  final String _title = '상태 위젯 실험';

  bool isButtonOn = false;

  void onPressed() {
    setState(() {
      isButtonOn = !isButtonOn;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(title: _title,
      home: Scaffold(
        appBar: AppBar(title: Text(_title)),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ElevatedButton(onPressed: onPressed,
              child: Text(isButtonOn ? 'ON' : 'OFF'),)
          ],
        ),
      ),
    );
  }

}