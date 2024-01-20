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
  int temp = 0;
  int temp2 = 0;
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

    Map<String, String> query = {
      "lat": "${data[0]}",
      "lon": "${data[1]}",
      "appid": "b3a4e5ad58628b1a96b83f1add25bf16",
    };
    name = await repository.fetchCountry(query);
    temp = await repository.fetchTemp(query);
    listData.addAll(await repository.fetchWheather(query));
    setState(() {});
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        forceMaterialTransparency: true,
        backgroundColor: Colors.transparent,
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
            temp = state.temp ;
          }
        },
        child: SafeArea(
          child: Stack(
            children: [
            const SizedBox.expand(child: Image(image: AssetImage("assets/images/back.jpg"),fit: BoxFit.cover,)),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 24),
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      BlocBuilder<WheatherBloc, WheatherState>(
                        builder: (context, state) {
                          return TextField(
                            textInputAction: TextInputAction.send,
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
                       const SizedBox(height: 120),
                      BlocBuilder<WheatherBloc, WheatherState>(
                        builder: (context, state) {
                          return BlocBuilder<WheatherBloc, WheatherState>(
                            builder: (context, state) {
                              if (state is WheatherSuccess) {
                                return Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [

                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        Expanded(
                                          child: Text(
                                            "$temp ° C",
                                            style: Theme.of(context).textTheme.displayLarge!.copyWith(
                                              color: Colors.white,
                                              fontWeight: FontWeight.w600,
                                              fontFamily: "AbhayaLibre",
                                            ),
                                          ),
                                        ),
                                        Expanded(
                                          child: Text(
                                            name,
                                            style: Theme.of(context).textTheme.headlineMedium!.copyWith(
                                              color: Colors.deepPurpleAccent,
                                              fontWeight: FontWeight.w600,
                                              fontFamily: "AbhayaLibre",
                                            ),
                                            overflow: TextOverflow.clip,
                                            textAlign: TextAlign.right,
                                          ),
                                        ),
                                      ],
                                    ),
                                    const SizedBox(height: 200,),
                                    Text(
                                      listData[0].main,
                                      style: Theme.of(context).textTheme.headlineSmall!.copyWith(
                                        color: Colors.white,
                                        fontWeight: FontWeight.w600,
                                        fontFamily: "AbhayaLibre",
                                      ),
                                    ),
                                    const SizedBox(height: 60),
                                    Text(
                                      "0${DateTime.now().month}/${DateTime.now().day}/${DateTime.now().year}",
                                      style: Theme.of(context).textTheme.headlineSmall!.copyWith(
                                        color: Colors.white,
                                        fontWeight: FontWeight.w600,
                                        fontFamily: "AbhayaLibre",
                                      ),
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
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: [
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: [
                                          Expanded(
                                            flex: 2,
                                            child: Text(
                                              "$temp ° C",
                                              style: Theme.of(context).textTheme.displayLarge!.copyWith(
                                                color: Colors.white,
                                                fontWeight: FontWeight.w600,
                                                fontFamily: "AbhayaLibre",
                                              ),
                                            ),
                                          ),
                                          Expanded(
                                            child: Text(
                                              name,
                                              style: Theme.of(context).textTheme.headlineSmall!.copyWith(
                                                color: Colors.deepPurpleAccent,
                                                fontWeight: FontWeight.w600,
                                                fontFamily: "AbhayaLibre",
                                              ),
                                              overflow: TextOverflow.clip,
                                              textAlign: TextAlign.right,
                                            ),
                                          ),
                                        ],
                                      ),
                                      const SizedBox(
                                        height: 100,
                                      ),
                                      Text(
                                        listData[0].main,
                                        style: Theme.of(context).textTheme.headlineSmall!.copyWith(
                                          color: Colors.white,
                                          fontWeight: FontWeight.w600,
                                          fontFamily: "AbhayaLibre",
                                        ),
                                      ),
                                      const SizedBox(height: 60,),
                                      Text(
                                        "0${DateTime.now().month}/${DateTime.now().day}/${DateTime.now().year}",
                                        style: Theme.of(context).textTheme.headlineSmall!.copyWith(
                                          color: Colors.white,
                                          fontWeight: FontWeight.w600,
                                          fontFamily: "AbhayaLibre",
                                        ),
                                      ),
                                    ],
                                  );
                                }
                              }
                            },
                          );
                        },
                      ),

                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
