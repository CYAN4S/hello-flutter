import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  final String _title = '위젯 실험';

  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: _title,
      home: Scaffold(
        appBar: AppBar(
          title: Text(_title),
          backgroundColor: const Color(0xFF26BFB3),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            const Text('일반 텍스트 위젯'),
            const Text('스타일링 텍스트 위젯', style: TextStyle(
              color: Color(0xFF26BFB3),
              fontSize: 48,
              fontWeight: FontWeight.bold,
              fontFamily: 'Pretendard'
            ),),
            Image.asset('assets/cyan.jpg')
          ],
        ),
      ),
    );
  }
}
