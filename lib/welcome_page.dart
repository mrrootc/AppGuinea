import 'package:flutter/material.dart';
import 'package:learn/Agriculture.dart';
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
                      "La République de Guinée est situé au sud-ouest de l'Afrique occidentale. "
                      "Pour pouvoir découvrir ce beau pays vous n'avez qu'a ..."
                      ,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontFamily: 'Garamond',
                    fontSize: 27
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
                      Navigator.push(context, MaterialPageRoute(builder: (context) => Agriculture())
                      );
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
  child: Text("Bienvenue en GUINEE",
  textAlign: TextAlign.center,
  style: TextStyle(
    fontSize: 32,
    fontFamily: 'Garamond'
  )
  ),
);