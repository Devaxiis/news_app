import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:news_app/src/core/apis.dart';
import 'package:news_app/src/core/service_locator.dart';
import 'package:news_app/src/domain/model/location_model/lat_lang.dart';

class WheaterScreen extends StatefulWidget {
  const WheaterScreen({super.key});

  @override
  State<WheaterScreen> createState() => _WheaterScreenState();
}

class _WheaterScreenState extends State<WheaterScreen> {

  List<LatLang> data =[];

  @override
  void initState() {
        super.initState();
         getLocation();

  }
  void getLocation()async{
    final apik = Apis();
    data.addAll(await repository.fetchLatLang(apik));
    setState(() {
    });
  }

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
