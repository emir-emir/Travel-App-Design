import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:travel_app/constant/navigaion_destination.dart';
import 'package:travel_app/screens/guide/guide_page.dart';
import 'package:travel_app/screens/home/homePage.dart';
import 'package:travel_app/screens/search/search_page.dart';
import 'package:travel_app/screens/trip_plan/trip_plan_page.dart';

/// Created by Emirşah Erden
/// on 27 Ocak 2022
class BottomNavigationBar extends StatelessWidget {
  var index = 0.obs;
  var screens = [HomePage(), SearchPage(), TripPlan(), GuidePage()].obs;

  @override
  Widget build(BuildContext context) {
    return Obx(() => Scaffold(
          body: screens[index.value],
          bottomNavigationBar: NavigationBarTheme(
            data: buildNavigationBarThemeData,
            child: Padding(
              padding: const EdgeInsets.only(bottom: 10, left: 10, right: 10),
              child: ClipRRect(borderRadius: BorderRadius.all(Radius.circular(50)), child: buildNavigationBar),
            ),
          ),
        ));
  }

  NavigationBarThemeData get buildNavigationBarThemeData {
    return NavigationBarThemeData(
        indicatorColor: Color(0xffff4760),
        labelTextStyle: MaterialStateProperty.all(TextStyle(
          fontSize: 54,
        )));
  }

  NavigationBar get buildNavigationBar {
    return NavigationBar(
      height: 60,
      labelBehavior: NavigationDestinationLabelBehavior.alwaysHide,
      // ıconların altındaki yazıyı gizllyor
      // animationDuration: Duration(seconds: 1),
      backgroundColor: Colors.white,
      selectedIndex: index.value,
      onDestinationSelected: (index) => this.index.value = index,
      destinations: navigationDestination,
    );
  }
}
