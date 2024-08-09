import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'auth_screen/login_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  void initState() {
    Future.delayed(const Duration(seconds: 3), () {
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) {
        return LoginScreen();
      },));
    });

    super.initState();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: SvgPicture.asset("assets/img/logo.svg") ,),
    );
  }
}
