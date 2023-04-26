import 'package:flutter/material.dart';

class Legumes extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Legumes"),
      ),
      body: ListView(
        children: [
          Container(
            child: Image.asset(
              'images/legume.jpeg',
              height: 260,
              width: 300,
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'L\'agriculture des legumes',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 24,
                            fontFamily: "Satisfy"
                        ),
                      ),
                      SizedBox(height: 8),
                      Text(
                        "En Guinée les saisons de légumes ont encore tout leur sens ! Pas d’agriculture industrialisées. "
                            "Voici quelques repères qui vous aideront à savoir quand est ce que vous pourrez faire votre sauce "
                            "aux gombos, votre salade d’avocat où votre ragout de tubercules. Cet article vous dira quand ils sont "
                            "disponibles, voir meilleurs sur les marchés locaux.",
                        style: TextStyle(
                            fontSize: 18,
                            fontFamily: "Garamond"
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 20),
              Text(
                'Quelque legumes :',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                    fontFamily: "Satisfy"
                ),
              ),
              SizedBox(height: 10),
              Container(
                height: 300,
                padding: EdgeInsets.only(left: 40),
                width: 400,
                child: ListView(
                  scrollDirection: Axis.vertical,
                  children: [
                    Container(
                      child: Container(
                          padding: EdgeInsets.all(10),
                          child: Column(
                            children: [
                              Container(
                                height: 100,
                                child: Row(
                                  children: [
                                    _buildCerealItem('Manioc', 'images/manioc.jpeg', 'Saison de semence en Guinée Ainsi, pour la période testée novembre, décembre, les deux premières décades de novembre sont favorables à la plantation alors que les récoltes échelonnées, \n Cultuvable en Haute-Guinée.',context),
                                    _buildCerealItem('Pomme de terre', 'images/pomme.jpeg', 'Saison de semence en guinée "saison pluvieux", cultivable en "Basse et Moyenne Guinée',context),
                                    _buildCerealItem('Patate', 'images/patate.jpeg', 'Saison de semence: une saison sèche qui couvre généralement la période de novembre à avril et une saison pluvieuse qui s\'étend de mai à octobre,\ncultivable "dans tous les regions de la guinée"',context),

                                  ],
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.only(left: 70),
                                child: Row(
                                  children: [
                                    _buildCerealItem('Taro', 'images/taro.jpeg', 'saison de semence "en avril au début de la saison des pluie ",retrouver en "Basse et haute Guinée',context),
                                    _buildCerealItem('Igname', 'images/igname.jpg', 'Saison de semence en guinée "début août- jusqu’en fin septembre", retrouver abondamment en "Basse guinée" et en "Haute Guinée"',context),
                                  ],
                                ),
                              )
                            ],
                          )
                      ),
                    )

                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildCerealItem(String titre, String image, String description, BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8),
      child: GestureDetector(
        onTap: () {
          showDialog(
            context: context,
            builder: (BuildContext context) {
              return AlertDialog(
                title: Text(titre, style: TextStyle(fontFamily: "Satisfy"),),
                content: Container(
                    child: Column(
                      children: [
                        Image.asset(image),
                        Text(description, style:TextStyle(fontFamily: "Garamond", fontSize: 20, fontStyle: FontStyle.normal),)
                      ],
                    )
                ),
                actions: [
                  TextButton(
                    child: Text('Fermer'),
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                  ),
                ],
              );
            },
          );
        },
        child: Column(
          children: [
            CircleAvatar(
              backgroundImage: AssetImage(image),
              radius: 30,
            ),
            SizedBox(height: 5),
            Text(
              titre,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 16,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
