import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class WheaterScreen extends StatefulWidget {
  const WheaterScreen({super.key});

  @override
  State<WheaterScreen> createState() => _WheaterScreenState();
}

class _WheaterScreenState extends State<WheaterScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        forceMaterialTransparency: true,
        title: Text("Wheather",style: GoogleFonts.plusJakartaSans(
            fontSize: 25,
            fontWeight: FontWeight.w600
        ),),
      ),
    );
  }
}
