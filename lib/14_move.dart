import 'package:flutter/material.dart';

void main() {
  runApp(NavigateDemo());
}

class NavigateDemo extends StatelessWidget {
  const NavigateDemo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: MainPage(),);
  }

}

class MainPage extends StatelessWidget {
  const MainPage({Key? key}) : super(key: key);

  void _showNextPage(BuildContext context) {
    Navigator.push(context, MaterialPageRoute(builder: (context) => NextPage()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('초기 화면'),),
      body: Center(child: ElevatedButton(onPressed: () => _showNextPage(context), child: const Text('화면 이동'),),),
    );
  }

}

class NextPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('다음 화면'),),
      body: Center(child: ElevatedButton(onPressed: () => Navigator.pop(context),child: const Text('이전 화면'),),
      ),
    );
  }

}