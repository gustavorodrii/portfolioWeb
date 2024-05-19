import 'package:flutter/material.dart';
import 'package:gugaportfolio/page/utils/color_scheme.dart';
import 'package:gugaportfolio/page/utils/color_scheme_provider.dart';
import 'package:gugaportfolio/page/widget/main_content.dart';
import 'package:provider/provider.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage(
              'assets/images/bg_black.jpg',
            ),
            fit: BoxFit.cover,
          ),
        ),
        child: const MainContent(),
      ),
    );
  }
}
