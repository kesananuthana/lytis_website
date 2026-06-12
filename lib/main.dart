import 'package:flutter/material.dart';
import 'package:lytis/config/theme.dart';
import 'package:lytis/feature/presentation/pages/web_home/title_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Lytis',
      theme: AppTheme.lightTheme,
      home: TitlePage(),
    );
  }
}
