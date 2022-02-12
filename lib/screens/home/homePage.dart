/// Created by Emirşah Erden
/// on 28 Ocak 2022
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:travel_app/constant/image.dart';
import 'package:travel_app/screens/home/home_categories_list.dart';
import 'package:travel_app/widgets/globalTextName.dart';
import 'package:travel_app/widgets/global_container.dart';

/// Created by Emirşah Erden
/// on 28 Ocak 2022
class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);
  var selectedIndex = 0.obs;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          GlobalContainer(
            height: MediaQuery.of(context).size.height * 0.55,
            alignment: Alignment.topCenter,
            image: assetsImageHome3,
            fit: BoxFit.cover,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                homeAppbar,
                const SizedBox(height: 85),
                homeDescription,
                const SizedBox(height: 25),
                homeContainerList,
              ],
            ),
          ),
          bottomTitle,
          bottomSubtitleList,
          SizedBox(height: 10),
          bottomImageContainer
        ],
      ),
    );
  }

  Row get homeAppbar {
    return Row(
      children: [
        IconButton(iconSize: 50, icon: Image.asset(assetsImageProfile), onPressed: () {}),
        Spacer(),
        IconButton(iconSize: 25, onPressed: () {}, icon: Image.asset(assetsImageSquareCode)),
        IconButton(iconSize: 35, onPressed: () {}, icon: Image.asset(assetsImageAlarm)),
      ],
    );
  }

  Padding get homeDescription {
    return Padding(
      padding: const EdgeInsets.only(left: 15),
      child: Align(
          alignment: Alignment.bottomLeft,
          child: GlobalTextName(
            name: "Where's your\nnext destination ?",
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 25,
          )),
    );
  }

  Row get homeContainerList {
    return Row(
      children: List.generate(categoriesList.length, (index) {
        return categoriesList[index];
      }),
    );
  }

  Padding get bottomTitle {
    return Padding(
        padding: EdgeInsets.only(bottom: 18.0, left: 10, top: 10),
        child: GlobalTextName(
          name: "DEALS",
          color: Colors.black,
          fontWeight: FontWeight.bold,
          fontSize: 18,
          textAlign: TextAlign.left,
        ));
  }

  Obx get bottomSubtitleList {
    return Obx(() => Row(
          children: List.generate(categories.length, (index) {
            return GestureDetector(
              onTap: () {
                selectedIndex.value = index;
              },
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10.0),
                  child: Column(
                    children: [
                      Text(
                        categories[index],
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: selectedIndex.value == index ? Colors.red : Color(0xFFACACAC),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 5),
                        height: 2,
                        width: 30,
                        color: selectedIndex.value == index ? Colors.black : Colors.transparent,
                      )
                    ],
                  ),
                ),
              ),
            );
          }),
        ));
  }

  Padding get bottomImageContainer {
    return Padding(
      padding: const EdgeInsets.only(left: 8),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset(assetsImageImage1, width: 300, height: 150, fit: BoxFit.fill),
          SizedBox(width: 10),
          Expanded(
            child: Image.asset(
              assetsImageImage2,
              width: 250,
              height: 150,
              fit: BoxFit.fill,
            ),
          )
        ],
      ),
    );
  }
}

// categories.map((e) => Text(e)).toList(),
