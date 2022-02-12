import 'package:flutter/material.dart';
import 'package:travel_app/constant/image.dart';

/// Created by Emirşah Erden
/// on 03 Şubat 2022
List<NavigationDestination> get navigationDestination {
  return [
    NavigationDestination(
      icon: Image.asset(assetsImageHome1),
      selectedIcon: Image.asset(assetsImageHome2),
      label: '',
    ),
    NavigationDestination(
      icon: Image.asset(assetsImageSearch1),
      label: "",
      selectedIcon: Image.asset(assetsImageSearch2),
    ),
    NavigationDestination(
      icon: Image.asset(assetsImageTripPlan1),
      label: "",
      selectedIcon: Image.asset(assetsImageTripPlan2),
    ),
    NavigationDestination(
      icon: Image.asset(assetsImageGuide1),
      label: " ",
      selectedIcon: Image.asset(assetsImageGuide2),
    )
  ];
}
