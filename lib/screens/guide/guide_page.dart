import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:travel_app/screens/guide/guide_component1_list.dart';
import 'package:travel_app/screens/guide/guide_component2_list.dart';
import 'package:travel_app/screens/guide/guide_component3_list.dart';
import 'package:travel_app/widgets/globalTextFormField.dart';
import 'package:travel_app/widgets/globalTextName.dart';

/// Created by Emirşah Erden
/// on 28 Ocak 2022
class GuidePage extends StatelessWidget {
  const GuidePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20, top: 30, right: 20),
      child: Container(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              rowText1,
              rowText2,
              rowContainerList1,
              TextFormField,
              rowContainerList2,
              rowText3,
              rowContainerList3,
            ],
          ),
        ),
      ),
    );
  }

  GlobalTextName get rowText1 => GlobalTextName(
        name: "Guide",
        fontSize: 35,
        fontWeight: FontWeight.bold,
      );

  Padding get rowText2 {
    return Padding(
      padding: const EdgeInsets.only(top: 10, bottom: 10),
      child: Row(
        children: [
          GlobalTextName(name: "MIGHT NEED THESE", fontSize: 20, fontWeight: FontWeight.normal),
          Spacer(),
          GlobalTextName(name: "See all", fontWeight: FontWeight.normal, color: Colors.red, fontSize: 20, decoration: TextDecoration.underline),
        ],
      ),
    );
  }

  SingleChildScrollView get rowContainerList1 {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: List.generate(mightNeedList.length, (index) => mightNeedList[index]),
      ),
    );
  }

  GlobalTextFormField get TextFormField {
    return GlobalTextFormField(labelText: "A country,a city,a place...or anything");
  }

  SingleChildScrollView get rowContainerList2 {
    return SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: List.generate(Component2list.length, (index) => Component2list[index]),
        ));
  }

  GlobalTextName get rowText3 {
    return GlobalTextName(name: "TOP-PICK ARTICLES", fontWeight: FontWeight.bold, fontSize: 20);
  }

  SingleChildScrollView get rowContainerList3 {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: List.generate(Component3list.length, (index) => Component3list[index]),
      ),
    );
  }
}
