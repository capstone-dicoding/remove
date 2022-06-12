import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:remove/common/theme.dart';
import 'package:remove/data/page/home_page.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({Key? key}) : super(key: key);

  static const routeName = '/signUp_page';

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
            padding: const EdgeInsets.all(30),
            child: SingleChildScrollView(
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Padding(
                        padding: EdgeInsets.only(right: 30, top: 30),
                        child: Text('Sign Up',
                            style: TextStyle(
                              fontSize: 22,
                              color: kPrimaryColor,
                            )),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      const Text('Sign Up now, and find your favorite movies!',
                          style: TextStyle(
                            fontSize: 15,
                            color: kTextLightColor,
                          )),
                      const SizedBox(
                        height: 30,
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
                          labelText: 'Type your username',
                          labelStyle: const TextStyle(
                              fontFamily: 'poppins', color: kTextLightColor),
                        ),
                      ),
                      const SizedBox(
                        height: 20,
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
                          labelText: 'Type your phone',
                          labelStyle: const TextStyle(
                              fontFamily: 'poppins', color: kTextLightColor),
                        ),
                      ),
                      const SizedBox(
                        height: 20,
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
                          labelText: 'Type your birthday',
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
                          labelText: 'Re-type your password',
                          labelStyle: const TextStyle(
                              fontFamily: 'poppins', color: kTextLightColor),
                        ),
                      ),
                      const SizedBox(
                        height: 30,
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
                            HomePage.routeName,
                          ),
                          color: kPrimaryColor,
                          child: const Text(
                            'Create Account',
                            style: TextStyle(
                              fontSize: 17,
                              color: kTextLightColor,
                            ),
                          ),
                        ),
                      ),
                    ]))));
  }
}
