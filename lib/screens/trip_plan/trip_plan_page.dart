import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:travel_app/constant/image.dart';
import 'package:travel_app/screens/trip_plan/trip_categories_%C4%B1con.dart';
import 'package:travel_app/widgets/globalTextName.dart';

class TripPlan extends StatelessWidget {
  var selectedIndex = 0.obs;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SingleChildScrollView(
        child: Column(
          children: [
            tripTitle,
            tripCategories,
            SizedBox(height: 25),
            tripContainerStack,
            tripDescription,
            tripAddButton,
          ],
        ),
      ),
    );
  }

  Padding get tripTitle {
    return Padding(
      padding: const EdgeInsets.only(top: 50, left: 18),
      child: Align(
        alignment: Alignment.bottomLeft,
        child: RichText(
          text: const TextSpan(text: "Trip Plan", style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold, color: Colors.black)),
        ),
      ),
    );
  }

  Obx get tripCategories {
    return Obx(() => Row(
          children: List.generate(
            categoriesList.length,
            (index) {
              return Column(
                children: [
                  GestureDetector(
                    onTap: () {
                      selectedIndex.value = index;
                    },
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Row(
                        children: [
                          Image.asset(
                            selectedIndex.value == index ? categoriesList[index].activeIcon! : categoriesList[index].inActiveIcon!,
                            // fit: BoxFit.cover,
                          ),
                          SizedBox(width: 10),
                          GlobalTextName(
                            name: categoriesList[index].title!,
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: selectedIndex.value == index ? Colors.red : Color(0xFFACACAC),
                          )
                        ],
                      ),
                    ),
                  ),
                  Container(
                    height: 2,
                    width: 100,
                    color: selectedIndex.value == index ? Colors.red : Colors.transparent,
                  ),
                ],
              );
            },
          ),
        ));
  }

  Stack get tripContainerStack {
    return Stack(alignment: AlignmentDirectional.topCenter, fit: StackFit.loose, children: <Widget>[
      Container(
        child: Image.asset(
          assetsImageTrips3,
        ),
      ),
      Positioned(
          top: 75,
          child: GlobalTextName(
            name: 'Ho Chi Minh City',
            fontWeight: FontWeight.bold,
            color: Colors.white,
            fontSize: 35,
          )),
      Positioned(
          top: 120,
          child: GlobalTextName(
            name: 'Wed, 29 Dec - 31 Dec',
            fontWeight: FontWeight.normal,
            color: Colors.white,
            fontSize: 25,
          )),
      Positioned(
        bottom: 30,
        left: 35,
        child: Row(
          children: [
            Image.asset(
              assetsImageBookmark,
              // height: 65,
              width: 30,
            ),
            GlobalTextName(name: "5 items", color: Colors.white, fontSize: 15),
            SizedBox(width: 130),
            Image.asset(
              assetsImageClock,
              color: Colors.white,
              width: 30,
            ),
            GlobalTextName(name: "5 days left", color: Colors.white, fontSize: 15)
          ],
        ),
      )
    ]);
  }

  Padding get tripDescription {
    return Padding(
      padding: const EdgeInsets.only(left: 10, right: 4),
      child: Container(
        // width: 300,
        height: 100,
        color: Colors.pink.withOpacity(0.1),
        child: Row(
          children: [
            RichText(
                text: const TextSpan(text: ("Here's a checklist for your trip 👋\n"), style: TextStyle(color: Colors.red, fontSize: 22, fontWeight: FontWeight.bold), children: [
              TextSpan(
                text: ("As your upcoming destination hase\nsomtravelrestrictions  COVID-19"),
                style: TextStyle(color: Colors.red, fontSize: 20, fontWeight: FontWeight.normal),
              ),
            ])),
            IconButton(
                onPressed: () {},
                icon: Image.asset(
                  assetsImageRightArrow,
                  fit: BoxFit.fitWidth,
                )),
          ],
        ),
      ),
    );
  }

  Align get tripAddButton {
    return Align(
      alignment: Alignment.bottomCenter,
      heightFactor: 2.4,
      child: Image.asset(
        assetsImageAddTripButton,
      ),
    );
  }
}
