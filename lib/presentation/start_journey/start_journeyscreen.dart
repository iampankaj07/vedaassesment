import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:veda_assesment/core/utils/image_constant.dart';
import 'package:veda_assesment/routes/app_routes.dart';
import 'package:veda_assesment/theme/theme_helper.dart';

class StartJourneyscreen extends StatefulWidget {
  const StartJourneyscreen({super.key});

  @override
  State<StartJourneyscreen> createState() => _StartJourneyscreenState();
}

class _StartJourneyscreenState extends State<StartJourneyscreen> {
  bool isChecked1 = false;
  bool isChecked2 = false;
  bool isChecked3 = false;
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
      body: Center(
        child: Column(
          children: [
            Container(
              margin: const EdgeInsets.fromLTRB(20, 40, 20, 32),
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
                          'Top Priority',
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
                      'Choose the feature that is most essential for you.',
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
            Container(
              margin: const EdgeInsets.fromLTRB(20, 0, 22, 40),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CheckVlue(
                      img: ImageConstant.sj2,
                      title: "Plant Care",
                      checkvalue: isChecked1),
                  CheckVlue(
                      img: ImageConstant.sj1,
                      title: "Plant lover Community",
                      checkvalue: isChecked2),
                  CheckVlue(
                      img: ImageConstant.sj3,
                      title: "Plant Marketplace",
                      checkvalue: isChecked3),
                ],
              ),
            ),
            const Spacer(),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Center(
                child: SizedBox(
                  width: double.infinity,
                  height: 40,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.pushNamed(context, AppRoutes.signUpScreen);
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
            ),
          ],
        ),
      ),
    );
  }
}

// ignore: must_be_immutable
class CheckVlue extends StatefulWidget {
  String img;
  String title;
  bool checkvalue;
  CheckVlue(
      {super.key,
      required this.img,
      required this.title,
      required this.checkvalue});

  @override
  State<CheckVlue> createState() => CcheckVlueState();
}

class CcheckVlueState extends State<CheckVlue> {
  // bool checkvalue = false;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.fromLTRB(0, 0, 0, 16),
      decoration: BoxDecoration(
        border: Border.all(color: const Color(0xFFF9FAFB)),
        borderRadius: BorderRadius.circular(4),
        color: const Color(0xFFFEFEFE),
        boxShadow: const [
          BoxShadow(
            color: Color(0x0D000000),
            offset: Offset(0, 1),
            blurRadius: 1,
          ),
        ],
      ),
      child: Container(
        padding: const EdgeInsets.fromLTRB(23, 15, 25.3, 15),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              width: 238,
              child: Row(
                // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    margin: const EdgeInsets.fromLTRB(0, 2.5, 0, 2.5),
                    child: Container(
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage(widget.img),
                        ),
                      ),
                      child: const SizedBox(
                        width: 24,
                        height: 24,
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 24,
                  ),
                  Text(
                    widget.title,
                    style: GoogleFonts.getFont(
                      'Roboto Condensed',
                      fontWeight: FontWeight.w500,
                      fontSize: 18,
                      height: 1.6,
                      color: const Color(0xFF1F2937),
                    ),
                  ),
                ],
              ),
            ),
            InkWell(
              onTap: () {
                setState(() {
                  widget.checkvalue =
                      !widget.checkvalue; // Toggle the checkbox value
                });
              },
              child: Container(
                decoration: BoxDecoration(
                  shape: BoxShape.circle, // Circular shape
                  border: Border.all(
                      color: theme.primaryColor,
                      width: 2), // Border color and width
                  color: widget.checkvalue
                      ? theme.primaryColor
                      : Colors.white, // Background color
                ),
                child: Padding(
                  padding:
                      const EdgeInsets.all(2.0), // Padding inside the circle
                  child: widget.checkvalue
                      ? const Icon(
                          Icons.check, // Checkmark icon
                          size: 20.0,
                          color: Colors.white,
                        )
                      : const Icon(
                          Icons.check_box_outline_blank,
                          size: 20.0,
                          color: Colors.transparent, // No color when unchecked
                        ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
