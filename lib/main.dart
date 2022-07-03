import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:remove/common/theme.dart';
import 'package:remove/common/utils.dart';
import 'package:remove/data/page/home_page.dart';
import 'package:remove/data/page/login_page.dart';
import 'package:remove/data/page/signUp_page.dart';
import 'package:remove/data/page/splashscreen.dart';
import 'package:remove/injection.dart' as di;
import 'package:remove/presentation/pages/bottom_bar.dart';
import 'package:remove/presentation/pages/home_movie_page.dart';
import 'package:remove/presentation/pages/movie_detail_page.dart';
import 'package:remove/presentation/pages/popular_movies_page.dart';
import 'package:remove/presentation/pages/top_rated_movies_page.dart';
import 'package:remove/presentation/provider/movie_detail_notifier.dart';
import 'package:remove/presentation/provider/movie_search_notifier.dart';
import 'package:remove/presentation/provider/popular_movies_notifier.dart';
import 'package:remove/presentation/provider/top_rated_movies_notifier.dart';
import 'package:remove/presentation/provider/watchlist_movie_notifier.dart';

import 'presentation/provider/movie_list_notifier.dart';

void main() {
  di.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        // ChangeNotifierProvider(
        //   create: (_) =>
        //       MovieProvider(apiService: ApiService(Client()), client: ''),
        // ),
        ChangeNotifierProvider(
          create: (_) => di.locator<MovieListNotifier>(),
        ),
        ChangeNotifierProvider(
          create: (_) => di.locator<MovieDetailNotifier>(),
        ),
        ChangeNotifierProvider(
          create: (_) => di.locator<MovieSearchNotifier>(),
        ),
        ChangeNotifierProvider(
          create: (_) => di.locator<TopRatedMoviesNotifier>(),
        ),
        ChangeNotifierProvider(
          create: (_) => di.locator<PopularMoviesNotifier>(),
        ),
        ChangeNotifierProvider(
          create: (_) => di.locator<WatchlistMovieNotifier>(),
        ),
      ],
      child: MaterialApp(
        title: 'Remove',
        theme: ThemeData(
          scaffoldBackgroundColor: kSecondaryColor,
          colorScheme: Theme.of(context).colorScheme.copyWith(
                primary: kPrimaryColor,
                onPrimary: kTextColor,
                secondary: kSecondaryColor,
              ),
          elevatedButtonTheme: ElevatedButtonThemeData(
            style: ElevatedButton.styleFrom(
              // primary: kSecondaryColor,
              onPrimary: Colors.white,
              textStyle: const TextStyle(),
              // ignore: prefer_const_constructors
              shape: RoundedRectangleBorder(
                borderRadius: const BorderRadius.all(
                  Radius.circular(0),
                ),
              ),
            ),
          ),
          textTheme: myTextTheme,
          appBarTheme: const AppBarTheme(
            elevation: 0,
          ),
        ),
        home: const SplashScreen(),
        // navigatorObservers: [routeObserver],
        // onGenerateRoute: (RouteSettings settings) {
        //   switch (settings.name) {
        //     case '/splash':
        //       return MaterialPageRoute(builder: (_) => SplashScreen());
        //     case '/home':
        //       return MaterialPageRoute(builder: (_) => HomeMoviePage());
        //     case PopularMoviesPage.ROUTE_NAME:
        //       return CupertinoPageRoute(builder: (_) => PopularMoviesPage());
        //     case TopRatedMoviesPage.ROUTE_NAME:
        //       return CupertinoPageRoute(builder: (_) => TopRatedMoviesPage());
        //     case MovieDetailPage.ROUTE_NAME:
        //       final id = settings.arguments as int;
        //       return MaterialPageRoute(
        //         builder: (_) => MovieDetailPage(id: id),
        //         settings: settings,
        //       );
        // initialRoute: SplashScreen.routeName,
        routes: {
          // SplashScreen.routeName: (context) => const SplashScreen(),
          LoginPage.routeName: (context) => const LoginPage(),
          HomeMoviePage.ROUTE_NAME: (context) => const HomeMoviePage(),
          SignUpPage.routeName: (context) => const SignUpPage(),
        },
        debugShowCheckedModeBanner: false,
        // default:
        //   return MaterialPageRoute(builder: (_) {
        //     return const Scaffold(
        //       body: Center(
        //         child: Text('Page not found :('),
        //       ),
        //     );
        //   });
        //     }
        //   },
      ),
    );
  }
}
