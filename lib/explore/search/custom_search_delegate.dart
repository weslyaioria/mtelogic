import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mtelogic/core/misc/app_sytle.dart';
import 'package:mtelogic/getx/route_name.dart';

class CustomSearchDelegate extends SearchDelegate {
  List<String> searchTerms = [
    'FS - Nike Air Max 270 React',
    'FS - QUILTED MAXI CROS',
    'FS - Nike Air Max 270',
    'Nike Air Max 270 ',
    'Nike Air Max 270 React ENG',
    'MS - Nike Air Max 270',
    'MS - Nike Air Max 330',
    'MS - Nike Air Max 170'
  ];

  @override
  List<Widget> buildActions(BuildContext context) {
    return [
      IconButton(
          onPressed: () {
            query = '';
          },
          icon: const Icon(Icons.clear))
    ];
  }

  @override
  Widget buildLeading(BuildContext context) {
    return IconButton(
        onPressed: () {
          close(context, null);
        },
        icon: const Icon(Icons.search));
  }

  @override
  Widget buildResults(BuildContext context) {
    List<String> matchQuery = [];
    for (var fruit in searchTerms) {
      if (fruit.toLowerCase().contains(query.toLowerCase())) {
        matchQuery.add(fruit);
      }
    }
    return ListView.builder(
      itemCount: matchQuery.length,
      itemBuilder: (context, index) {
        var result = matchQuery[index];
        return ListTile(
          title: Text(result),
        );
      },
    );
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    List<String> matchQuery = [];
    for (var fruit in searchTerms) {
      if (fruit.toLowerCase().contains(query.toLowerCase())) {
        matchQuery.add(fruit);
      }
    }
    return ListView.builder(
      itemCount: matchQuery.length,
      itemBuilder: (context, index) {
        var result = matchQuery[index];
        return ListTile(
          onTap: () {
            Get.toNamed(RouteName.searchProduct);
          },
          title: Text(
            result,
            style: AppStyle.label12Grey,
          ),
        );
      },
    );
  }
}
