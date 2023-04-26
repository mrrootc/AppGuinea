import 'package:flutter/material.dart';

class Cereale extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Les Cereales"),
      ),
      body: ListView(
        children: [
          Container(
            child: Image.asset(
              'images/riz2.jpg',
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
                        'L\'agriculture des cereales',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 24,
                          fontFamily: "Satisfy"
                        ),
                      ),
                      SizedBox(height: 8),
                      Text(
                        'Les céréales sont des plantes cultivées pour leurs graines comestibles riches en glucides, en protéines et en fibres. Elles constituent une source importante de nourriture dans de nombreuses cultures à travers le monde. Les principales céréales cultivées dans le monde comprennent le blé, le riz, le maïs, le sorgho, le millet et l\'orge.\n '
                            'La guinee cultive la pluspart des cereales notamment le riz, le maïs, le sorgho',
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
                'Les différentes céréales :',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                  fontFamily: "Satisfy"
                ),
              ),
              SizedBox(height: 10),
              Container(
                height: 100,
                padding: EdgeInsets.only(left: 45),
                width: 400,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    _buildCerealItem('Riz', 'images/riz.jpg', 'saison de semence en guinée "début août- jusqu’en fin septembre", retrouver abondamment en "Basse guinée" et en "Haute Guinée"',context),
                    _buildCerealItem('Maïs', 'images/mais.jpg', 'saison de semence en guinée "saison pluvieux", cultivable en "Basse et Moyenne Guinée',context),
                    _buildCerealItem('Fonio', 'images/fonio.jpg', 'saison de semence "une saison sèche qui couvre généralement la période de novembre à avril et une saison pluvieuse qui s\'étend de mai à octobre",cultivable "dans tous les regions de la guinée"',context),
                    _buildCerealItem('Mil', 'images/mil.jpeg', 'saison de semence "en avril au début de la saison des pluie ",retrouver en "Basse et haute Guinée',context),
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
                title:
                Container(
                    height: 100,
                    color: Color(0xFFFFCA3A),
                    child:
                    Text(titre, style: TextStyle(fontFamily: "Satisfy"),
                    )
                ),
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
