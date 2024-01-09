import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:portfolio/config/app_theme.dart';
import 'package:portfolio/module/home/bloc/home_bloc.dart';
import 'package:portfolio/module/home/home_screen.dart';
import 'package:portfolio/utils/app_strings.dart';

class PortfolioApp extends StatelessWidget {
  const PortfolioApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.system,
      theme: AppTheme.lightTheme(),
      darkTheme: AppTheme.darkTheme(),
      title: AppStrings.developerName,
      home: BlocProvider<HomeBloc>(
        create: (context) => HomeBloc(),
        child: const HomeScreen(),
      ),
    );
  }
}