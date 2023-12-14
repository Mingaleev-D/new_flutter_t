import 'package:flutter/material.dart';
import 'package:new_flutter_t/theme/app_colors.dart';

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
          scaffoldBackgroundColor: AppColors.primary),
      home: LoginPage(),
    );
  }
}
