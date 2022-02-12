import 'package:get/get.dart';
import 'package:travel_app/botton_navigationbar/botton_navigationbar.dart';

/// Created by Emirşah Erden
/// on 27 Ocak 2022
List<GetPage<dynamic>> routes = [
  GetPage(
    name: "/",
    page: () => BottomNavigationBar(),
  )
];
