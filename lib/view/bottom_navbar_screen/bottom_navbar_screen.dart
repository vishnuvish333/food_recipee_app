import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:food_recipee_app/utils/constants/color_constants.dart';
import 'package:food_recipee_app/view/bookmarks_sceen/bookmarkscreen.dart';
import 'package:food_recipee_app/view/create_recipee_screen/create_recipee_screen.dart';
import 'package:food_recipee_app/view/home_screen/home_screen.dart';
import 'package:food_recipee_app/view/profile_screen/profile_screen.dart';
import 'package:hugeicons/hugeicons.dart';

class BottomNavbarScreen extends StatefulWidget {
  BottomNavbarScreen({super.key});

  @override
  State<BottomNavbarScreen> createState() => _BottomNavbarScreenState();
}

class _BottomNavbarScreenState extends State<BottomNavbarScreen> {
  int selectedTab = 0;

  List screens = [
    HomeScreen(),
    Bookmarkscreen(),
    Container(
      color: Colors.yellow,
    ),
    ProfileScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
        backgroundColor: ColorConstants.primarycolor,
        onPressed: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => CreateRecipeeScreen(),
              ));
        },
        child: Icon(
          Icons.add,
          color: ColorConstants.mainwhite,
        ),
      ),
      body: (screens[selectedTab]),
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: selectedTab,
          onTap: (value) {
            selectedTab = value;
            setState(() {});
          },
          selectedItemColor: ColorConstants.primarycolor,
          type: BottomNavigationBarType.fixed,
          items: [
            BottomNavigationBarItem(
              icon: FaIcon(FontAwesomeIcons.house),
              activeIcon: Icon(Icons.home),
              label: "",
            ),
            BottomNavigationBarItem(
              icon: HugeIcon(
                icon: HugeIcons.strokeRoundedBookmark01,
                color: ColorConstants.mainblack,
              ),
              activeIcon: Icon(Icons.bookmark),
              label: "",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.notifications_none_outlined),
              activeIcon: Icon(Icons.notifications),
              label: "",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person_outlined),
              activeIcon: Icon(Icons.person),
              label: "",
            ),
          ]),
    );
  }
}
