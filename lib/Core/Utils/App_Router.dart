import 'package:free_books/Features/Home/presentation/views/BookDetailsScreen.dart';
import 'package:free_books/Features/Home/presentation/views/HomeScreen.dart';
import 'package:free_books/Features/Search/presentation/Views/SearchScreen.dart';
import 'package:go_router/go_router.dart';

import '../../Features/Splash/Presentation/Views/Splash_screen.dart';

abstract class AppRouter {
  static const KhomeScreen = '/homeScreen';
  static const KbookDetailsScreen = '/bookDeatailsScreen';
  static const KsearchScreen = '/searchScreen';

  // GoRouter configuration
  static final router = GoRouter(
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => const SplashScreen(),
      ),
      GoRoute(
        path: KsearchScreen,
        builder: (context, state) => const SearchScreen(),
      ),
      GoRoute(
        path: KhomeScreen,
        builder: (context, state) => const HomeScreen(),
      ),
      GoRoute(
        path: KbookDetailsScreen,
        builder: (context, state) => const BookDetailsScreen(),
      ),
    ],
  );
}
