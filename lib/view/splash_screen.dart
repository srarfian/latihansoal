import 'dart:async';

import 'package:flutter/material.dart';
import 'package:latihansoal/view/login_page.dart';

import '../constants/r.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);
  static String route = "splash_screen";


@override
  Widget build(BuildContext context) {

    Timer(const Duration(seconds: 5), ()  {
      // Navigator.of(context).push(
      //   MaterialPageRoute(
      //     builder: (context) => const LoginPage() 
      //     ),
      Navigator.of(context).pushReplacementNamed(LoginPage.route);
    });
      
     
    return Scaffold(
      // appBar: AppBar(),
      backgroundColor: R.colors.primary,
      // body: GestureDetector(
      //   onTap: (){
      //     Navigator.push(
      //       context, 
      //       MaterialPageRoute(builder: (context){
      //       return LoginPage();
      //         }
      //       )
      //     ); 
      //   }, command apabila menggunakan klik ketika pindah page
        body: Center(
          child: Image.asset( R.assets.icSplash ,
             width: MediaQuery.of(context).size.width* 0.5,
             ),
        )
    );
  }
}




