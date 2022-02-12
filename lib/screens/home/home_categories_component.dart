import 'package:flutter/material.dart';
import 'package:travel_app/constant/image.dart';
import 'package:travel_app/widgets/global_container.dart';

/// Created by Emirşah Erden
/// on 05 Şubat 2022
class HomeCategoriesComponent extends StatelessWidget {
  var AssetImage1;
  var name;
  HomeCategoriesComponent({required this.AssetImage1, required this.name});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20, right: 15, top: 10, bottom: 20),
      child: Column(
        children: [
          buildContainer,
          SizedBox(height: 13),
          buildText,
        ],
      ),
    );
  }

  GlobalContainer get buildContainer {
    return GlobalContainer(
      alignment: Alignment.center,
      height: 60,
      width: 60,
      image: assetsImageContainer,
      child: Image.asset(AssetImage1),
    );
  }

  Text get buildText {
    return Text(
      name!,
      style: TextStyle(color: Colors.white),
    );
  }
}
