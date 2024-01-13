import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:news_app/src/presentation/bloc/wheather/wheather_bloc.dart';
import 'package:news_app/src/presentation/ui/main_home_screen.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});


  @override
  Widget build(BuildContext context) {
    return BlocProvider<WheatherBloc>(
      create: (context) => WheatherBloc(),
      child: MaterialApp(
        theme: ThemeData(useMaterial3: true,),
        debugShowCheckedModeBanner: false,
        home: const MainHomeScreen(),
      ),
    );
  }
}