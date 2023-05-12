import 'dart:async';

import 'package:flutter/material.dart';
import 'package:statemanagement_work/all_products_page.dart';
import 'package:statemanagement_work/home.dart';
import 'package:statemanagement_work/provider_texts.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {


  getNextScreen() {
    Timer(const Duration(seconds: 2), () {
      Navigator.pushAndRemoveUntil(
          context,
          MaterialPageRoute(
            builder: (context) => const AllProductsPage(),
          ),
          (route) => false);
    });
  }

  @override
  void initState() {
  getNextScreen();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color(0xff6f6d6b),
              Color(0xffe8a757),
            ],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: Center(
          child: Image.asset("images/ayo_logo.png"),
        ),
      ),
    );
  }
}
