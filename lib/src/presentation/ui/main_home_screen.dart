import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:news_app/src/core/apis.dart';
import 'package:news_app/src/core/service_locator.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:news_app/src/domain/model/news_model/news_model.dart';
import 'package:news_app/src/presentation/ui/news_screen.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:url_launcher/url_launcher_string.dart';

class MainHomeScreen extends StatefulWidget {
  const MainHomeScreen({super.key});

  @override
  State<MainHomeScreen> createState() => _MainHomeScreenState();
}

class _MainHomeScreenState extends State<MainHomeScreen> {



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: PageView(
          children: const [
            NewsScreen(),
            NewsScreen(),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.library_books_rounded),label: ""),
          BottomNavigationBarItem(icon: Icon(Icons.sunny_snowing),label: ""),
        ],
      ),
    );
  }
}
