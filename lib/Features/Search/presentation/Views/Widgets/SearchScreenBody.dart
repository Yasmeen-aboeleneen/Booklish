import 'package:flutter/material.dart';
import 'package:free_books/Features/Search/presentation/Views/Widgets/CustomSearchTextField.dart';
import 'package:free_books/Features/Search/presentation/Views/Widgets/SearchResult.dart';

class SearchScreenBody extends StatelessWidget {
  const SearchScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Column(
        children: [
          CustomSearchTextField(),
          const SizedBox(
            height: 30,
          ),
          Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'Search Result',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              )),
          const SizedBox(
            height: 15,
          ),
          Expanded(child: SearchResult())
        ],
      ),
    );
  }
}
