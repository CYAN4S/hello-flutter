import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
      title: "Stateful Widget Lifecycle Demo",
      home: Scaffold(
        appBar: AppBar(
          title: const Text("상태 있는 위젯의 생명주기"),
        ),
        body: _LifecycleWidget(),
      ),
    ));

class _LifecycleWidget extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _LifecycleState();
}

class _LifecycleState extends State<_LifecycleWidget> {
  late String _buttonState;

  @override
  void initState() {
    super.initState();
    print("initState 호출됨: 트리에 삽입됨, 기본값 설정을 위해");
    _buttonState = "OFF";
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    print("didChangeDependencies 호출됨");
  }

  @override
  Widget build(BuildContext context) {
    print("build 호출됨");
    return Column(
      children: [
        ElevatedButton(onPressed: _onClick, child: const Text("버튼을 누르세요.")),
        Row(
          children: [Text("버튼 상태: "), Text(_buttonState)],
        )
      ],
    );
  }

  void _onClick() {
    print("onClick 호출됨");
    setState(() {
      print("setState 호출됨");
      if (_buttonState == "OFF") {
        _buttonState = "ON";
      } else {
        _buttonState = "OFF";
      }
    });
  }

  @override
  void didUpdateWidget(_LifecycleWidget oldWidget) {
    super.didUpdateWidget(oldWidget);
    print("didUpdateWidget 호출");
  }

  @override
  void deactivate() {
    super.deactivate();
    print("deactivate 호출");
  }

  @override
  void dispose() {
    super.dispose();
    print("dispose 호출");
  }

  @override
  void activate() {
    super.activate();
    print("activate 호출");
  }

  @override
  void reassemble() {
    super.reassemble();
    print("reassemble 호출");
  }
}
