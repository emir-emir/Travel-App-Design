import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:travel_app/screens/search/search_categories_list.dart';
import 'package:travel_app/screens/search/search_categories_list2.dart';
import 'package:travel_app/widgets/globalTextFormField.dart';
import 'package:travel_app/widgets/globalTextName.dart';

/// Created by Emirşah Erden
/// on 28 Ocak 2022
class SearchPage extends StatelessWidget {
  const SearchPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20, top: 30, right: 20),
      child: Container(
        width: double.infinity,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              GlobalTextName(name: "Search", fontSize: 35),
              GlobalTextFormField(labelText: "Where next?"),
              SizedBox(height: 10),
              GlobalTextName(name: "TOP DESTINATIONS", fontSize: 20),
              destinationsContainer,
              GlobalTextName(name: "NEARBY ATTRACTIONS", fontSize: 20),
              nearbyAttractionsContainer,
            ],
          ),
        ),
      ),
    );
  }

  SingleChildScrollView get destinationsContainer {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: List.generate(destinationsList.length, (index) {
          return destinationsList[index];
        }),
      ),
    );
  }

  Column get nearbyAttractionsContainer {
    return Column(
        children: List.generate(nearbyAttractionsList.length, (index) {
      return nearbyAttractionsList[index];
    }));
  }
}
