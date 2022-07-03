import 'package:flutter/material.dart';
import 'package:remove/common/theme.dart';

class MoviePage extends StatefulWidget {
  const MoviePage({Key? key}) : super(key: key);

  @override
  State<MoviePage> createState() => _State();
}

class _State extends State<MoviePage> {
  TextEditingController _search = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kSecondaryColor,
      body: SafeArea(
          child: Column(
        children: [
          Image.asset(
            'assets/images/logo.png',
            width: MediaQuery.of(context).size.width,
            height: 100,
            fit: BoxFit.cover,
          ),
          const SizedBox(
            height: 10,
          ),
          SafeArea(
              child: Container(
            margin: const EdgeInsets.symmetric(horizontal: 20),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20),
            ),
            child: TextField(
              controller: _search,
            ),
          ))
        ],
      )),
    );
  }
}
