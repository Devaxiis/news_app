import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:news_app/src/presentation/ui/news_screen.dart';
import 'package:news_app/src/presentation/ui/wheather_screen.dart';

class MainHomeScreen extends StatefulWidget {
  const MainHomeScreen({super.key});

  @override
  State<MainHomeScreen> createState() => _MainHomeScreenState();
}

class _MainHomeScreenState extends State<MainHomeScreen> {
PageController controller = PageController();
int page =0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: PageView(
          controller: controller,
          children: const [
            NewsScreen(),
            WheaterScreen(),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        onTap: (value){
          page = value;
          controller.animateToPage(page, duration: const Duration(seconds: 2), curve: Curves.fastLinearToSlowEaseIn);
            setState(() {});
        },
        selectedLabelStyle: GoogleFonts.plusJakartaSans(
          fontSize: 14,
          fontWeight: FontWeight.w700
        ),
        unselectedLabelStyle: GoogleFonts.plusJakartaSans(
          fontSize: 13,
          fontWeight: FontWeight.w700
      ),
        currentIndex: page,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.ac_unit),label: "Discover"),
          BottomNavigationBarItem(icon: Icon(Icons.sunny_snowing),label: "Wheather"),
        ],
      ),
    );
  }
}
