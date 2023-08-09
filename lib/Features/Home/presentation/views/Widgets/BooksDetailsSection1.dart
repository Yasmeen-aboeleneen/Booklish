import 'package:flutter/material.dart';
import 'package:free_books/Core/Utils/styles.dart';

import 'BookRating.dart';
import 'BooksAction.dart';
import 'CustomItemOfListView.dart';

class BookDetailsSection1 extends StatelessWidget {
  const BookDetailsSection1({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;

    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: width * .18),
          child: const CustomItemOfListView(),
        ),
        const SizedBox(
          height: 10,
        ),
        Text(
          'Our Last Summer',
          style: styles.mediumTitle,
        ),
        const SizedBox(
          height: 10,
        ),
        Text('Elli Jhon',
            style: styles.SmallFont.copyWith(
                fontStyle: FontStyle.italic, fontWeight: FontWeight.w300)),
        const SizedBox(height: 10),
        BookRating(
          mainAxisAlignment: MainAxisAlignment.center,
        ),
        SizedBox(
          height: 30,
        ),
        BooksAction(),
      ],
    );
  }
}
