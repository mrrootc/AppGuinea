import 'package:flutter/material.dart';
import 'package:learn/Agriculture.dart';
import 'package:learn/welcome_page.dart';
import 'catoryIcon.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Learn flutter',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: WelcomePage(),
    );
  }
}
class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF9F9F9),
      // bottomNavigationBar: Container(
      //   height: 80,
      //   width: double.infinity,
      //   padding: EdgeInsets.all(10),
      //   color: Color(0xFF373856),
      //   child: Padding(
      //     padding: const EdgeInsets.only(bottom: 10),
      //     child: Row(
      //       mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      //       children: [
      //         Image.asset(
      //           'images/Icon7.png',
      //           height: 60,
      //           width: 60,
      //         ),
      //         Image.asset(
      //           'images/Icon8.png',
      //           height: 60,
      //           width: 60,
      //         ),
      //         Image.asset(
      //           'images/Icon9.png',
      //           height: 60,
      //           width: 60,
      //         ),
      //       ],
      //     ),
      //   ),
      // ),
       body: Column(
        children: [
          Stack(
            children: [
              Transform.rotate(
                origin: Offset(30, -60),
                angle: 2.4,
                child: Container(
                  margin: EdgeInsets.only(
                    left: 75,
                    top: 40,
                  ),
                  height: 400,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(80),
                    gradient: const LinearGradient(
                      begin: Alignment.bottomLeft,
                      colors: [Color(0xFFFF595E), Color(0xFFFFCA3A)],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 70),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'GUINEE CONAKRY',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 26,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                   const Text(
                      'Bienvenue en guinee \n un pays plein de merveille ',
                      style: TextStyle(color: Colors.white, fontSize: 18),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 20),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              GestureDetector(
                              onTap: (){
                                print('clie');
                              },
                                child: Category(
                                  image: 'images/Icon1.png',
                                  text: 'Agriculture',
                                  color: Color(0xFF47B4FF),
                                ),
                              ),
                              GestureDetector(
                                onTap: (){

                                } ,
                                child: Category(
                                  image: 'images/Icon2.png',
                                  text: 'Tourisme',
                                  color: Color(0xFFA885FF),
                                ),
                              )
                            ],
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              GestureDetector(
                                onTap: (){

                                } ,
                                child: Category(
                                  image: 'images/Icon3.png',
                                  text: 'Elevage',
                                  color: Color(0xFFFD47DF),
                                ),
                              ),
                              GestureDetector(
                                onTap: (){

                                } ,
                                child: Category(
                                  image: 'images/Icon4.png',
                                  text: 'Peche',
                                  color: Color(0xFFFD8C44),
                                ),
                              )
                            ],
                          ),
                          SizedBox(height: 20),

                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}