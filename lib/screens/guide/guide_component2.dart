import 'package:flutter/material.dart';
import 'package:travel_app/widgets/globalTextName.dart';
import 'package:travel_app/widgets/global_container.dart';
import 'package:travel_app/widgets/global_imageicon.dart';

/// Created by Emirşah Erden
/// on 07 Şubat 2022
class GuideComponent2 extends StatelessWidget {
  String assetsName;
  String textName;

  GuideComponent2({required this.assetsName, required this.textName});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 8.0, top: 8, bottom: 8),
      child: GlobalContainer(
        border: Border.all(style: BorderStyle.solid, color: Colors.grey.shade300, width: 2),
        borderRadius: BorderRadius.circular(20),
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Row(
            children: [
              GlobalImageIcon(assetsName: assetsName, color: Colors.blue),
              SizedBox(width: 5),
              GlobalTextName(name: textName, fontSize: 20, color: Colors.blue),
            ],
          ),
        ),
      ),
    );
  }
}
