import 'dart:async';

import 'package:agrotech/screens/HomeScreen.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(const Duration(seconds: 3), () {
      Navigator.push(context, MaterialPageRoute(builder: (context)=>const HomeScreen()));
    });
  }
  @override
  Widget build(BuildContext context) {
    double height=MediaQuery.sizeOf(context).height;
    double width=MediaQuery.sizeOf(context).width;
    return Scaffold(
      body:SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children:[

            const Text('Agro Tech',style: TextStyle(
              color: Colors.green,
              fontSize: 40,
              fontWeight: FontWeight.bold
            ),),
            Lottie.asset('animation/splash.json') ,
          ]
        ),
      )
    );
  }
}
