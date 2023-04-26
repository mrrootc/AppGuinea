import 'package:flutter/material.dart';
import 'package:learn/Agriculture.dart';
import 'package:learn/accueil2.dart';
import 'package:learn/peche.dart';



class Accueil1 extends StatefulWidget{
  @override
  _Accueil1State createState() => _Accueil1State();

}

class _Accueil1State extends State<Accueil1> {


  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(

        backgroundColor: Colors.white,
        foregroundColor: Colors.red,
        title: Text("Guinée-conakry"),
        centerTitle: false,
        actions: [
          new IconButton(
              onPressed: (){
                 var route = MaterialPageRoute(
                    builder: (BuildContext) => Accueil2(),
                );
                Navigator.of(context).push(route);
              },
              icon: Image.asset( "images/guinea.png",
                )
          ),
        ],


      ),
      body: ListView(


        children: [
          /// -------- la description
          Container(
            height: 1000,

            margin: EdgeInsets.only(top: 100),
            padding: EdgeInsets.symmetric(horizontal: 2 , vertical: 25),
            decoration: BoxDecoration(
              color: Colors.grey.shade100,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(50),
                topRight: Radius.circular(50),

              ),
            ),
           /* child: Center(
              child: Column(
                children: [
                  /// ----- agriculture
                  /*InkWell(
                    splashColor: Colors.blue,
                    onTap: (){
                       var route = MaterialPageRoute(
                          builder: (BuildContext) => Agriculture()
                      );
                      Navigator.of(context).push(route);
                    },
                    child: Container(
                      child: ListTile(
                        title: Text("Agriculture"),
                        leading: Icon(Icons.data_saver_off_outlined),
                        trailing: Icon(Icons.arrow_forward_ios),
                      ),
                    ),
                  ),
                  Container(
                    height: 0.5,
                    color: Colors.white,
                  ),*/





                ],
              ),
            ),*/

            child: Column(
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
                          Text(
                            'GUINEE CONAKRY',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 26,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
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
                                    InkWell(
                                      onTap: (){
                                        var route = MaterialPageRoute(
                                          builder: (BuildContext) => Agriculture(),
                                        );
                                        Navigator.of(context).push(route);
                                      } ,
                                      child: Category(
                                        image: 'images/Icon1.png',
                                        text: 'Agriculture',
                                        color: Color(0xFF47B4FF),
                                      ),
                                    ),
                                    InkWell(
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
                                    InkWell(
                                      onTap: (){

                                      } ,
                                      child: Category(
                                        image: 'images/Icon3.png',
                                        text: 'Elevage',
                                        color: Color(0xFFFD47DF),
                                      ),
                                    ),
                                    InkWell(
                                      onTap: (){
                                        var route = MaterialPageRoute(
                                          builder: (BuildContext) => Peche(),
                                        );
                                        Navigator.of(context).push(route);
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


          ),

        ],


      )




    );


  }
}



/// ---------------- class
class Category extends StatelessWidget {
  String image;
  String text;
  Color color;

  Category({required this.image, required this.text, required this.color});

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 177,
        width: 160,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: Color(0x9F3D416E),
        ),
        child: Column(
          children: [
            Image.asset(
              image,
              width: 120,
              height: 120,
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              text,
              style: TextStyle(color: color, fontSize: 18),
            ),
          ],
        ),
      );

  }
}

