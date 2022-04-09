
import 'package:flutter/material.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({ Key? key }) : super(key: key);

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  TextEditingController nameController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.black),
        backgroundColor: Colors.white,
        title: Text ("Yuk isi data diri", style: TextStyle(color: Colors.black),)
        ),
      body: SingleChildScrollView( //widget agar aplikasi bisa di scroll
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
              Text("Nama Lengkap"),
              Container(
                padding: EdgeInsets.symmetric(
                  horizontal: 16,
                ),

                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: Colors.white,
                  border: Border.all(
                    color: Color.fromARGB(255, 182, 186, 189),
                  )
                ),

              child: TextField(
                controller: nameController,
                decoration: InputDecoration(
                  disabledBorder: InputBorder.none,
                  border: InputBorder.none,
                  hintText: "Nama Lengkap",
                  hintStyle: TextStyle(
                    color: Color.fromARGB(255, 138, 135, 135)
                    )
                  ),
                )
              ),

              Text("Nama Lengkap"),
              Container(
                padding: EdgeInsets.symmetric(
                  horizontal: 16,
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: Colors.white,
                  border: Border.all(
                    color: Color.fromARGB(255, 182, 186, 189),
                  )
                ),
              child: TextField(
                decoration: InputDecoration(
                  disabledBorder: InputBorder.none,
                  border: InputBorder.none,
                  hintText: "Nama Lengkap",
                  hintStyle: TextStyle(
                    color: Color.fromARGB(255, 138, 135, 135)
                    )
                  ),
                )
              ),

              SizedBox(height: 10,),
              Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      elevation: 0,
                      primary:  Color.fromARGB(255, 44, 127, 230),
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
                      print(nameController.text);
                      //Navigator.of(context).push(MaterialPageRoute(
                       // builder: (context) => const RegisterPage() ));
                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        // Image.asset("assets/auth/ic_google.png"),
                        const SizedBox(width: 10),
                        const Text(
                          "Daftar",
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        )
                      ],
                    ),
                      ),
                    ),
            ],
            ),
        ),
      ),
    );
  }
}