import 'package:expense_web_app/pages/home.dart';
import 'package:expense_web_app/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Expense',
      theme: ThemeData(
       textTheme: GoogleFonts.hindSiliguriTextTheme(),
        primaryColor: AppColors.primary,
        brightness: Brightness.light,
      ),
      home: Home(),
    );
  }
}