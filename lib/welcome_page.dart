import 'package:flutter/material.dart';
import 'package:learn/accueil1.dart';
import 'delayed.dart';
const d_red = const Color(0xFF8AC926);

class WelcomePage extends StatelessWidget {
  const WelcomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Color(0xFFF9F9F9),
      body: SingleChildScrollView(child: Container(
          margin: EdgeInsets.symmetric(
            vertical: 60,
            horizontal: 30,
          ),
          child: Column(
            children: [
              pageDemarage,
              DelayedAnimation(delay: 2000,
                  child: Container(
                    height: 250,
                    child: Image.asset('images/carte.jpg',

                    ),
                  )
              ),
              DelayedAnimation(delay: 3000,
                child: Container(
                  height: 200,
                  child: Text(""
                      "Un pays francophone situé au sud-ouest de l'Afrique occidentale. "
                      "Pour pouvoir découvrir ce beau pays vous n'avez qu'a ..."
                    ,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontFamily: 'Garamond',
                        fontSize: 22
                    ),),
                ),
              ),
              DelayedAnimation(delay: 2000,
                child: Container(
                    width: double.infinity,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          primary: d_red,
                          shape: StadiumBorder(),
                          padding: EdgeInsets.all(13)
                      ),
                      child:
                      Text("EXPLORER",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: 23,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'Garamond',
                            color: Colors.white
                        ),),
                      onPressed: () {
                        var route = MaterialPageRoute(
                          builder: (BuildContext) => Accueil1(),
                        );
                        Navigator.of(context).push(route);
                      },
                    )
                ),
              ),
            ],
          )
      ),
      ),
    );
  }
}
Widget pageDemarage = Container(
  height: 150,
  margin: EdgeInsets.only(
    top: 20,
    bottom: 0,
  ),
  child: Column(
    crossAxisAlignment: CrossAxisAlignment.center,
    children: [
      Text("REPUBLIQUE DE GUINEE",
          style: TextStyle(
              fontSize: 25,
              fontFamily: 'Cormorant_Garamond'
          )
      ),
      Center(
        child: Row(
          children: [
            SizedBox(width: 80),
            Text("Travail" , style: TextStyle(color: Colors.red),),
            SizedBox(width: 5),
            Text("Justice" , style: TextStyle(color: Colors.yellow)),
            SizedBox(width: 5),
            Text("Solidarité" , style: TextStyle(color: Colors.green))
          ],
        ),
      )
    ],
  ),
);