import 'package:flutter/material.dart';
import 'package:gugaportfolio/page/widget/about.dart';
import 'package:gugaportfolio/page/widget/contact.dart';
import 'package:gugaportfolio/page/widget/main_header.dart';
import 'package:gugaportfolio/page/widget/portfolio.dart';

class MainContent extends StatefulWidget {
  const MainContent({super.key});

  @override
  State<MainContent> createState() => _MainContentState();
}

class _MainContentState extends State<MainContent> {
  final sectionAbout = GlobalKey();
  final sectionPortfolio = GlobalKey();
  final sectionContacts = GlobalKey();

  final ScrollController _scrollController = ScrollController();

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  void _scrollToTop() {
    _scrollController.animateTo(0, duration: const Duration(seconds: 1), curve: Curves.easeInCubic);
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      controller: _scrollController,
      child: Column(
        children: [
          MainHeader(
            about: sectionAbout,
            portfolio: sectionPortfolio,
            contacts: sectionContacts,
          ),
          About(
            key: sectionAbout,
          ),
          const SizedBox(
            height: 10,
          ),
          Portfolio(
            key: sectionPortfolio,
          ),
          const SizedBox(
            height: 10,
          ),
          Stack(
            children: [
              Contact(
                key: sectionContacts,
              ),
              Positioned(
                bottom: 30,
                left: 0,
                right: 0,
                child: Align(
                  alignment: Alignment.bottomCenter,
                  child: FloatingActionButton.extended(
                    icon: const Icon(Icons.arrow_upward_outlined),
                    label: const Text(
                      'Go to top',
                    ),
                    onPressed: _scrollToTop,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
