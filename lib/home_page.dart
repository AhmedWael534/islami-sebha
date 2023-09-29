import 'package:flutter/material.dart';
import 'package:islami_sebha/home_page_body.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          image: DecorationImage(
              fit: BoxFit.fill,
              image: AssetImage("assets/images/default_bg.png"))),
      child: const Scaffold(
        backgroundColor: Colors.transparent,
        body: SafeArea(child: HomePageBody()),
      ),
    );
  }
}
