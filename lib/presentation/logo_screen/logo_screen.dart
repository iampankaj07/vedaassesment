import 'dart:async';

import 'package:flutter/material.dart';
import 'package:veda_assesment/routes/app_routes.dart';

import '../../core/utils/image_constant.dart';

class LogoScreen extends StatefulWidget {
  const LogoScreen({super.key});

  @override
  State<LogoScreen> createState() => _LogoScreenState();
}

class _LogoScreenState extends State<LogoScreen> {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 3), () {
      Navigator.of(context).pushNamedAndRemoveUntil(
        AppRoutes.introScreen,
        (Route<dynamic> route) => false,
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: Color(0xFF1C7927),
      ),
      child: SizedBox(
          width: 28.4, height: 11.1, child: Image.asset(ImageConstant.logo)),
    );
  }
}
