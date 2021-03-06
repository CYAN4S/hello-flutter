import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
      title: "Stateless Widget Demo",
      home: Scaffold(
        appBar: AppBar(
          title: const Text("상태 없는 위젯"),
        ),
        body: _FirstStatelessWidget(),
      ),
    ));

class _FirstStatelessWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const Text("이것은 상태 없는 위젯입니다.");
  }
}
