import 'package:flutter/material.dart';
import 'package:travel_app/widgets/globalTextName.dart';
import 'package:travel_app/widgets/global_container.dart';

/// Created by Emirşah Erden
/// on 06 Şubat 2022
class SearchCategoriesComponent1 extends StatelessWidget {
  String? image;
  String? name1;
  String? name2;

  SearchCategoriesComponent1({this.image, this.name1, this.name2});

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.only(top: 10, bottom: 10, right: 10),
        child: GlobalContainer(
          width: 150,
          height: 200,
          borderRadius: BorderRadius.circular(12),
          image: image,
          fit: BoxFit.fill,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            // textDirection: ,
            children: [
              GlobalTextName(name: name1!, color: Colors.white, fontSize: 25, fontWeight: FontWeight.bold),
              SizedBox(height: 5),
              GlobalTextName(name: name2!, color: Colors.white, fontSize: 20, fontWeight: FontWeight.normal),
            ],
          ),
        ));
  }
}
