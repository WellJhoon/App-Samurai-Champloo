import 'package:flutter/material.dart';

import 'moments.dart';
import 'myLife.dart';

class Principal extends StatefulWidget {
  const Principal({super.key});

  @override
  State<Principal> createState() => _PrincipalState();
}

class _PrincipalState extends State<Principal> {
  @override
  void initState() {
    super.initState();
  }

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
                  image: NetworkImage('lib/imgs/Yo.jpg'),
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
                        Text('Jhon Medina',
                            style: TextStyle(
                                fontSize: 30,
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
                                  child: const Icon(Icons.phone_outlined),
                                ),
                                const Text('829-396-4502'),
                              ],
                            ),
                            Container(
                              margin:
                                  const EdgeInsets.only(top: 17, bottom: 17),
                              child: Row(
                                children: [
                                  Container(
                                    margin: const EdgeInsets.only(right: 10),
                                    child:
                                        const Icon(Icons.contact_page_rounded),
                                  ),
                                  const Text('https://github.com/WellJhoon'),
                                ],
                              ),
                            ),
                            Row(
                              children: [
                                Container(
                                  margin: const EdgeInsets.only(right: 10),
                                  child: const Icon(Icons.work_outline_rounded),
                                ),
                                const Text('Back End Developer Student'),
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
                            'Quieres ver de que trata, ingresa aqui',
                            style: TextStyle(
                                fontSize: 18,
                                color: Colors.grey[700],
                                fontWeight: FontWeight.bold),
                          ),
                          Container(
                              margin: const EdgeInsets.only(top: 10),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  ElevatedButton(
                                    onPressed: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                const Moments()),
                                      );
                                    },
                                    child: const Text('Mejores momentos'),
                                  ),
                                  ElevatedButton(
                                    onPressed: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                const MyLife()),
                                      );
                                    },
                                    child: const Text('Esta serie en mi vida'),
                                  ),
                                ],
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
