import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:travel_app/constant/image.dart';
import 'package:travel_app/widgets/globalTextName.dart';
import 'package:travel_app/widgets/global_container.dart';
import 'package:travel_app/widgets/global_imageicon.dart';

/// Created by Emirşah Erden
/// on 06 Şubat 2022
class SearchCategoriesComponent2 extends StatelessWidget {
  String? image;
  String? name1;
  String? name2;
  String? name3;
  String? name4;
  String? name5;

  SearchCategoriesComponent2({this.image, this.name1, this.name2, this.name3, this.name4, this.name5});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        buildContainer,
        positionedType,
        const SizedBox(width: 130),
        positionedSave,
        positionedScor,
        const SizedBox(width: 130),
        positionedPrice,
      ],
    );
  }

  GlobalContainer get buildContainer {
    return GlobalContainer(
      height: 180,
      width: 350,
      image: image,
      fit: BoxFit.fill,
      child: buildColumnContainer,
    );
  }

  Positioned get positionedType {
    return Positioned(
        left: 20,
        top: 20,
        child: GlobalContainer(
          width: 60,
          height: 30,
          color: Colors.red,
          borderRadius: BorderRadius.circular(2),
          child: Align(alignment: Alignment.center, child: GlobalTextName(name: name3!, color: Colors.white, fontSize: 15, fontWeight: FontWeight.bold)),
        ));
  }

  Positioned get positionedSave {
    return Positioned(
        right: 10,
        top: 20,
        child: GlobalContainer(
          color: Colors.white.withOpacity(0.2),
          borderRadius: BorderRadius.circular(12),
          child: GlobalImageIcon(
            assetsName: assetsImageBookmark2,
            size: 35,
            color: Colors.white,
          ),
        ));
  }

  Positioned get positionedScor {
    return Positioned(
        bottom: 30,
        left: 20,
        child: Row(
          children: [
            GlobalTextName(name: name4!, color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold),
            Row(children: List.generate(5, (index) => iconStarImage())),
          ],
        ));
  }

  Positioned get positionedPrice {
    return Positioned(
        bottom: 30,
        right: 18,
        child: Row(
          children: [
            Text(name5!,
                style: const TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.normal,
                  fontSize: 18,
                )),
          ],
        ));
  }

  Column get buildColumnContainer {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      // textDirection: ,
      children: [
        GlobalTextName(name: name1!, fontSize: 25, fontWeight: FontWeight.bold, color: Colors.white),
        SizedBox(height: 5),
        GlobalTextName(name: name2!, fontSize: 20, fontWeight: FontWeight.normal, color: Colors.white),
      ],
    );
  }

  GlobalImageIcon iconStarImage() {
    return GlobalImageIcon(
      assetsName: assetsImageSearchImage6,
      size: 15,
      color: Colors.yellow,
    );
  }
}
