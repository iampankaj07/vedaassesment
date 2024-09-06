import 'package:flutter/material.dart';
import 'package:veda_assesment/presentation/bottom_nav.dart';
import 'package:veda_assesment/presentation/home_screen/add_plant_screen.dart';
import 'package:veda_assesment/presentation/home_screen/home_screen.dart';
import 'package:veda_assesment/presentation/intro_screen/intro_screen.dart';
import 'package:veda_assesment/presentation/logo_screen/logo_screen.dart';
import 'package:veda_assesment/presentation/profile_setup/profile_setup_screen.dart';
import 'package:veda_assesment/presentation/signup_screen/signupscreen.dart';
import 'package:veda_assesment/presentation/start_journey/start_journeyscreen.dart';

class AppRoutes {
  static const String initialRoute = '/initialRoute';
  static const String logoScreen = '/logo_screen';
  static const String introScreen = '/intro_screen';
  static const String profileSetupScreen = '/profile_setup_screen';
  static const String startJourneyScreen = '/start_journey_screen';
  static const String signUpScreen = '/sign_up_screen';
  static const String addplants = '/add_plants_screen';
  static const String homeScreen = '/home_screen';
  static const String bottomNav = '/bottom_-nav';
  static Map<String, WidgetBuilder> get routes => {
        logoScreen: (context) => const LogoScreen(),
        profileSetupScreen: (context) => const ProfileSetupScreen(),
        startJourneyScreen: (context) => const StartJourneyscreen(),
        signUpScreen: (context) => const Signupscreen(),
        homeScreen: (context) => const HomeScreen(),
        bottomNav: (context) => const BottomNav(),
        introScreen: (context) => const IntroScreen(),
        addplants: (context) => AddPlantScreen(),
        initialRoute: (context) => const LogoScreen(),
      };
}
