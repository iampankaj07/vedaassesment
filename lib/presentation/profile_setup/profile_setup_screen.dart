import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:veda_assesment/routes/app_routes.dart';

class ProfileSetupScreen extends StatefulWidget {
  const ProfileSetupScreen({super.key});

  @override
  State<ProfileSetupScreen> createState() => _ProfileSetupScreenState();
}

class _ProfileSetupScreenState extends State<ProfileSetupScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: IconButton(
            icon: const Icon(Icons.arrow_back), // Custom back icon
            onPressed: () {
              Navigator.pop(context); // Navigate back to the previous screen
            },
          ),
          automaticallyImplyLeading: true,
          title: Container(
            child: Row(
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
                      color: const Color(0xFFD2F5D6),
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
                    color: const Color(0xFFD2F5D6),
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
        ),
        body: Container(
          decoration: const BoxDecoration(
            color: Color(0xFFFEFEFE),
          ),
          child: Container(
            padding: const EdgeInsets.fromLTRB(20, 40, 20, 14),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Align(
                  alignment: Alignment.topLeft,
                  child: Container(
                    child: Text(
                      'Full Name',
                      style: GoogleFonts.getFont(
                        'EB Garamond',
                        fontWeight: FontWeight.w600,
                        fontSize: 32,
                        height: 1.3,
                        color: const Color(0xFF1C7927),
                      ),
                    ),
                  ),
                ),
                TextFormField(),
                const Spacer(),
                Center(
                  child: SizedBox(
                    width: double.infinity,
                    height: 40,
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.pushNamed(
                            context, AppRoutes.startJourneyScreen);
                      },
                      style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(
                              12), // Adjust the value for more or less rounded corners
                        ),
                        padding: const EdgeInsets.symmetric(
                            horizontal: 24, vertical: 12), // Button padding
                      ),
                      child: Text(
                        'Next',
                        style: GoogleFonts.getFont(
                          'Roboto Condensed',
                          fontWeight: FontWeight.w500,
                          fontSize: 18,
                          height: 1.6,
                          color: const Color(0xFFFFFFFF),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
