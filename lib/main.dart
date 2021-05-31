import 'package:flutter/material.dart';
import '../modules/auth/pages/login.dart';
import 'src/theme.dart';
import 'package:intl/date_symbol_data_local.dart';

void main() {
  initializeDateFormatting().then((_) => runApp(const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Chat',
      theme: ThemeCustoms.themeData,
      home: LoginPage(),
    );
  }
}
