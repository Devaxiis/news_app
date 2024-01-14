import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:news_app/src/domain/repository/news_repository.dart';
import 'package:news_app/src/presentation/bloc/wheather/wheather_bloc.dart';
import 'package:news_app/src/presentation/ui/main_home_screen.dart';

class MyApp extends StatelessWidget {
  final GetIt locator;
  const MyApp({super.key, required this.locator});


  @override
  Widget build(BuildContext context) {
    return BlocProvider<WheatherBloc>(
      create: (context) => WheatherBloc(locator<NewRepositoryImplement>()),
      child: MaterialApp(
        theme: ThemeData(useMaterial3: true,),
        debugShowCheckedModeBanner: false,
        home: const MainHomeScreen(),
      ),
    );
  }
}