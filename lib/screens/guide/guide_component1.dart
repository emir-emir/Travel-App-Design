import 'package:flutter/material.dart';
import 'package:travel_app/widgets/globalTextName.dart';
import 'package:travel_app/widgets/global_container.dart';

/// Created by Emirşah Erden
/// on 07 Şubat 2022
class GuideComponent1 extends StatelessWidget {
  String? image;
  String textName;

  GuideComponent1({required this.image, required this.textName});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 10, right: 10),
      child: GlobalContainer(
          width: 150,
          height: 200,
          image: image!,
          fit: BoxFit.fill,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 10.0, bottom: 20),
                child: GlobalTextName(
                  name: textName,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 25,
                ),
              ),
            ],
          )),
    );
  }
}
