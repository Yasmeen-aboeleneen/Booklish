import 'package:flutter/material.dart';

import 'CustomItemOfListView.dart';

class ListOfSeeMoreBooks extends StatefulWidget {
  const ListOfSeeMoreBooks({super.key});

  @override
  State<ListOfSeeMoreBooks> createState() => _ListOfSeeMoreBooksState();
}

class _ListOfSeeMoreBooksState extends State<ListOfSeeMoreBooks> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * .19,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 5),
              child: CustomItemOfListView(image: '',),
            );
          }),
    );
    
  }
}
