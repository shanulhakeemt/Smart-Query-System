import 'package:flutter/material.dart';
import 'package:smart_query_system/core/theme/pallete.dart';
import 'package:smart_query_system/features/home/view/pages/home_page.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
          scaffoldBackgroundColor: Pallete.background,
          textTheme: GoogleFonts.interTextTheme(ThemeData.dark().textTheme)),
      home: const HomePage(),
    );
  }
}
