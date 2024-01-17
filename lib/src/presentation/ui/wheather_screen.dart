import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:location/location.dart';
import 'package:news_app/main.dart';
import 'package:news_app/src/core/service_locator.dart';
import 'package:news_app/src/domain/model/wheather_model/main_model/main_model.dart';

import 'package:news_app/src/domain/model/wheather_model/name_model/whather_model.dart';
import 'package:news_app/src/domain/model/wheather_model/sys_model/sys_model.dart';
import 'package:news_app/src/presentation/bloc/wheather/wheather_bloc.dart';

class WheaterScreen extends StatefulWidget {
  const WheaterScreen({super.key});

  @override
  State<WheaterScreen> createState() => _WheaterScreenState();
}

class _WheaterScreenState extends State<WheaterScreen> {
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
    return Scaffold(
      appBar: AppBar(
        forceMaterialTransparency: true,
        title: Text(
          "Wheather",
          style: GoogleFonts.plusJakartaSans(
              color: Colors.deepPurpleAccent,
              fontSize: 25,
              fontWeight: FontWeight.w600),
        ),
      ),
      body: BlocListener<WheatherBloc, WheatherState>(
        listener: (context, state) {
          if (state is WheatherSuccess) {
            name = state.name;
            title = state.title;
            desc = state.desc;
          }
        },
        child: SafeArea(
          child: Stack(
            children: [
            SizedBox.expand(child: Image(image: const AssetImage("assets/back.jpg"),fit: BoxFit.cover,)),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 24),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    BlocBuilder<WheatherBloc, WheatherState>(
                      builder: (context, state) {
                        return TextField(
                          controller: controllerSearch,
                          decoration: InputDecoration(
                            hintText: "Search wheather",
                            suffixIcon: IconButton(
                                onPressed: () {
                                  context.read<WheatherBloc>().add(
                                      WheatherBlocEvent(
                                          title: controllerSearch.text.trim()));
                                  controllerSearch.text = "";
                                },
                                icon: const Icon(
                                  Icons.search,
                                  color: Colors.deepPurpleAccent,
                                )),
                            border: const UnderlineInputBorder(
                                borderSide:
                                    BorderSide(color: Colors.deepPurpleAccent)),
                            focusedBorder: const UnderlineInputBorder(
                                borderSide:
                                    BorderSide(color: Colors.deepPurpleAccent)),
                          ),
                        );
                      },
                    ),
                    const Spacer(),
                    BlocBuilder<WheatherBloc, WheatherState>(
                      builder: (context, state) {
                        return Container(
                          height: 200,
                          width: MediaQuery.sizeOf(context).width,
                          padding: const EdgeInsets.all(20),
                          decoration: BoxDecoration(

                            borderRadius:
                                const BorderRadius.all(Radius.circular(12)),
                            border: state is WheatherSuccess
                                ? Border.all(
                                    color: Colors.deepPurpleAccent, width: 1.5)
                                : Border.all(
                                    color: const Color(0x66818181), width: 1.5),
                          ),
                          child: BlocBuilder<WheatherBloc, WheatherState>(
                            builder: (context, state) {
                              if (state is WheatherSuccess) {
                                return Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      name,
                                      style: GoogleFonts.plusJakartaSans(
                                          color: Colors.deepPurpleAccent,
                                          fontSize: 18,
                                          fontWeight: FontWeight.w600),
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          "Wheather:",
                                          style: GoogleFonts.plusJakartaSans(
                                              color: Colors.deepPurpleAccent,
                                              fontSize: 14,
                                              fontWeight: FontWeight.w600),
                                        ),
                                        Text(title,
                                            style: GoogleFonts.plusJakartaSans(
                                                color: const Color(0xff14181e),
                                                fontSize: 14,
                                                fontWeight: FontWeight.w600)),
                                      ],
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          "Description:",
                                          style: GoogleFonts.plusJakartaSans(
                                              color: Colors.deepPurpleAccent,
                                              fontSize: 14,
                                              fontWeight: FontWeight.w600),
                                        ),
                                        Text(
                                          desc,
                                          style: GoogleFonts.plusJakartaSans(
                                              color: const Color(0xff14181e),
                                              fontSize: 14,
                                              fontWeight: FontWeight.w600),
                                        ),
                                      ],
                                    ),
                                  ],
                                );
                              } else {
                                if (name == "") {
                                  return const Center(
                                      child: SizedBox(
                                          height: 40,
                                          width: 40,
                                          child: CircularProgressIndicator()));
                                } else {
                                  return Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        name,
                                        style: GoogleFonts.plusJakartaSans(
                                            color: Colors.deepPurpleAccent,
                                            fontSize: 18,
                                            fontWeight: FontWeight.w600),
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text(
                                            "Wheather:",
                                            style: GoogleFonts.plusJakartaSans(
                                                color: Colors.deepPurpleAccent,
                                                fontSize: 14,
                                                fontWeight: FontWeight.w600),
                                          ),
                                          Text(listData[0].main),
                                        ],
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text(
                                            "Description:",
                                            style: GoogleFonts.plusJakartaSans(
                                                color: Colors.deepPurpleAccent,
                                                fontSize: 14,
                                                fontWeight: FontWeight.w600),
                                          ),
                                          Text(listData[0].description),
                                        ],
                                      ),
                                    ],
                                  );
                                }
                              }
                            },
                          ),
                        );
                      },
                    ),
                    const Spacer(
                      flex: 2,
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
}
