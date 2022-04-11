
import 'package:flutter/material.dart';
import 'package:latihansoal/constants/r.dart';
import 'package:latihansoal/view/main/latihan_soal/home_page.dart';
import 'package:latihansoal/view/main/profile/profile_page.dart';

class MainPage extends StatefulWidget {
  MainPage({Key? key}) : super(key: key);

  static String route ="main_page";

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {

  final _pc = PageController();
  int index = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed:() {}, 
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: _buildButtomNavigation(),
      body: PageView(
        controller: _pc,
        physics: NeverScrollableScrollPhysics(),
        children: [
            HomePage(),
            //ChatPage(),
            ProfilePage(),
          ],
        ),
      );    
  }

  Container _buildButtomNavigation() {
    return Container(
      decoration: BoxDecoration(boxShadow: [
            BoxShadow(
              offset: Offset(0,4),
              blurRadius: 20,
              color: Colors.black.withOpacity(0.06))
          ]),
      child: BottomAppBar(
        color: Colors.white,
        child: Container(
          height: 60,
          child: Row(
            children: [
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.only(top:8.0),
                  child: Material(
                    child: InkWell(
                      child:Column(
                        children: [
                        Image.asset(
                          R.assets.icHome,
                          height: 20,
                          ),
                        Text("Home"),
                        ],
                      )
                     ),
                    ),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.only(top:8.0),
                  child: Material(
                    child: InkWell(
                      child:Column(
                        children: [
                        Opacity(
                          opacity: 0,
                          child: Image.asset(
                            R.assets.icHome,
                            height: 20,
                            ),
                        ),
                        Text("Diskusi Soal"),
                        ],
                      )
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.only(top:8.0),
                  child: Material(
                    child: InkWell(
                      child:Column(
                        children: [
                        Icon(Icons.person),
                        Text("Profile"),
                        ],
                      )
                     ),
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