// ignore_for_file: use_key_in_widget_constructors, unused_import, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_web/pages/price_page.dart';
import 'package:google_fonts/google_fonts.dart';

class LandingPage extends StatefulWidget {
  @override
  State<LandingPage> createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    Widget navItem({required String title, required int index}) {
      return InkWell(
        onTap: () {
          setState(() {
            selectedIndex = index;
          });
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => PricePage()));
        },
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              title,
              style: GoogleFonts.poppins(
                  fontSize: 18,
                  color: Color(0xFF1D1E3C),
                  fontWeight: index == selectedIndex
                      ? FontWeight.w500
                      : FontWeight.w300),
            ),
            Container(
              width: 50,
              height: 2,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: index == selectedIndex
                    ? Color(0xFFFE998D)
                    : Colors.transparent,
              ),
            )
          ],
        ),
      );
    }

    return Scaffold(
      body: Stack(
        children: [
          Image.asset(
            'images/background.png',
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            fit: BoxFit.fill,
          ),
          Column(
            children: [
              SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    width: 100,
                  ),
                  Image.asset(
                    'images/logo.png',
                    width: 72,
                    fit: BoxFit.fill,
                  ),
                  navItem(title: 'Guides', index: 0),
                  navItem(title: 'Price', index: 1),
                  navItem(title: 'Team', index: 2),
                  navItem(
                    title: 'Stories',
                    index: 3,
                  ),
                  Image.asset(
                    'images/btn.png',
                    fit: BoxFit.fill,
                    width: 163,
                  ),
                  SizedBox(
                    width: 100,
                  )
                ],
              ),
              SizedBox(
                height: 76,
              ),
              Image.asset(
                'images/illu.png',
                width: 550,
                fit: BoxFit.fill,
              )
            ],
          ),
        ],
      ),
    );
  }
}
