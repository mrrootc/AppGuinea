
import 'package:flutter/material.dart';


class LisviewtourismePage extends StatefulWidget {
  const LisviewtourismePage({Key? key}) : super(key: key);

  @override
  State<LisviewtourismePage> createState() => _LisviewtourismePageState();
}

class _LisviewtourismePageState extends State<LisviewtourismePage> {
  var titileListe = [
    "Succes",
    "Motivation",
    "hard cord",
    "Decision",
    "confidence",
    "Team word",
  ];
  var imgListe = [
    "images/icons/loq.jpg",
    "images/icons/cascade.jpg",
    "images/icons/grandDame.jpg",
    "images/icons/nimba.jpg",
    "images/icons/turque.jpg",
    "images/icons/chute.jpg",
    "images/icons/4f.jpg"
  ];
  var desList = [
    "Les îles de loos sont un groupes d'îles situées au large de Conakry en Guinnée. Leur nom est tiré du portugais, premier explorateur du lieu: Lhas dos los idolos. probablement"
    "Un site exceptionnel ! Pas très loin de conakry, c'est vraiment un endroit magnifique.l'au est propre et on peut s'y baigner. Eviter le coeur de la saison sèche.",
    "C'est du lourd",
    "C'est du lourd",
    "C'est du lourd",
    "C'est du lourd"
  ];
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width * 0.6;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFFFF595E),
        title: Text("La liste des lieux Touristiques",
        style: TextStyle(
          fontFamily: 'Cormorant_Garamond',
          fontSize: 30,
          color: Colors.white,
          fontWeight: FontWeight.bold
        ),
        ),
        elevation: 0,
      ),
      body: ListView.builder(
        itemCount: imgListe.length,
          itemBuilder: (context, index){
            return GestureDetector(
              onTap: () {
                print(showDialogueFunc(context, imgListe[index], titileListe[index], desList[index]));
              },
              child: Card(

                 child: Row(
                    children:<Widget>[
                      Container(
                        width: 100,
                        height: 100,
                        child: Image.asset(imgListe[index]),
                      ),
                      Padding(padding: const EdgeInsets.all(10.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children:<Widget> [
                            Text(
                              titileListe[index],
                              style: TextStyle(
                                fontSize: 25,
                                fontFamily: 'Cormorant_Garamond',
                                color: Colors.grey,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Container(
                              width: width,
                              child: Text(
                                desList[index],
                                style: TextStyle(
                                    fontSize: 18,
                                    fontFamily: 'Cormorant_Garamond',
                                    color: Colors.grey
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ],
                  )
              ),

            );
          }
      ),
    );
  }
}
showDialogueFunc(context, img, title, desc){
  return showDialog(
      context: context,
      builder: (context){
    return Center(
      child: Material(
        type: MaterialType.transparency,
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Colors.white
          ),
          padding: EdgeInsets.all(15),
          width: MediaQuery.of(context).size.width * 0.7,
          height: 320,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              ClipRRect(
                borderRadius: BorderRadius.circular(5),
                child: Image.asset(img,
                width: 200,
                    height: 200,),
              ),
              SizedBox(height: 10,),
              Text(
                title,
                style: TextStyle(
                  fontSize: 25,
                  color: Colors.grey
                ),
              ),
              SizedBox(height: 10,),
              Text(
                desc,
                style: TextStyle(
                    fontSize: 25,
                    color: Colors.grey[500]
                ),
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
      ),
    );
  }
  );
}
