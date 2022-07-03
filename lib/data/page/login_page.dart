import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:remove/common/theme.dart';
import 'package:remove/data/page/home_page.dart';
import 'package:remove/data/page/signUp_page.dart';
import 'package:remove/presentation/pages/home_movie_page.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);
  static const routeName = '/login_page';

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(30),
        //child: Center(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Image.asset('assets/images/logo_login.png'),
              const SizedBox(
                height: 25,
              ),
              const Padding(
                padding: EdgeInsets.only(right: 30),
                child: Text(
                  'Sign In now, and find your favorite movies',
                  style: TextStyle(
                      fontSize: 15,
                      //fontWeight: FontWeight.bold,
                      color: kTextLightColor),
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              TextField(
                decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide:
                        const BorderSide(width: 3, color: kPrimaryColor),
                  ),
                  focusedBorder: const OutlineInputBorder(
                    borderSide: BorderSide(width: 3, color: kPrimaryColor),
                  ),
                  errorBorder: const OutlineInputBorder(
                    borderSide: BorderSide(width: 3, color: kPrimaryColor),
                  ),
                  labelText: 'Type your email address',
                  labelStyle: const TextStyle(
                      fontFamily: 'poppins', color: kTextLightColor),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              TextField(
                keyboardType: TextInputType.visiblePassword,
                obscureText: true,
                decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide:
                        const BorderSide(width: 3, color: kPrimaryColor),
                  ),
                  focusedBorder: const OutlineInputBorder(
                    borderSide: BorderSide(width: 3, color: kPrimaryColor),
                  ),
                  errorBorder: const OutlineInputBorder(
                    borderSide: BorderSide(width: 3, color: kPrimaryColor),
                  ),
                  labelText: 'Type your password',
                  labelStyle: const TextStyle(
                      fontFamily: 'poppins', color: kTextLightColor),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  TextButton(
                    onPressed: () {
                      print('Forgotted Password!');
                    },
                    child: const Text(
                      'Forgot Password?',
                      style: TextStyle(
                        color: kTextLightColor,
                        fontSize: 12.0,
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 15,
              ),
              Container(
                clipBehavior: Clip.antiAliasWithSaveLayer,
                width: double.infinity,
                height: 40,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                ),
                child: MaterialButton(
                  onPressed: () => Navigator.pushNamed(
                    context,
                    HomeMoviePage.ROUTE_NAME,
                  ),
                  color: kPrimaryColor,
                  child: const Text(
                    'Sign In',
                    style: TextStyle(
                      fontSize: 17,
                      color: kTextLightColor,
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                clipBehavior: Clip.antiAliasWithSaveLayer,
                width: double.infinity,
                height: 40,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                ),
                child: MaterialButton(
                  onPressed: () => Navigator.pushNamed(
                    context,
                    SignUpPage.routeName,
                  ),
                  color: kTextLightColor,
                  child: const Text(
                    'Create New Account',
                    style: TextStyle(
                      fontSize: 17,
                      color: kSecondaryColor,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
