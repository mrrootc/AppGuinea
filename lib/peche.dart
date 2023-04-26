import 'package:flutter/material.dart';



class Peche extends StatefulWidget{
  @override
  _PecheState createState() => _PecheState();

}

class _PecheState extends State<Peche> {




  @override
  Widget build(BuildContext context) {

    return Scaffold(

      appBar: AppBar(
        title: Text("La Pêche"),
        backgroundColor: Color(0xFFFF595E),

      ),

      body: ListView(

        children: [
          /// ------- le header
          Container(
            height: 200,
            color: Color(0xFFFFCA3A),

              child: Card(
                elevation: 10,
                  child: Image.asset("images/peche2.jfif" , fit: BoxFit.fill)
              ),

          ),

          /// explicatio
          Container(
            height: 1600,

            margin: EdgeInsets.only(top: 1),
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
                  "Le secteur de la pêche a été identifié comme un segment de l’activité économique pouvant contribuer à la croissance économique du pays,  à la réduction de la pauvreté tant en milieu urbain que rural et à la sécurité alimentaire par la satisfaction des besoins en protéines animales à base de poissons. Le développement du secteur de la pêche et de l’aquaculture, repose essentiellement sur le secteur privé regroupé au sein d’une organisation faitière : la Confédération Nationale des Professionnels de la Pêche (CONAPEG) et ses faitières. Le Président de la République de Guinée, son Excellence le Professeur Alpha CONDE, a instruit la mise en « place d’un plan stratégique qui vise à valoriser les ressources halieutiques » . C’est dans cette optique que le climat des affaires s’est fortement amélioré par la mise en place d’outils juridiques rénovés (code de la pêche maritime amendé, code de la pêche continentale amendé, code de l’aquaculture).",
                  style: TextStyle(
                      fontSize: 21,
                      color: Colors.black87,
                      fontFamily: 'Garamond'

                  ),
                ),
                
                Container(height: 0.5,
                  color: Colors.black,
                  margin: EdgeInsets.all(10),
                ),
                Text(
                  "Façade maritime : 300 km \n Superficie du plateau continental (jusqu’aux fonds de 200 mètres) : 43 000 km2 \n Superficie de la ZEE : 71 000km2 \nPotentiel de capture : 300 000 tonnes Grands types de ressources ressources poissonnières, ressources crevettières, ressources céphalopodières",
                  style: TextStyle(
                      fontSize: 22,
                      color: Colors.black87,
                      fontFamily: 'Garamond'

                  ),
                ),
              ],
            ),
          ),
         Row(
           mainAxisAlignment: MainAxisAlignment.spaceAround,
           children: [
             /// ----- 1
             Container(
               height: 200,
               width: 205,
               color: Color(0xFFFFCA3A),

               child: Card(
                   elevation: 10,
                   child: Image.asset("images/peche1.webp" , fit: BoxFit.fill)
               ),

             ),

             /// ----- 2
             Container(
               height: 200,
               width: 205,
               color: Color(0xFFFFCA3A),

               child: Card(
                   elevation: 10,
                   child: Image.asset("images/peche3.jfif" , fit: BoxFit.fill)
               ),

             ),
           ],
         ),

         /// ----- 1
         Container(
            height: 200,
            color: Color(0xFFFFCA3A),

            child: Card(
                elevation: 10,
                child: Image.asset("images/peche4.jfif" , fit: BoxFit.fill)
            ),

          ),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              /// ----- 1
              Container(
                height: 200,
                width: 205,
                color: Color(0xFFFFCA3A),

                child: Card(
                    elevation: 10,
                    child: Image.asset("images/peche5.jfif" , fit: BoxFit.fill)
                ),

              ),

              /// ----- 2
              Container(
                height: 200,
                width: 200,
                color: Color(0xFFFFCA3A),

                child: Card(
                    elevation: 10,
                    child: Image.asset("images/peche6.jfif" , fit: BoxFit.fill)
                ),

              ),
            ],
          ),



        ],


      ),
      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }


}



