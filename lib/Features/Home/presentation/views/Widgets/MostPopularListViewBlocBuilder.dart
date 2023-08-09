import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:free_books/Features/Home/presentation/manger/MostPopularBooks_cubit/FetchMostPopularBooks_cubit.dart';
import 'package:free_books/Features/Home/presentation/manger/MostPopularBooks_cubit/FetchMostPopularBooks_state.dart';
 
import 'MostPopular_ListView.dart';

class MostPopularListViewBlocBuilder extends StatelessWidget {
  const MostPopularListViewBlocBuilder({
    super.key,
  });

 @override
  Widget build(BuildContext context) {
    return BlocBuilder<fetchMostPopularBooksCubit, FetchMostPopularBooksState>(
      builder: (BuildContext context, state) {
        if (state is FetchMostPopularBooksSuccess) {
          return MostPopularListView();
        } else if (state is FetchMostPopularBooksFailure) {
          return Text('');
        } else {
          return CircularProgressIndicator();
        }
        
      },
    );
  }
}