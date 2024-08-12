

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'model/coffe.dart';
import 'pages/dashboard_page.dart';
import 'pages/details_page.dart';
import 'pages/onbording_page.dart';

void main() {
  runApp( MyApp());
}

class MyApp extends StatelessWidget {
     MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: const Color(0xffF9F9F9),
        textTheme: GoogleFonts.soraTextTheme(),
      ),
      home: const OnboardPage(),
      routes: {
        '/dashboard': (context) => const DashboardPage(),
        '/detail': (context) {
          Coffee coffee = ModalRoute.of(context)!.settings.arguments as Coffee;
          return DetailPage(coffee: coffee);
        },
      },
    );
  }
}