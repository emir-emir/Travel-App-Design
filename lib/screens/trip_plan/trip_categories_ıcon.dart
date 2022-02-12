import 'package:travel_app/constant/image.dart';

class CategoriesModel {
  final String? title;
  final String? activeIcon;
  final String? inActiveIcon;

  CategoriesModel({this.activeIcon, this.title, this.inActiveIcon});
}

List<CategoriesModel> categoriesList = [
  CategoriesModel(
    title: "Trips",
    activeIcon: assetsImageTrips,
    inActiveIcon: assetsImageTrips2,
  ),
  CategoriesModel(
    title: "Bookmark",
    activeIcon: assetsImageBookmark,
    inActiveIcon: assetsImageBookmark2,
  )
];
