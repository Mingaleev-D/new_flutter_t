import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(useMaterial3: true),
      //title: 'Material App',
      home: Scaffold(
        body: Column(
          children: [
            Text('Hello, welcome back!'),
            Text('Login to continue'),
            TextField(
              decoration: InputDecoration(
                hintText: 'Enter email',
              ),
            ),
            TextField(
              decoration: InputDecoration(
                hintText: 'Enter password',
              ),
            ),
            TextButton(onPressed: () {}, child: const Text('Forgont password')),
            ElevatedButton(
              onPressed: () {},
              child: Image.asset(
                'assets/images/flutter.jpg',
                width: 30,
                height: 30,
              ),
            ),
            ElevatedButton(
              onPressed: () {},
              child: Image.asset(
                'assets/images/ic_games.jpg',
                width: 30,
                height: 30,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
