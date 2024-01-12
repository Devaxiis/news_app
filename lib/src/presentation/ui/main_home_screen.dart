import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:news_app/src/core/apis.dart';
import 'package:news_app/src/core/service_locator.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:news_app/src/domain/model/news_model/news_model.dart';
import 'package:news_app/src/presentation/ui/news_screen.dart';
import 'package:news_app/src/presentation/ui/wheather_screen.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:url_launcher/url_launcher_string.dart';

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
          controller.animateToPage(page, duration: Duration(seconds: 2), curve: Curves.fastLinearToSlowEaseIn);
            setState(() {});
        },
        currentIndex: page,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.ac_unit),label: ""),
          BottomNavigationBarItem(icon: Icon(Icons.sunny_snowing),label: ""),
        ],
      ),
    );
  }
}
