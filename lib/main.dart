import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:veda_assesment/core/utils/size_utils.dart';
import 'package:veda_assesment/presentation/home_screen/auth_provider.dart';
import 'package:veda_assesment/presentation/home_screen/provider.dart';
import 'package:veda_assesment/routes/app_routes.dart';
import 'package:veda_assesment/theme/theme_helper.dart';

var globalMessengerKey = GlobalKey<ScaffoldMessengerState>();
void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MultiProvider(
    providers: [
      ChangeNotifierProvider(create: (_) => PlantProvider()),
      ChangeNotifierProvider(create: (_) => UserProvider()),
    ],
    child: const MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Sizer(
      builder: (context, orientation, deviceType) {
        return MaterialApp(
          title: 'veda__assesment',
          theme: theme,
          debugShowCheckedModeBanner: false,
          initialRoute: AppRoutes.initialRoute,
          routes: AppRoutes.routes,
          // onUnknownRoute: (RouteSettings settings) {
          //   return MaterialPageRoute(
          //     builder: (BuildContext context) {
          //       return ComingSoonPage(); // Your default route
          //     },
        );
      },
    );
  }
}
