import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:free_books/Features/Home/presentation/manger/featured_books_cubit/featured_books_cubit.dart';
import 'package:free_books/Features/Home/presentation/manger/featured_books_cubit/featured_books_state.dart';

import 'BooksListView.dart';

class BooksListViewBlocBuilder extends StatelessWidget {
  const BooksListViewBlocBuilder({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FeaturedBooksCubit, FeaturedBookState>(
      builder: (BuildContext context, state) {
        if (state is FeaturedBooksSuccess) {
          return BooksListView();
        } else if (state is FeaturedBooksFailure) {
          return Text(state.errorMessege);
        } else {
          return CircularProgressIndicator();
        }
        
      },
    );
  }
}
