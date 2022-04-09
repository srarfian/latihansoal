import 'dart:async';

import 'package:flutter/material.dart';
import 'package:latihansoal/view/login_page.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  goToNextPage()  {
    Timer(const Duration(seconds: 5), ()  {
      Navigator.of(context).push(
        MaterialPageRoute(
          builder: (context) => const LoginPage() 
          ),
      );
    });
  }

  @override
  void initState() {
    super.initState();
    goToNextPage();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(),
      backgroundColor: Color.fromARGB(255, 44, 127, 230),
      body: GestureDetector(
        onTap: (){
          Navigator.push(
            context, 
            MaterialPageRoute(builder: (context){
            return LoginPage();
              }
            )
          );
        },
        child: Center(
          child: Image.asset(
            "assets/auth/ic_splash.png",
             width: MediaQuery.of(context).size.width* 0.5,
          ),
        ),
      ),
      
    );
  }
}




