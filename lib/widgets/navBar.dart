import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:expense_web_app/utils/colors.dart';
import 'package:expense_web_app/utils/constants.dart';

class NavBar extends StatefulWidget {
  const NavBar({Key? key}) : super(key: key);

  @override
  _NavBarState createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout.builder(
      mobile: mobileNavBar,
      desktop: deskTopNavBar,
    );
  }
}

Widget mobileNavBar(BuildContext context) {
  return Container(
    margin: EdgeInsets.symmetric(horizontal: 20),
    height: 70,
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [Icon(Icons.menu), navLogo()],
    ),
  );
}

Widget deskTopNavBar(BuildContext context) {
  return Container(
    margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
    height: 70,
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        navLogo(),
        Row(
          children: [
            navButton('Features'),
            navButton('About Us'),
            navButton('Pricing'),
            navButton('Feedback')
          ],
        ),
        Container(
          height: 45,
          child: OutlinedButton(
            onPressed: () {},
            child: Text(
              'Request a Demo',
              style: TextStyle(color: AppColors.primary),
            ),
          ),
        )
      ],
    ),
  );
}

Widget navButton(String text) {
  return Container(
      margin: EdgeInsets.symmetric(horizontal: 4),
      child: TextButton(
          onPressed: () {},
          child:
              Text(text, style: TextStyle(color: Colors.black, fontSize: 18))));
}

Widget navLogo() {
  return Container(
    width: 110,
    decoration: BoxDecoration(
        image: DecorationImage(image: AssetImage(logo), fit: BoxFit.contain)),
  );
}
