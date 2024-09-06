import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ComingSoonPage extends StatelessWidget {
  String? pagetitle;
  ComingSoonPage({super.key, this.pagetitle});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFEFEFE),
      // appBar: AppBar(
      //   title: const Text('Coming Soon'),
      // ),
      body: Center(
        child: Text(
          'Coming Soon!\n$pagetitle',
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}
