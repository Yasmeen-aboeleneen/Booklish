import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:free_books/Core/Utils/App_Router.dart';
import 'package:free_books/Core/Utils/Bloc_observer.dart';

import 'package:free_books/Features/Home/Data/Repos/Home_Repo_impl.dart';
import 'package:free_books/Features/Home/Domain/Entities/Book_Entity.dart';
import 'package:free_books/Features/Home/Domain/UseCases/Fetch_FeaturedBooks_UseCase.dart';
import 'package:free_books/Features/Home/Domain/UseCases/Fetch_MostPopularBooks_UseCase.dart';
import 'package:free_books/Features/Home/presentation/manger/featured_books_cubit/featured_books_cubit.dart';
import 'package:free_books/constants.dart';
import 'package:get_it/get_it.dart';
import 'package:hive_flutter/adapters.dart';

import 'Core/Utils/Functions/setupServiceLocator.dart';
import 'Features/Home/presentation/manger/MostPopularBooks_cubit/FetchMostPopularBooks_cubit.dart';

void main() async {
  await Hive.initFlutter();
  Hive.registerAdapter(BookEntityAdapter());
  setupServiceLocator();
  await Hive.openBox<BookEntity>(Kfeaturedbooks);
  await Hive.openBox<BookEntity>(KmostPopularbooks);
  Bloc.observer = BolccObserver();
  runApp(const FreeBooks());
}

final getIt = GetIt.asNewInstance();

class FreeBooks extends StatelessWidget {
  const FreeBooks({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) {
          return FeaturedBooksCubit(
              FetchFeaturedBooksUseCase(getIt.get<HomeRepoImplementation>()))..fetchFeaturedBooks();
        }),
        BlocProvider(create: (context) {
          return fetchMostPopularBooksCubit(
              FetchMostPopularUseCase(getIt.get<HomeRepoImplementation>()))..fetchMostPopularBooks();
        })
      ],
      child: MaterialApp.router(
        routerConfig: AppRouter.router,
        debugShowCheckedModeBanner: false,
        theme:
            ThemeData.dark().copyWith(scaffoldBackgroundColor: KprimaryColor),
      ),
    );
  }
}
