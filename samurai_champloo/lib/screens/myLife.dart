import 'package:flutter/material.dart';

class MyLife extends StatelessWidget {
  const MyLife({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        width: double.maxFinite,
        height: double.maxFinite,
        child: Stack(children: [
          Positioned(
            left: 0,
            right: 0,
            child: Container(
              width: double.maxFinite,
              height: 300,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: NetworkImage('lib/imgs/sobremi.jpg'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          Positioned(
            top: 280,
            child: Container(
                padding: const EdgeInsets.all(30),
                width: MediaQuery.of(context).size.width,
                height: 500,
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30),
                      topRight: Radius.circular(30)),
                ),
                child: SingleChildScrollView(
                  padding: const EdgeInsets.only(bottom: 100),
                  child: Column(
                    children: [
                      Row(children: [
                        Text(
                          'Hola !!',
                          style: TextStyle(
                              decoration: TextDecoration.none,
                              fontSize: 30,
                              color: Colors.red[500],
                              fontWeight: FontWeight.bold),
                        ),
                      ]),
                      Padding(
                        padding: const EdgeInsets.only(top: 15, bottom: 15),
                        child: Divider(
                          color: Colors.grey[300],
                          indent: 10,
                          endIndent: 10,
                        ),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Como influyo este animo en mi vida',
                            style: TextStyle(
                                decoration: TextDecoration.none,
                                fontSize: 20,
                                color: Colors.grey[700],
                                fontWeight: FontWeight.bold),
                          ),
                          Container(
                              margin: const EdgeInsets.only(top: 10),
                              child: Text(
                                'En velda mi es un anime mas, me gusto pero no lo veo como algo uff, lo elei por la paleta de colores que tiene',
                                style: TextStyle(
                                    decoration: TextDecoration.none,
                                    fontSize: 15,
                                    color: Colors.grey[400]),
                              )),
                        ],
                      )
                    ],
                  ),
                )),
          ),
        ]));
  }
}
