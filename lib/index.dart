import 'package:flutter/material.dart';
import 'package:learn/accueil1.dart';



class Index extends StatefulWidget{
  @override
  _IndexState createState() => _IndexState();

}

class _IndexState extends State<Index> {


  @override
  Widget build(BuildContext context) {

    return Scaffold(


      body: ListView(

        children: [

          /// -------- la description
          InkWell(
            onTap: (){
              var route = MaterialPageRoute(
                builder: (BuildContext) => Accueil1(),
              );
              Navigator.of(context).push(route);
            },
            child: Container(
              height: 50,
              width: 50,
              color: Colors.blue,
              child: Center(
                child: Text("aller"),
              ),
            ),
          )

        ],


      ),
    );
  }
}
