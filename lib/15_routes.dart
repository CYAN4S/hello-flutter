import 'package:flutter/material.dart';

void main() {
  runApp(Router());
}

class Router extends StatelessWidget {
  const Router({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/': (context) => MainPage(),
        'next': (context) => NextPage()
      },
    );
  }
}

class MainPage extends StatelessWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("라우터 데모")),
      body: Center(
        child: ElevatedButton(
          child: Text('다음 화면으로'),
          onPressed: () => Navigator.pushNamed(context, 'next'),
        ),
      ),
    );
  }
}

class NextPage extends StatelessWidget {
  const NextPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("다음 화면")),
    );
  }
}