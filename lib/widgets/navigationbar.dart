import 'package:flutter/material.dart';

/// Created by Emirşah Erden
/// on 29 Ocak 2022
class NavigationDestinationDeneme extends StatelessWidget {
  Widget? icon;
  Widget? selectedIcon;
  String? label;

  NavigationDestinationDeneme({this.icon, this.label, this.selectedIcon});

  @override
  Widget build(BuildContext context) {
    return NavigationDestinationDeneme(
      icon: icon,
      selectedIcon: selectedIcon,
      label: label,
    );
  }
}
