import 'package:flutter/material.dart';
import 'package:veda_assesment/presentation/coming_soon.dart';
import 'package:veda_assesment/presentation/home_screen/home_screen.dart';

class BottomNav extends StatefulWidget {
  const BottomNav({super.key});

  @override
  _BottomNavState createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNav> {
  @override
  void initState() {
    super.initState();
    // Provider.of<DataProvider>(context, listen: false).fetchData();
  }

  bool obscureAmount = false;
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  final List<Widget> _pages = <Widget>[
    const HomeScreen(),
    ComingSoonPage(
      pagetitle: "Community Page",
    ),
    ComingSoonPage(
      pagetitle: "Nursery Page",
    ),
    ComingSoonPage(
      pagetitle: "Profile Page",
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex, // Current selected index
        onTap: (index) {
          setState(() {
            _selectedIndex = index; // Update the selected index
          });
        },
        type: BottomNavigationBarType.fixed, // Prevents shifting effect
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.local_florist),
            label: 'My Plants',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.people),
            label: 'Community',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.store),
            label: 'Nursery',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
        ],
        selectedItemColor:
            const Color(0xff0B3010), // Color for the selected item
        unselectedItemColor: Colors.grey, // Color for unselected items
        showUnselectedLabels: true, // Display labels for unselected items
      ),
    );
  }
}
