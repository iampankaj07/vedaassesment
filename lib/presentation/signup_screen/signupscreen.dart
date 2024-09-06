import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:veda_assesment/core/api_services/auth_services.dart';
import 'package:veda_assesment/core/utils/image_constant.dart';
import 'package:veda_assesment/presentation/home_screen/auth_provider.dart';
import 'package:veda_assesment/routes/app_routes.dart';

class Signupscreen extends StatefulWidget {
  const Signupscreen({super.key});

  @override
  State<Signupscreen> createState() => _SignupscreenState();
}

class _SignupscreenState extends State<Signupscreen> {
  final AuthService _authService = AuthService();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFEFEFE),
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back), // Custom back icon
          onPressed: () {
            Navigator.pop(context); // Navigate back to the previous screen
          },
        ),
        automaticallyImplyLeading: true,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              margin: const EdgeInsets.fromLTRB(0, 0, 8, 0),
              child: Container(
                decoration: BoxDecoration(
                  color: const Color(0xFF40924A),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: const SizedBox(
                  width: 32,
                  height: 6,
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.fromLTRB(0, 0, 8, 0),
              child: Container(
                decoration: BoxDecoration(
                  color: const Color(0xFF40924A),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: const SizedBox(
                  width: 32,
                  height: 6,
                ),
              ),
            ),
            Container(
              decoration: BoxDecoration(
                color: const Color(0xFF40924A),
                borderRadius: BorderRadius.circular(8),
              ),
              child: const SizedBox(
                width: 32,
                height: 6,
              ),
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          decoration: const BoxDecoration(
            color: Color(0xFFFEFEFE),
          ),
          child: Stack(
            children: [
              Positioned(
                left: -80,
                top: 100,
                child: SizedBox(
                  width: 347,
                  height: 333,
                  child: Image.asset(
                    ImageConstant.popy,
                  ),
                ),
              ),
              Container(
                padding: const EdgeInsets.fromLTRB(0, 0, 0, 14),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      margin: const EdgeInsets.fromLTRB(20, 40, 20, 400),
                      child: Align(
                        alignment: Alignment.topLeft,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              margin: const EdgeInsets.fromLTRB(0, 0, 0, 4),
                              child: Align(
                                alignment: Alignment.topLeft,
                                child: Text(
                                  'Create Account',
                                  style: GoogleFonts.getFont(
                                    'EB Garamond',
                                    fontWeight: FontWeight.w600,
                                    fontSize: 32,
                                    height: 1.3,
                                    color: const Color(0xFF16611F),
                                  ),
                                ),
                              ),
                            ),
                            Text(
                              'Done! Register your account to save your data. ',
                              style: GoogleFonts.getFont(
                                'Roboto Condensed',
                                fontWeight: FontWeight.w500,
                                fontSize: 16,
                                height: 1.6,
                                color: const Color(0xFF1F2937),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () async {
                        User? user = await _authService.signInWithGoogle();
                        if (user != null) {
                          print('Successfully logged in: ${user.displayName}');
                          // Navigate to another screen or perform additional actions
                          Provider.of<UserProvider>(context, listen: false)
                              .addUser(user);
                          Navigator.of(context).pushNamedAndRemoveUntil(
                            AppRoutes.bottomNav,
                            (Route<dynamic> route) => false,
                          );
                        } else {
                          print('Login failed');
                        }
                      },
                      child: Container(
                        margin: const EdgeInsets.fromLTRB(20, 0, 20, 32),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(16),
                          color: const Color(0xFFEAF6E0),
                          border: const Border(
                            bottom: BorderSide(
                              color: Color(0xFFBAD8A0),
                              width: 3,
                            ),
                          ),
                        ),
                        child: Container(
                          padding: const EdgeInsets.fromLTRB(0, 19, 0, 16),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Icon(FontAwesomeIcons.google),
                              const SizedBox(
                                width: 12,
                              ),
                              Text(
                                'Create with Google',
                                style: GoogleFonts.getFont(
                                  'Roboto Condensed',
                                  fontWeight: FontWeight.w500,
                                  fontSize: 16,
                                  height: 1.6,
                                  color: const Color(0xFF0B3010),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Center(
                      child: Text(
                        'By continuing, you agree to Plant Pal',
                        style: GoogleFonts.getFont(
                          'Roboto Condensed',
                          fontWeight: FontWeight.w500,
                          fontSize: 16,
                          height: 1.3,
                          color: const Color(0xFF464646),
                        ),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Privacy Policy',
                          style: GoogleFonts.getFont(
                            'Roboto Condensed',
                            fontWeight: FontWeight.w400,
                            fontSize: 16,
                            decoration: TextDecoration.underline,
                            height: 1.3,
                            letterSpacing: 1.2,
                            color: const Color(0xFF464646),
                            decorationColor: const Color(0xFF464646),
                          ),
                        ),
                        const Text(" and "),
                        Text(
                          'Terms of Use',
                          style: GoogleFonts.getFont(
                            'Roboto Condensed',
                            fontWeight: FontWeight.w400,
                            fontSize: 16,
                            decoration: TextDecoration.underline,
                            height: 1.3,
                            letterSpacing: 1.2,
                            color: const Color(0xFF464646),
                            decorationColor: const Color(0xFF464646),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
