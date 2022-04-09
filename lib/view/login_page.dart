import 'package:flutter/material.dart';
import 'package:latihansoal/view/register_page.dart';

class LoginPage extends StatelessWidget {
  const LoginPage ({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: 
        Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(children:[
              const Text("Login"),
              Image.asset("assets/img_login.png"),
              const Text(
                "Selamat Datang",
                  style: TextStyle(
                    fontSize: 20,
                  ),
                ),
              const Text(
                "Selamat Datang di Aplikasi Widya Edu Aplikasi Latihan dan Konsultasi Soal"
                ),
              Spacer(),
            
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    elevation: 0,
                    primary: Colors.white,
                    fixedSize: const Size(double.infinity, 50),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(25),
                      side: const BorderSide(
                        color: Colors.blue,
                        style: BorderStyle.solid,
                        width: 1,
                      )
                    )
                  ),
                  

                  
                  onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => const RegisterPage() ));
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      // Image.asset("assets/auth/ic_google.png"),
                      const SizedBox(width: 10),
                      const Icon(Icons.add),
                      const Text(
                        "Masuk dengan Google",
                        style: TextStyle(
                          color: Colors.black,
                        ),
                      )
                    ],
                  ),
                    ),
                  ),
                SizedBox(height: 10), 
                Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    elevation: 0,
                    primary: Colors.black,
                    fixedSize: const Size(double.infinity, 50),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(25),
                      side: const BorderSide(
                        color: Colors.blue,
                        style: BorderStyle.solid,
                        width: 1,
                      )
                    )
                  ),
                  

                  
                  onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => const RegisterPage() ));
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      // Image.asset("assets/auth/ic_google.png"),
                      const SizedBox(width: 10),
                      const Icon(Icons.add),
                      const Text(
                        "Masuk dengan Apple",
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      )
                    ],
                  ),
                    ),
                  ),
              ]
            )
          
        )
      ),
      
    );
  }
}