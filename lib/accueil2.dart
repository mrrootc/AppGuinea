import 'package:flutter/material.dart';



class Accueil2 extends StatefulWidget{
  @override
  _Accueil2State createState() => _Accueil2State();

}

class _Accueil2State extends State<Accueil2> {




  @override
  Widget build(BuildContext context) {

    return Scaffold(

      appBar: AppBar(
        title: Text("Ma Guinée"),

      ),

      body: ListView(

        children: [
          /// ------- le header
          Container(
            height: 200,
            color: Colors.green.shade100,
            child: Center(
              child: Column(
                children: [

                  Container(
                    width: 150,
                    height: 150,
                    decoration: BoxDecoration(
                        color: Colors.black,
                        shape: BoxShape.circle,
                        image: DecorationImage(
                            fit: BoxFit.cover,
                            image: AssetImage("images/drapeau.png")
                        )

                    ),

                  ),

                  Text(
                    "Guinée Conakry",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 25,
                      fontFamily: 'Garamond',
                    ),
                  ),

                ],
              ),
            ),
          ),

          /// hyme
          Container(
            height: 620,

            margin: EdgeInsets.only(top: 5),
            padding: EdgeInsets.symmetric(horizontal: 2 , vertical: 25),
            decoration: BoxDecoration(
              color: Colors.grey.shade200,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(25),
                topRight: Radius.circular(25),
                bottomRight: Radius.circular(25),
                bottomLeft: Radius.circular(25),

              ),
            ),


            child: Column(
              children: [

              Text(
                "l'hymne national de la guinée",
                style: TextStyle(
                    fontFamily: 'Satisfy',
                    color: Colors.black,
                    fontSize: 25
                ),
               ),

               Container(
              height: 0.5,
              color: Colors.black,
              margin: EdgeInsets.only(top: 5 , bottom: 10),
            ),

                Text(
                  "Peuple d'Afrique Le Passé historique Que chante l'hymne de la Guinée fière et jeune Illustre épopée de nos frères Morts au champ d'honneur en libérant l'Afrique ! Le peuple de Guinée prêchant l'unité Appelle l'Afrique. Liberté ! C'est la voix d'un peuple Qui appelle tous ses frères de la grande Afrique. Liberté ! C'est la voix d'un peuple Qui appelle tous ses frères à se retrouver. Bâtissons l'unité africaine Dans l'indépendance recouvrée.",
                  style: TextStyle(
                      fontSize: 22,
                      color: Colors.black87,
                      fontFamily: 'Satisfy'

                  ),
                ),
              ],
            ),
          ),



          /// ------ les anciens presidents
          Container(
            height: 530,

            margin: EdgeInsets.only(top: 5),
            padding: EdgeInsets.symmetric(horizontal: 2 , vertical: 25),
            decoration: BoxDecoration(
              color: Colors.grey.shade200,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(25),
                topRight: Radius.circular(25),
                bottomRight: Radius.circular(25),
                bottomLeft: Radius.circular(25),

              ),
            ),


            child: Column(
              children: [

                Center(
                  child: Text(
                      "Les anciens presidents",
                    style: TextStyle(
                      fontFamily: 'Satisfy',
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 20
                    ),
                  ),
                ),
                Container(
                  height: 0.5,
                  color: Colors.black,
                  margin: EdgeInsets.only(top: 5 , bottom: 10),
                ),

                /// ---- 1
                Container(
                  color: Colors.white,
                  child: Row(
                    children: [
                      Container(
                        height: 100,
                        width: 100,
                        color: Colors.blue,


                        child: Image.asset("images/p1.jfif" , fit: BoxFit.cover,),
                      ),
                      SizedBox(width: 5),
                      Column(
                        children: [
                          Text(
                            "Ahmed sekou touré",
                            style: TextStyle(color: Colors.black ,
                                fontSize: 18,
                                fontWeight: FontWeight.bold
                            ),
                          ),
                          Text(
                            "Premier president ",
                            style: TextStyle(color: Colors.black ,
                                fontSize: 15
                            ),
                          ),
                          Text(
                            "Occupe la fonction de precidence  \n de 1958 jusqu'en 1984  ",
                            style: TextStyle(
                                color: Colors.black ,
                                fontSize: 12,
                                fontFamily: 'Garamond'
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),

                SizedBox(height: 5,),

                /// ---- 2
                Container(
                  color: Colors.white,
                  child: Row(
                    children: [
                      Container(
                        height: 100,
                        width: 100,
                        color: Colors.blue,


                        child: Image.asset("images/p2.jfif" , fit: BoxFit.cover,),
                      ),
                      SizedBox(width: 5),
                      Column(
                        children: [
                          Text(
                            "Lansana Conté",
                            style: TextStyle(color: Colors.black ,
                                fontSize: 18,
                                fontWeight: FontWeight.bold
                            ),
                          ),
                          Text(
                            "Deuxième president",
                            style: TextStyle(color: Colors.black ,
                                fontSize: 15
                            ),
                          ),
                          Text(
                            "Occupe la fonction de precidence  \n de 1984 jusqu'en 2008 ",
                            style: TextStyle(
                                color: Colors.black ,
                                fontSize: 12,
                                fontFamily: 'Garamond'
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),

                SizedBox(height: 5,),

                /// ---- 3
                Container(
                  color: Colors.white,
                  child: Row(
                    children: [
                      Container(
                        height: 100,
                        width: 100,
                        color: Colors.blue,


                        child: Image.asset("images/p3.jfif" , fit: BoxFit.cover,),
                      ),
                      SizedBox(width: 5),
                      Column(
                        children: [
                          Text(
                            "Moussa Dadis Camara",
                            style: TextStyle(color: Colors.black ,
                                fontSize: 18,
                                fontWeight: FontWeight.bold
                            ),
                          ),
                          Text(
                            "troisieme president",
                            style: TextStyle(color: Colors.black ,
                                fontSize: 15
                            ),
                          ),
                          Text(
                            "Occupe la fonction de precidence  \n de 2008 jusqu'en 2010   ",
                            style: TextStyle(
                                color: Colors.black ,
                                fontSize: 12,
                                fontFamily: 'Garamond'
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),

                SizedBox(height: 5,),

                /// ---- 4
                Container(
                  color: Colors.white,
                  child: Row(
                    children: [
                      Container(
                        height: 100,
                        width: 100,
                        color: Colors.blue,


                        child: Image.asset("images/p4.jfif" , fit: BoxFit.cover,),
                      ),
                      SizedBox(width: 5),
                      Column(
                        children: [
                          Text(
                            "Alpha Condé",
                            style: TextStyle(color: Colors.black ,
                                fontSize: 18,
                                fontWeight: FontWeight.bold
                            ),
                          ),
                          Text(
                            "Quatrième president",
                            style: TextStyle(color: Colors.black ,
                                fontSize: 15
                            ),
                          ),
                          Text(
                            "Occupe la fonction de precidence  \n de 2010 jusqu'en 2021 ",
                            style: TextStyle(
                                color: Colors.black ,
                                fontSize: 12,
                                fontFamily: 'Garamond'
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),

                SizedBox(height: 5,),


              ],
            ),
          ),

          /// ------ les actuel presidents
          Container(
            height: 390,

            margin: EdgeInsets.only(top: 5),
            padding: EdgeInsets.symmetric(horizontal: 2 , vertical: 25),
            decoration: BoxDecoration(
              color: Colors.grey.shade200,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(25),
                topRight: Radius.circular(25),
                bottomRight: Radius.circular(25),
                bottomLeft: Radius.circular(25),

              ),
            ),


            child: Column(
              children: [

                Center(
                  child: Text(
                    "Membres du gouvernement",
                    style: TextStyle(
                        fontFamily: 'Satisfy',
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 20
                    ),
                  ),
                ),
                Container(
                  height: 0.5,
                  color: Colors.black,
                  margin: EdgeInsets.only(top: 5 , bottom: 10),
                ),

                /// ----------
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    /// --- presi
                    Container(

                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(25),
                          topRight: Radius.circular(25),
                          bottomRight: Radius.circular(25),
                          bottomLeft: Radius.circular(25),

                        ),
                      ),

                      child: Column(
                        children: [
                          Container(
                            margin: EdgeInsets.all(2),
                            width: 195,
                            height: 200,



                            child: Image.asset("images/p5.jfif" , fit: BoxFit.cover,),
                          ),
                          Text("Mamadi Doumbouya" ,
                            style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.w600,
                                color: Colors.black,
                                fontFamily: 'Garamond'
                            ),
                          ),
                          Text("President \nDepuis 2021" ,
                            style: TextStyle(
                              fontFamily: 'Garamond',
                              fontWeight: FontWeight.w300,
                              fontSize: 17,
                            ),
                          ),

                        ],
                      ),
                    ),

                    /// --- premier ministre
                    Container(

                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(25),
                          topRight: Radius.circular(25),
                          bottomRight: Radius.circular(25),
                          bottomLeft: Radius.circular(25),

                        ),
                      ),

                      child: Column(
                        children: [
                          Container(
                            margin: EdgeInsets.all(2),
                            width: 195,
                            height: 200,



                            child: Image.asset("images/p6.jpg" , fit: BoxFit.cover,),
                          ),
                          Text("Bernard Goumou" ,
                            style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.w600,
                                color: Colors.black,
                                fontFamily: 'Garamond'
                            ),
                          ),
                          Text("Premier ministre \n" ,
                            style: TextStyle(
                              fontFamily: 'Garamond',
                              fontWeight: FontWeight.w300,
                              fontSize: 17,
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

          /// ------ les fleuves
          Container(
            height: 740,

            margin: EdgeInsets.only(top: 5),
            padding: EdgeInsets.symmetric(horizontal: 2 , vertical: 25),
            decoration: BoxDecoration(
              color: Colors.grey.shade200,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20),
                topRight: Radius.circular(20),
                bottomRight: Radius.circular(0),
                bottomLeft: Radius.circular(0),

              ),
            ),


            child: Column(
              children: [

                Center(
                  child: Column(
                    children: [
                      Text(
                        "Les fleuves",
                        style: TextStyle(
                            fontFamily: 'Satisfy',
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 20
                        ),
                      ),
                      Text(
                        "Il y a plusieurs grands fleuves en Guinée et il comporte plus de 1300 cours d'eau",
                        style: TextStyle(
                            fontFamily: 'Garamond',
                            color: Colors.black,
                            fontSize: 18
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  height: 0.5,
                  color: Colors.black,
                  margin: EdgeInsets.only(top: 5 , bottom: 10),
                ),

                /// ---------- 1
                ListTile(
                  leading: Icon(Icons.water_sharp),
                  title: Text("1. Le fleuve Niger" ,
                    style: TextStyle(
                      fontFamily: 'Garamond',
                      fontSize: 22,
                    ),
                  ),
                  subtitle: Text("il traverse la Guinée sur environ 200 kilomètres avant de poursuivre son cours vers le Mali et le Nigeria" ,
                    style: TextStyle(
                      fontFamily: 'Garamond',
                      fontSize: 18,
                    ),
                  ),

                ),

                /// ---------- 2
                ListTile(
                  leading: Icon(Icons.water_sharp),
                  title: Text("2 . Le fleuve Sénégal" ,
                    style: TextStyle(
                      fontFamily: 'Garamond',
                      fontSize: 22,
                    ),
                  ),
                  subtitle: Text("il forme partiellement la frontière entre la Guinée et le Sénégal surenviron 200 km" ,
                    style: TextStyle(
                      fontFamily: 'Garamond',
                      fontSize: 18,
                    ),
                  ),

                ),

                /// ---------- 3
                ListTile(
                  leading: Icon(Icons.water_sharp),
                  title: Text("Le fleuve Milo" ,
                    style: TextStyle(
                      fontFamily: 'Garamond',
                      fontSize: 22,
                    ),
                  ),
                  subtitle: Text(" il est un affluent du Niger dans la région de Kankan" ,
                    style: TextStyle(
                      fontFamily: 'Garamond',
                      fontSize: 18,
                    ),
                  ),

                ),

                /// ---------- 4
                ListTile(
                  leading: Icon(Icons.water_sharp),
                  title: Text("4 . Le fleuve Gambia" ,
                    style: TextStyle(
                      fontFamily: 'Garamond',
                      fontSize: 22,
                    ),
                  ),
                  subtitle: Text("il forme la frontière entre la Guinée et la Gambie sur environ 200 km" ,
                    style: TextStyle(
                      fontFamily: 'Garamond',
                      fontSize: 18,
                    ),
                  ),

                ),

                /// ---------- 5
                ListTile(
                  leading: Icon(Icons.water_sharp),
                  title: Text("5 . Le fleuve Konkouré" ,
                    style: TextStyle(
                      fontFamily: 'Garamond',
                      fontSize: 22,
                    ),
                  ),
                  subtitle: Text("il prend sa source dans les montagnes du Fouta Djallon et se jette dans l'océan Atlantique" ,
                    style: TextStyle(
                      fontFamily: 'Garamond',
                      fontSize: 18,
                    ),
                  ),

                ),
              ],
            ),
          ),

          /// ------ les montagne
          Container(
            height: 1100,

            margin: EdgeInsets.only(top: 5),
            padding: EdgeInsets.symmetric(horizontal: 2 , vertical: 25),
            decoration: BoxDecoration(
              color: Colors.grey.shade200,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(25),
                topRight: Radius.circular(25),
                bottomRight: Radius.circular(25),
                bottomLeft: Radius.circular(25),

              ),
            ),


            child: Column(
              children: [

                Center(
                  child: Column(
                    children: [
                      Text(
                        "Montagne",
                        style: TextStyle(
                            fontFamily: 'Satisfy',
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 20
                        ),
                      ),
                      Text(
                        "Les hauts plateaux de Guinée sont un ensemble de plateau montagneux qui s'étend du centre de la Guinée au Nord de la Sierra Leone et du Liberia jusqu'à l'Ouest de la Côte d'Ivoire. Les hautes plateaux comprennent un certain nombre de montagnes, chaînes et plateaux, y compris les hauts plateaux du Fouta Djalon dans le centre de la Guinée, les monts Loma en Sierra Leone, les massifs de Simandou et de Kourandou dans le Sud-Est de la Guinée, la chaîne du Nimba à la frontière de la Guinée, du Liberia et de la Côte d’Ivoire et les monts du Toura dans l’Ouest de la Côte d’Ivoire",
                        style: TextStyle(
                            fontFamily: 'Garamond',
                            color: Colors.black,
                            fontSize: 18
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  height: 0.5,
                  color: Colors.black,
                  margin: EdgeInsets.only(top: 5 , bottom: 10),
                ),

                /// ----------1
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    /// --- montagne ganga
                    Container(

                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(25),
                          topRight: Radius.circular(25),
                          bottomRight: Radius.circular(25),
                          bottomLeft: Radius.circular(25),

                        ),
                      ),

                      child: Column(
                        children: [
                          Container(
                            margin: EdgeInsets.all(2),
                            width: 195,
                            height: 200,



                            child: Image.asset("images/ganga.jfif" , fit: BoxFit.cover,),
                          ),
                          Text("Mont Gangan" ,
                            style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.w600,
                                color: Colors.black,
                                fontFamily: 'Garamond'
                            ),
                          ),
                          Text("Culmine à 1 117 \n mètres d'altitude" ,
                            style: TextStyle(
                              fontFamily: 'Garamond',
                              fontWeight: FontWeight.w300,
                              fontSize: 17,
                            ),
                          ),

                        ],
                      ),
                    ),

                    /// --- montagne nimba
                    Container(

                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(25),
                          topRight: Radius.circular(25),
                          bottomRight: Radius.circular(25),
                          bottomLeft: Radius.circular(25),

                        ),
                      ),

                      child: Column(
                        children: [
                          Container(
                            margin: EdgeInsets.all(2),
                            width: 195,
                            height: 200,



                            child: Image.asset("images/nimba.jfif" , fit: BoxFit.cover,),
                          ),
                          Text("Mont nimba" ,
                            style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.w600,
                                color: Colors.black,
                                fontFamily: 'Garamond'
                            ),
                          ),
                          Text("s'élevant à 1 752m  \nd'altitude" ,
                            style: TextStyle(
                              fontFamily: 'Garamond',
                              fontWeight: FontWeight.w300,
                              fontSize: 17,
                            ),
                          ),

                        ],
                      ),
                    ),

                  ],
                ),

                SizedBox(height: 10,),

                /// --------- 2
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    /// --- montagne loura
                    Container(

                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(25),
                          topRight: Radius.circular(25),
                          bottomRight: Radius.circular(25),
                          bottomLeft: Radius.circular(25),

                        ),
                      ),

                      child: Column(
                        children: [
                          Container(
                            margin: EdgeInsets.all(2),
                            width: 195,
                            height: 200,



                            child: Image.asset("images/loura.jfif" , fit: BoxFit.cover,),
                          ),
                          Text("Mont Loura" ,
                            style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.w600,
                                color: Colors.black,
                                fontFamily: 'Garamond'
                            ),
                          ),
                          Text("culmine à 1 515 \n mètres d'altitude" ,
                            style: TextStyle(
                              fontFamily: 'Garamond',
                              fontWeight: FontWeight.w300,
                              fontSize: 17,
                            ),
                          ),

                        ],
                      ),
                    ),

                    /// --- montagne kakoulima
                    Container(

                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(25),
                          topRight: Radius.circular(25),
                          bottomRight: Radius.circular(25),
                          bottomLeft: Radius.circular(25),

                        ),
                      ),

                      child: Column(
                        children: [
                          Container(
                            margin: EdgeInsets.all(2),
                            width: 195,
                            height: 200,



                            child: Image.asset("images/kakoulima.jfif" , fit: BoxFit.cover,),
                          ),
                          Text("Mont Kakoulima" ,
                            style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.w600,
                                color: Colors.black,
                                fontFamily: 'Garamond'
                            ),
                          ),
                          Text("Culmine à 1 011  \nmètres d'altitude " ,
                            style: TextStyle(
                              fontFamily: 'Garamond',
                              fontWeight: FontWeight.w300,
                              fontSize: 17,
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


      ),
      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }


}



