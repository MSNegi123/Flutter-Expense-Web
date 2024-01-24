import 'package:flutter/material.dart';
import 'package:expense_web_app/utils/constants.dart';

import '/widgets/navBar.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    w = MediaQuery.of(context).size.width;
    h = MediaQuery.of(context).size.height;
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            child: Column(
              children: [
                NavBar(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
