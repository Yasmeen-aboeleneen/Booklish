import 'package:flutter/material.dart';
import 'package:free_books/Features/Home/presentation/views/Widgets/MostPopularItem.dart';

class SearchResult extends StatelessWidget {
  const SearchResult({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: EdgeInsets.zero,
      itemBuilder: (context, index) {
        return const Padding(
          padding: EdgeInsets.symmetric(vertical: 5),
          child: MostPopularItem(),
        );
      },
    );
  }
}
