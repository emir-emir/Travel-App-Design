import 'package:flutter/material.dart';
import 'package:travel_app/constant/image.dart';
import 'package:travel_app/widgets/globalTextName.dart';
import 'package:travel_app/widgets/global_container.dart';
import 'package:travel_app/widgets/global_imageicon.dart';

/// Created by Emirşah Erden
/// on 08 Şubat 2022
class GuideComponent3 extends StatelessWidget {
  String? image;
  String? textName1;
  String? textName2;

  GuideComponent3({required this.image, required this.textName1, required this.textName2});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Stack(children: [
          Padding(
            padding: const EdgeInsets.only(right: 10),
            child: GlobalContainer(height: 180, width: 250, image: image!, fit: BoxFit.fill),
          ),
          Positioned(
              right: 20,
              top: 20,
              child: GlobalContainer(
                image: image!,
                color: Colors.white.withOpacity(0.5),
                borderRadius: BorderRadius.circular(12),
                child: GlobalImageIcon(assetsName: assetsImageBookmark2, size: 35, color: Colors.white),
              )),
        ]),
        GlobalTextName(name: textName1!, color: Colors.blue, fontSize: 20, fontWeight: FontWeight.bold),
        Padding(
          padding: const EdgeInsets.only(left: 0),
          child: GlobalTextName(name: textName2!, color: Colors.black, fontSize: 20, fontWeight: FontWeight.bold),
        )
      ],
    );
  }
}
