import 'package:flutter/material.dart';

import 'package:free_books/Features/Home/presentation/views/Widgets/CustomBookDetailsAppBar.dart';

import 'BooksDetailsSection1.dart';
import 'SimillarBooksDetailsSection.dart';

class BookDetailsScreenBody extends StatelessWidget {
  const BookDetailsScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverFillRemaining(
          hasScrollBody: false,
          child: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 30,
            ),
            child: Column(
              children: [
                const CustomBookDetailsAppBar(),
                const SizedBox(
                  height: 10,
                ),
                const BookDetailsSection1(),
                Expanded(
                    child: const SizedBox(
                  height: 25,
                )),
                SimillarBookDetailsSection2(),
                const SizedBox(
                  height: 15,
                )
              ],
            ),
          ),
        ),
      ],
    );
  }
}
