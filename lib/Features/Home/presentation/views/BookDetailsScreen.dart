import 'package:flutter/material.dart';
import 'package:free_books/Features/Home/presentation/views/Widgets/BookDetails_body.dart';

class BookDetailsScreen extends StatelessWidget {
  const BookDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        body: SafeArea(
      child: BookDetailsScreenBody(),
    ));
  }
}
