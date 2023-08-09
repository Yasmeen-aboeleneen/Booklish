import 'package:flutter/material.dart';

import 'package:free_books/Core/Utils/styles.dart';

import 'BooksListViewBlocBuilder.dart';
import 'CustomAppBar.dart';
import 'MostPopularListViewBlocBuilder.dart';

class HomeScreenBody extends StatelessWidget {
  const HomeScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                CustomAppBar(),
                SizedBox(
                  height: 5,
                ),
                BooksListViewBlocBuilder(),
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    "Most Popular",
                    style: styles.mediumTitle,
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
              ]),
        ),
        SliverFillRemaining(
            child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30),
          child: MostPopularListViewBlocBuilder(),
        ))
      ],
    );
  }
}
