import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:gugaportfolio/page/utils/color_scheme.dart';
import 'package:gugaportfolio/page/utils/color_scheme_provider.dart';
import 'package:gugaportfolio/page/utils/screen_size.dart';

import 'package:gugaportfolio/page/widget/switch_button.dart';
import 'package:gugaportfolio/page/widget/text_button_widget.dart';
import 'package:provider/provider.dart';

// ignore: must_be_immutable
class MainHeader extends StatelessWidget {
  GlobalKey about;
  GlobalKey portfolio;
  GlobalKey contacts;
  MainHeader({
    super.key,
    required this.about,
    required this.portfolio,
    required this.contacts,
  });

  void scrollToSection(GlobalKey key) {
    Scrollable.ensureVisible(
      key.currentContext!,
      duration: const Duration(seconds: 1),
      curve: Curves.easeInOut,
    );
  }

  @override
  Widget build(BuildContext context) {
    final bool isSmallScreen = ScreenSizeUtil.isScreenSmall(context);
    return Container(
      height: MediaQuery.of(context).size.height / 1,
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Theme.of(context).colorScheme.secondary.withOpacity(0.2),
            spreadRadius: 10,
            blurRadius: 10,
            offset: const Offset(0, 1),
          ),
        ],
      ),
      child: isSmallScreen
          ? Padding(
              padding: const EdgeInsets.only(
                right: 30.0,
                top: 30.0,
              ),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      PopupMenuButton<String>(
                        color: const Color(0xFF202020),
                        icon: const Icon(
                          Icons.menu,
                          color: Colors.white,
                        ),
                        itemBuilder: (BuildContext context) => <PopupMenuEntry<String>>[
                          const PopupMenuItem<String>(
                            value: 'about',
                            child: Text(
                              'ABOUT',
                              style: TextStyle(
                                color: Color(0xFFF1F2F3),
                              ),
                            ),
                          ),
                          const PopupMenuItem<String>(
                            value: 'portfolio',
                            child: Text(
                              'PORTFOLIO',
                              style: TextStyle(
                                color: Color(0xFFF1F2F3),
                              ),
                            ),
                          ),
                          const PopupMenuItem<String>(
                            value: 'contacts',
                            child: Text(
                              'CONTACTS',
                              style: TextStyle(
                                color: Color(0xFFF1F2F3),
                              ),
                            ),
                          ),
                        ],
                        onSelected: (String value) {
                          switch (value) {
                            case 'about':
                              scrollToSection(about);
                              break;
                            case 'portfolio':
                              scrollToSection(portfolio);
                              break;
                            case 'contacts':
                              scrollToSection(contacts);
                              break;
                          }
                        },
                      ),
                    ],
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height / 5,
                  ),
                  Column(
                    children: [
                      Image.asset(
                        'assets/images/flutter.png',
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height / 10,
                      ),
                      Text(
                        'GUSTAVO RODRIGUES',
                        style: GoogleFonts.russoOne(
                          fontSize: 40,
                          color: Theme.of(context).colorScheme.onSecondary,
                        ),
                      ),
                      AnimatedTextKit(
                        pause: Duration.zero,
                        repeatForever: true,
                        animatedTexts: [
                          TypewriterAnimatedText(
                            '<Flutter Developer>',
                            textStyle: GoogleFonts.russoOne(
                              fontSize: 20,
                              color: Theme.of(context).colorScheme.onSecondary,
                            ),
                            speed: const Duration(milliseconds: 100),
                          ),
                          TypewriterAnimatedText(
                            '{Mobile Developer}',
                            textStyle: GoogleFonts.russoOne(
                              fontSize: 20,
                              color: Theme.of(context).colorScheme.onSecondary,
                            ),
                            speed: const Duration(milliseconds: 100),
                          ),
                          TypewriterAnimatedText(
                            'Firebase & SQL',
                            textStyle: GoogleFonts.russoOne(
                              fontSize: 20,
                              color: Theme.of(context).colorScheme.onSecondary,
                            ),
                            speed: const Duration(milliseconds: 100),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            )
          : Padding(
              padding: const EdgeInsets.symmetric(horizontal: 100.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Column(
                        children: [
                          Row(
                            children: [
                              Text(
                                'GUSTAVO RODRIGUES',
                                style: GoogleFonts.russoOne(
                                  fontSize: 40,
                                  color: Theme.of(context).colorScheme.onSecondary,
                                ),
                              ),
                            ],
                          ),
                          AnimatedTextKit(
                            pause: Duration.zero,
                            repeatForever: true,
                            animatedTexts: [
                              TypewriterAnimatedText(
                                '<Flutter Developer>',
                                textStyle: GoogleFonts.russoOne(
                                  fontSize: 20,
                                  color: Theme.of(context).colorScheme.onSecondary,
                                ),
                                speed: const Duration(milliseconds: 100),
                              ),
                              TypewriterAnimatedText(
                                '{Mobile Developer}',
                                textStyle: GoogleFonts.russoOne(
                                  fontSize: 20,
                                  color: Theme.of(context).colorScheme.onSecondary,
                                ),
                                speed: const Duration(milliseconds: 100),
                              ),
                              TypewriterAnimatedText(
                                'Firebase & SQL',
                                textStyle: GoogleFonts.russoOne(
                                  fontSize: 20,
                                  color: Theme.of(context).colorScheme.onSecondary,
                                ),
                                speed: const Duration(milliseconds: 100),
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              TextButtonWidget(
                                onPressed: () {
                                  scrollToSection(about);
                                },
                                text: 'ABOUT',
                              ),
                              TextButtonWidget(
                                  onPressed: () {
                                    scrollToSection(portfolio);
                                  },
                                  text: 'PORTFOLIO'),
                              TextButtonWidget(
                                  onPressed: () {
                                    scrollToSection(contacts);
                                  },
                                  text: 'CONTACTS'),
                            ],
                          ),
                        ],
                      ),
                      Image.asset(
                        'assets/images/flutter.png',
                      ),
                    ],
                  ),
                ],
              ),
            ),
    );
  }
}
