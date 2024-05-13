import 'package:flutter/material.dart';
import 'package:gugaportfolio/page/utils/color_scheme_provider.dart';
import 'package:gugaportfolio/page/view/home_page.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(ChangeNotifierProvider(
    create: (context) => ColorSchemeProvider(),
    child: const MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Gustavo Portfolio',
      theme: Provider.of<ColorSchemeProvider>(context).themeData,
      debugShowCheckedModeBanner: false,
      home: const HomePage(),
    );
  }
}
