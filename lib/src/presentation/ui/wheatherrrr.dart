

import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:news_app/src/core/service_locator.dart';
import 'package:news_app/src/domain/model/wheather_model/name_model/whather_model.dart';

class WheatherIkki extends StatefulWidget {
  const WheatherIkki({super.key});

  @override
  State<WheatherIkki> createState() => _WheatherIkkiState();
}

class _WheatherIkkiState extends State<WheatherIkki> {

  TextEditingController controllerSearch = TextEditingController();
  List<WhatherModel> listData = [];
  String description = '';
  String titleNul = '';
  // List<SysModel> country = [];
  String name = "";
  String title = "";
  String desc = "";

  @override
  void initState() {
    super.initState();
    getData();
  }

  Future<void> getData() async {
    final data = await repository.getLocation();
    print("GetLoc::== $data");
    print("GetLoc::== ${data[0]}");
    print("GetLoc::== ${data[1]}");
    Map<String, String> query = {
      "lat": "${data[0]}",
      "lon": "${data[1]}",
      "appid": "b3a4e5ad58628b1a96b83f1add25bf16",
    };
    name = await repository.fetchCountry(query);
    listData.addAll(await repository.fetchWheather(query));
    setState(() {});
  }



  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: SizedBox(
        height: double.infinity,
        width: double.infinity,
        child: DecoratedBox(
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/images/back.jpg"),
              fit: BoxFit.cover,
            ),
          ),
          child: Padding(
            padding: EdgeInsets.only(top: size.height * 0.040),
            child: Stack(
              children: [
                Align(
                  alignment:  Alignment(0, -0.4),
                  child: Text(
                    listData[0].main ?? "",
                    style: Theme.of(context).textTheme.displayMedium!.copyWith(
                      color: Colors.white,
                      fontWeight: FontWeight.w500,
                      fontFamily: "Poppins",
                    ),
                  ),
                ),
                Center(
                  child: Text(
                    "12 ° C",
                    style: Theme.of(context).textTheme.displayLarge!.copyWith(
                      color: Colors.white,
                      fontWeight: FontWeight.w400,
                      fontFamily: "Poppins",
                    ),
                  ),
                ),

                Align(
                  alignment: const Alignment(0, -0.3),
                  child: Text(
                    "${DateTime.now()}",
                    style: Theme.of(context).textTheme.headlineSmall!.copyWith(
                      color: Colors.white,
                      fontWeight: FontWeight.w600,
                      fontFamily: "AbhayaLibre",
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
