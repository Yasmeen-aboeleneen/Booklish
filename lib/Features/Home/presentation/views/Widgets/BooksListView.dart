import 'package:flutter/material.dart';
import 'package:free_books/Features/Home/presentation/views/Widgets/CustomItemOfListView.dart';

class BooksListView extends StatelessWidget {
  const BooksListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * .25,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.all(6.0),
              child: CustomItemOfListView(),
            );
          }),
    );
  }
}
