import 'package:flutter/material.dart';
import 'package:learn/Cereale.dart';
import 'package:learn/Tubercule.dart';
import 'package:learn/legumes.dart';

import 'main.dart';

class Agriculture extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Agriculture'),
      ),
      body: ListView(
        children: [
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Cereale()),
              );
            },
            child: Card(
              margin: const EdgeInsets.all(30),

              child: Row(
                  children: [
                    Container(
                      padding: const EdgeInsets.all(10),
                      child: Image.asset(
                        'images/cereale.jpg',
                        width: 100,
                        height: 100,
                        fit: BoxFit.cover,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            padding: const EdgeInsets.only(left: 20),
                            child:
                            Text('Céréale',style: const TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 32,
                                fontFamily: "Satisfy"
                            )
                            ),
                          ),
                        ],
                      ),
                    )
                  ]
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(context,
              MaterialPageRoute(builder: (context) => Tubercule()),
              );
            },
            child: Card(
              margin: const EdgeInsets.all(30),
              elevation: 10,
              child: Row(
                  children: [
                    Container(
                      padding: const EdgeInsets.all(10),
                      child: Image.asset(
                          'images/tubercule.jpeg',
                          width: 100,
                          height: 100,
                          fit: BoxFit.cover,
                        ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            padding: const EdgeInsets.only(left: 20),
                            child:
                            const Text('Tubercule',style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 32,
                                fontFamily: "Satisfy"
                            )
                            ),
                          ),
                        ],
                      ),
                    )
                  ]
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
             Navigator.push(context,
                 MaterialPageRoute(builder: (context) => Legumes()));
            },
            child: Card(
              margin: const EdgeInsets.all(30),
              elevation: 10,
              child: Row(
                  children: [
                    Container(
                      padding: const EdgeInsets.all(10),
                      child: Image.asset(
                        'images/legume.jpeg',
                        width: 100,
                        height: 100,
                        fit: BoxFit.cover,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10),
                      child: Column(
                        children: [
                          Container(
                            padding: const EdgeInsets.only(left: 20),
                            child:
                            Text('Légume',style: const TextStyle(fontWeight: FontWeight.bold,
                                fontSize: 32,
                                fontFamily: "Satisfy"
                            )
                            ),
                          ),
                        ],
                      ),
                    )
                  ]
              ),
            ),
          ),
        ],
      ),
    );
  }
}
