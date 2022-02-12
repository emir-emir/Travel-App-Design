import 'package:travel_app/constant/image.dart';
import 'package:travel_app/screens/home/home_categories_component.dart';

/// Created by Emirşah Erden
/// on 05 Şubat 2022
List<HomeCategoriesComponent> categoriesList = [
  HomeCategoriesComponent(AssetImage1: assetsImageFlights, name: "Flights"),
  HomeCategoriesComponent(AssetImage1: assetsImageHotel, name: "Hotel"),
  HomeCategoriesComponent(AssetImage1: assetsImageCar, name: "Cars"),
  HomeCategoriesComponent(AssetImage1: assetsImageTaxi, name: "Taxi"),
];

List<String> categories = ["All", "Flights", "Hotel", "Transportations"];
