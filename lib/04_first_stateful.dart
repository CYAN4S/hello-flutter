import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
      title: "Stateful Widget Demo",
      home: Scaffold(
        appBar: AppBar(
          title: const Text("상태 있는 위젯"),
        ),
        body: _FirstStatefulWidget(),
      ),
    ));

class _FirstStatefulWidget extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _FirstState();
  }
}

class _FirstState extends State<_FirstStatefulWidget> {
  @override
  Widget build(BuildContext context) {
    return const Text("이것은 상태 있는 위젯입니다.");
  }
}
