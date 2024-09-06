import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:veda_assesment/core/utils/image_constant.dart';
import 'package:veda_assesment/presentation/home_screen/auth_provider.dart';
import 'package:veda_assesment/presentation/home_screen/provider.dart';
import 'package:veda_assesment/routes/app_routes.dart';
import 'package:veda_assesment/theme/theme_helper.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          color: Color(0xFFFEFEFE),
        ),
        child: Stack(
          children: [
            SizedBox(
              width: double.infinity,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    margin: const EdgeInsets.fromLTRB(0, 0, 0, 90),
                    child: Container(
                      decoration: const BoxDecoration(
                        color: Color(0xFF1C7927),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(top: 15.0),
                        child: Stack(
                          children: [
                            Positioned(
                              right: -14.7,
                              top: -17.2,
                              child: Opacity(
                                opacity: 0.08,
                                child: SizedBox(
                                  width: 347,
                                  height: 333,
                                  child: Image.asset(
                                    ImageConstant.popy,
                                  ),
                                ),
                              ),
                            ),
                            Container(
                              padding:
                                  const EdgeInsets.fromLTRB(20, 35, 14.7, 84),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    margin: const EdgeInsets.fromLTRB(
                                        0, 0, 5.3, 24),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Container(
                                          margin: const EdgeInsets.fromLTRB(
                                              0, 1, 0, 1),
                                          child: Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Container(
                                                margin:
                                                    const EdgeInsets.fromLTRB(
                                                        0, 0, 0, 5),
                                                child: Align(
                                                  alignment: Alignment.topLeft,
                                                  child: Text(
                                                    'Good Morning,',
                                                    style: GoogleFonts.getFont(
                                                      'Roboto Condensed',
                                                      fontWeight:
                                                          FontWeight.w500,
                                                      fontSize: 14,
                                                      color: const Color(
                                                          0xFFC0E9C4),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                              Text(
                                                Provider.of<UserProvider>(
                                                        context,
                                                        listen: false)
                                                    .user!
                                                    .displayName!,
                                                style: GoogleFonts.getFont(
                                                  'EB Garamond',
                                                  fontWeight: FontWeight.w700,
                                                  fontSize: 24,
                                                  color:
                                                      const Color(0xFFF9FAFB),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        const Stack(
                                          children: [
                                            CircleAvatar(
                                              radius: 32,
                                              backgroundColor:
                                                  Color(0xFF40924A),
                                              child: Icon(
                                                Icons.notifications_none,
                                                size: 40,
                                                color: Colors.white,
                                              ),
                                            ),
                                            Positioned(
                                                top: 2,
                                                right: 3,
                                                child: CircleAvatar(
                                                  radius: 9,
                                                  backgroundColor: Colors.white,
                                                  child: Text(
                                                    "3",
                                                    style: TextStyle(
                                                        color:
                                                            Color(0xFF40924A),
                                                        fontWeight:
                                                            FontWeight.bold,
                                                        fontSize: 12),
                                                  ),
                                                )),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                  Align(
                                    alignment: Alignment.topLeft,
                                    child: Text(
                                      'Today’s facts',
                                      style: GoogleFonts.getFont(
                                        'Roboto Condensed',
                                        fontWeight: FontWeight.w500,
                                        fontSize: 16,
                                        height: 1.6,
                                        color: const Color(0xFFFFFFFF),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.fromLTRB(20, 10, 20, 0),
                    child: Align(
                      alignment: Alignment.topLeft,
                      child: Text(
                        'My plants',
                        style: GoogleFonts.getFont(
                          'Roboto Condensed',
                          fontWeight: FontWeight.w500,
                          fontSize: 18,
                          height: 1.6,
                          color: const Color(0xFF0B3010),
                        ),
                      ),
                    ),
                  ),
                  Consumer<PlantProvider>(
                    builder: (context, plantProvider, child) {
                      if (plantProvider.plants.isEmpty) {
                        return Container(
                          margin: const EdgeInsets.fromLTRB(0, 0, 0, 10),
                          child: Align(
                            alignment: Alignment.topCenter,
                            child: SizedBox(
                              width: 294,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Container(
                                    margin: const EdgeInsets.fromLTRB(
                                        0, 0, 0.8, 12),
                                    child: SizedBox(
                                      width: 151.2,
                                      height: 160,
                                      child: Image.asset(
                                        ImageConstant.plant2,
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 294,
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        Container(
                                          margin: const EdgeInsets.fromLTRB(
                                              0, 0, 0, 24),
                                          child: Text(
                                            'No plants added yet, continue adding to see them here',
                                            textAlign: TextAlign.center,
                                            style: GoogleFonts.getFont(
                                              'EB Garamond',
                                              fontWeight: FontWeight.w500,
                                              fontSize: 18,
                                              height: 1.5,
                                              color: const Color(0xFF0B3010),
                                            ),
                                          ),
                                        ),
                                        SizedBox(
                                          width: 294,
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Container(
                                                margin:
                                                    const EdgeInsets.fromLTRB(
                                                        0, 0, 16, 0),
                                                decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(12),
                                                  color:
                                                      const Color(0xFFEAF6E0),
                                                  border: const Border(
                                                    bottom: BorderSide(
                                                      color: Color(0xFFBAD8A0),
                                                      width: 3,
                                                    ),
                                                  ),
                                                ),
                                                child: SizedBox(
                                                  width: 139,
                                                  height: 45,
                                                  child: Center(
                                                    child: Text(
                                                      'Visit Nursery',
                                                      style:
                                                          GoogleFonts.getFont(
                                                        'Roboto Condensed',
                                                        fontWeight:
                                                            FontWeight.w500,
                                                        fontSize: 16,
                                                        height: 1.6,
                                                        color: const Color(
                                                            0xFF16611F),
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                              InkWell(
                                                onTap: () {
                                                  Navigator.of(context)
                                                      .pushNamed(
                                                    AppRoutes.addplants,
                                                  );
                                                },
                                                child: Container(
                                                  decoration: BoxDecoration(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            12),
                                                    color:
                                                        const Color(0xFFEAF6E0),
                                                    border: const Border(
                                                      bottom: BorderSide(
                                                        color:
                                                            Color(0xFFBAD8A0),
                                                        width: 3,
                                                      ),
                                                    ),
                                                  ),
                                                  child: SizedBox(
                                                    width: 139,
                                                    height: 45,
                                                    child: Center(
                                                      child: Text(
                                                        'Add Plant',
                                                        style:
                                                            GoogleFonts.getFont(
                                                          'Roboto Condensed',
                                                          fontWeight:
                                                              FontWeight.w500,
                                                          fontSize: 16,
                                                          height: 1.6,
                                                          color: const Color(
                                                              0xFF16611F),
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        );
                      }

                      return ListView.builder(
                        shrinkWrap: true,
                        physics: NeverScrollableScrollPhysics(),
                        itemCount: plantProvider.plants.length,
                        itemBuilder: (context, index) {
                          final plant = plantProvider.plants[index];

                          return Card(
                            color: Color(0xFFBAD8A0),
                            child: ListTile(
                              leading: Icon(Icons.local_florist),
                              title: Text(plant.name),
                              subtitle: Text(plant.description),
                            ),
                          );
                        },
                      );
                    },
                  ),
                ],
              ),
            ),
            Positioned(
              left: 21,
              right: 0,
              top: 160,
              child: SizedBox(
                height: 162,
                child: ListView(
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  children: [
                    CardPlant(),
                    const SizedBox(
                      width: 10,
                    ),
                    CardPlant(),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),

      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context).pushNamed(
            AppRoutes.addplants,
          );
        },
        backgroundColor: theme.primaryColor,
        shape: const CircleBorder(),
        child: const Icon(
          Icons.add,
          color: Colors.white,
        ), // Background color
      ),
      floatingActionButtonLocation:
          FloatingActionButtonLocation.endFloat, // Position of the FAB
    );
  }

  // ignore: non_constant_identifier_names
  Container CardPlant() {
    return Container(
      width: 345,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        color: const Color(0xFFFFFFFF),
        boxShadow: const [
          BoxShadow(
            color: Color(0x14000000),
            offset: Offset(0, 4),
            blurRadius: 9,
          ),
        ],
      ),
      child: Card(
        child: SizedBox(
          width: double.infinity,
          child: Container(
            padding: const EdgeInsets.fromLTRB(8, 16, 28.2, 5),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  margin: const EdgeInsets.fromLTRB(0, 0, 16, 0),
                  child: SizedBox(
                    width: 114,
                    height: 107,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(9),
                      child: SizedBox(
                        width: 114,
                        height: 107,
                        child: Image.asset(ImageConstant.plant1),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    margin: const EdgeInsets.fromLTRB(0, 0, 0, 1),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          margin: const EdgeInsets.fromLTRB(0, 0, 0, 13.5),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                margin: const EdgeInsets.fromLTRB(0, 0, 0, 4.5),
                                child: Align(
                                  alignment: Alignment.topLeft,
                                  child: Text(
                                    'Aloe Vera',
                                    style: GoogleFonts.getFont(
                                      'Roboto Condensed',
                                      fontWeight: FontWeight.w700,
                                      fontSize: 16,
                                      height: 1.6,
                                      color: const Color(0xFF1F2937),
                                    ),
                                  ),
                                ),
                              ),
                              Opacity(
                                opacity: 0.68,
                                child: Text(
                                  'A plant with beautiful petal but protected with throne. Smell amazing with health benefit.....',
                                  style: GoogleFonts.getFont(
                                    'Roboto Condensed',
                                    fontWeight: FontWeight.w400,
                                    fontSize: 14,
                                    color: const Color(0xFF1F2937),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Align(
                          alignment: Alignment.topLeft,
                          child: SizedBox(
                            width: 112.2,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Text(
                                      'Continue Reading',
                                      style: GoogleFonts.getFont(
                                        'Roboto Condensed',
                                        fontWeight: FontWeight.w700,
                                        fontSize: 12,
                                        color: const Color(0xFF1C7927),
                                      ),
                                    ),
                                    const SizedBox(
                                      width: 8,
                                    ),
                                    Icon(
                                      Icons.arrow_forward_ios,
                                      size: 10,
                                      color: theme.primaryColor,
                                    )
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
