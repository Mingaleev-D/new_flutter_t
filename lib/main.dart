import 'package:flutter/material.dart';
import 'package:new_flutter_t/pages/home_page.dart';
import 'package:new_flutter_t/pages/main_page.dart';
import 'package:new_flutter_t/style/app_colors.dart';

import 'pages/login_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
        fontFamily: 'NunitoSans',
        scaffoldBackgroundColor: AppColors.primary,
        brightness: Brightness.dark,
      ),
      home: const LoginPage(),
      initialRoute: '/welcome',
      routes: {
        '/welcome': (context) => const LoginPage(),
        '/home': (context) => HomePage(),
        '/main': (context) => const MainPage(),
      },
    );
  }
}
