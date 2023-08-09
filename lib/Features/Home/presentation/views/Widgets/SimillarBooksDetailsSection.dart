import 'package:flutter/material.dart';
import 'package:free_books/Core/Utils/styles.dart';

import 'SeeMoreListOfBooks.dart';

class SimillarBookDetailsSection2 extends StatelessWidget {
  const SimillarBookDetailsSection2({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "See More Books",
          style: styles.generalFont,
        ),
        SizedBox(
          height: 16,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 1),
          child: ListOfSeeMoreBooks(),
        )
      ],
    );
  }
}
