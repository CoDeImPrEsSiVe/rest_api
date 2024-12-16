import 'package:flutter/material.dart';
import 'package:rest_api/consts/global_colors.dart';

import 'screens/home_page_screen.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Rest API',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
       scaffoldBackgroundColor: lightScaffoldColor,
       primaryColor: lightBackgroundcolor,
       appBarTheme: AppBarTheme(
        iconTheme: IconThemeData(
          color: lightIconscolor,
        ),
        centerTitle: true,
        titleTextStyle: TextStyle(
          fontWeight: FontWeight.bold,fontSize: 22,color: lightTextcolor,
        ),
        elevation: 0,
       ),
       textSelectionTheme: const TextSelectionThemeData(
        cursorColor: Colors.black,
        selectionColor: Colors.blue,
       ),
       cardColor: lightCardColor,
       brightness: Brightness.light,
       colorScheme: ThemeData().colorScheme.copyWith(
        secondary: lightIconscolor,
        brightness: Brightness.light,
       ),
      ),
      home: const Homepage(),
    );
  }
}

