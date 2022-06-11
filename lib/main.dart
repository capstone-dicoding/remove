import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'package:provider/provider.dart';
import 'package:remove/common/theme.dart';
import 'package:remove/data/api/api_service.dart';
import 'package:remove/data/page/home_page.dart';
import 'package:remove/data/page/login_page.dart';
import 'package:remove/data/page/splashscreen.dart';
import 'package:remove/data/provider/movie_provider.dart';
import 'package:remove/data/page/signUp_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (_) =>
              MovieProvider(apiService: ApiService(Client()), client: ''),
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
              primary: kSecondaryColor,
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
        initialRoute: SplashScreen.routeName,
        routes: {
          SplashScreen.routeName: (context) => const SplashScreen(),
          LoginPage.routeName: (context) => const LoginPage(),
          HomePage.routeName: (context) => const HomePage(),
          SignUpPage.routeName: (context) => const SignUpPage(),
        },
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}
