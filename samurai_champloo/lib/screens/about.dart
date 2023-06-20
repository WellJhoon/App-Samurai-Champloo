import 'package:flutter/material.dart';

class About extends StatelessWidget {
  const About({super.key});

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
                  image: NetworkImage('lib/imgs/samurai-champloo.jpg'),
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
                        Text('Samurai Champloo',
                            style: TextStyle(
                                fontSize: 45,
                                color: Colors.red[400],
                                fontWeight: FontWeight.bold)),
                      ]),
                      Padding(
                        padding: const EdgeInsets.only(top: 20),
                        child: Column(
                          children: [
                            Row(
                              children: [
                                Container(
                                  margin: const EdgeInsets.only(right: 10),
                                  child: const Icon(Icons.type_specimen),
                                ),
                                const Text('Anime'),
                              ],
                            ),
                            Container(
                              margin:
                                  const EdgeInsets.only(top: 17, bottom: 17),
                              child: Row(
                                children: [
                                  Container(
                                    margin: const EdgeInsets.only(right: 10),
                                    child: const Icon(
                                        Icons.calendar_month_outlined),
                                  ),
                                  const Text('20 de mayo de 2004  '),
                                ],
                              ),
                            ),
                            Row(
                              children: [
                                Container(
                                  margin: const EdgeInsets.only(right: 10),
                                  child: const Icon(Icons.numbers_outlined),
                                ),
                                const Text('26 Episodios'),
                              ],
                            )
                          ],
                        ),
                      ),
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
                            'Descripción',
                            style: TextStyle(
                                fontSize: 20,
                                color: Colors.grey[700],
                                fontWeight: FontWeight.bold),
                          ),
                          Container(
                              margin: const EdgeInsets.only(top: 10),
                              child: Text(
                                '"Samurai Champloo" es un emocionante anime que fusiona la estética del Japón feudal con elementos modernos. Sigue las aventuras de Mugen, un espadachín salvaje, Jin, un samurái tradicional, y Fuu, una joven en busca de un samurái misterioso. Con una mezcla de acción intensa, música hip-hop y temas profundos, la serie cautiva con su estilo visual único y su narrativa envolvente.',
                                style: TextStyle(
                                    fontSize: 15, color: Colors.grey[400]),
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
