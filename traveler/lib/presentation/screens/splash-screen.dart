import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:traveler/presentation/screens/countries-screen.dart';

import '../../utils/colors.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors().black,
      body: Center(
          child: Lottie.asset('assets/splash.json',
          onLoaded: (c){
            Future.delayed(c.duration,(){
              Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>CountriesScreen()));
            });
          }
          )),
    );
  }
}
