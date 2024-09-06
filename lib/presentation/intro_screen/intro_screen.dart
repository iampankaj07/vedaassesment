import 'dart:async';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:veda_assesment/core/utils/image_constant.dart';
import 'package:veda_assesment/routes/app_routes.dart';

class IntroScreen extends StatefulWidget {
  const IntroScreen({super.key});

  @override
  State<IntroScreen> createState() => _IntroScreenState();
}

class _IntroScreenState extends State<IntroScreen> {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 3), () {
      Navigator.of(context).pushNamed(
        AppRoutes.profileSetupScreen,
        // (Route<dynamic> route) => false,
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFFFFFF),
      body: Container(
        padding: const EdgeInsets.fromLTRB(33.5, 17.2, 14.7, 14),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              margin: const EdgeInsets.fromLTRB(0, 0, 23.4, 32),
              child: Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(
                      ImageConstant.introimg,
                    ),
                  ),
                ),
                child: const SizedBox(
                  width: 193.4,
                  height: 226,
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.fromLTRB(0, 0, 20.8, 0),
              child: RichText(
                textAlign: TextAlign.center,
                text: TextSpan(
                  style: GoogleFonts.getFont(
                    'EB Garamond',
                    fontWeight: FontWeight.w600,
                    fontSize: 32,
                    height: 1.3,
                    color: const Color(0xFF16611F),
                  ),
                  children: [
                    TextSpan(
                      text: 'Your Ultimate Plant Care',
                      style: GoogleFonts.getFont(
                        'EB Garamond',
                        fontWeight: FontWeight.w600,
                        fontSize: 32,
                        height: 1.3,
                        color: const Color(0xFF16611F),
                      ),
                    ),
                    TextSpan(
                      text: ' ',
                      style: GoogleFonts.getFont(
                        'EB Garamond',
                        fontWeight: FontWeight.w600,
                        fontSize: 32,
                        height: 1.3,
                        color: const Color(0xFF16611F),
                      ),
                    ),
                    TextSpan(
                      text: 'Companion!',
                      style: GoogleFonts.getFont(
                        'EB Garamond',
                        fontWeight: FontWeight.w600,
                        fontSize: 32,
                        height: 1.3,
                        color: const Color(0xFF16611F),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
