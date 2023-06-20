import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Character extends StatefulWidget {
  const Character({super.key});

  @override
  State<Character> createState() => _CharacterState();
}

class _CharacterState extends State<Character> {
  final characters = [
    SerieCharacter(
        name: 'Mugen',
        image: 'lib/imgs/mugen.jpg',
        details:
            'Es el protagonista principal de la serie, un espadachín vagabundo de estilo salvaje y poco convencional. Es conocido por su temperamento explosivo y su habilidad excepcional en el combate.',
        type: 'Protagonista'),
    SerieCharacter(
        name: 'jin',
        image: 'lib/imgs/jin.jpg',
        details:
            'Es un samurái tradicional y disciplinado que se une a Mugen y Fuu en su viaje. A diferencia de Mugen, su estilo de lucha es más refinado y sigue los principios clásicos del samurái. Jin es serio y reservado, con una gran habilidad en el manejo de la espada.',
        type: 'Principal'),
    SerieCharacter(
        name: 'Fuu',
        image: 'lib/imgs/Fuu.jpg',
        details:
            'Es una joven valiente y decidida que busca al "samurái que huele a girasoles". Ella es la encargada de unir a Mugen y Jin y los convence para que la ayuden en su misión. Fuu es un personaje optimista y astuto, a menudo actuando como el equilibrio entre los dos guerreros.',
        type: 'Antagonista'),
    SerieCharacter(
        name: 'Kariya Kagetoki',
        image: 'lib/imgs/KariyaKagetoki.jpg',
        details:
            'Es uno de los principales antagonistas de la serie. Es un rōnin poderoso y despiadado que busca confrontar y derrotar a Mugen. Kariya es un espadachín hábil y representa una amenaza constante para los protagonistas a lo largo de su viaje.',
        type: 'Antagonista'),
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: characters.length,
        padding: const EdgeInsets.only(top: 20, left: 10),
        itemBuilder: (context, index) {
          return ListTile(
            leading: Image.network(characters[index].image),
            title: Text(characters[index].name),
            textColor: Colors.grey[800],
            horizontalTitleGap: 30,
            subtitle: Text(characters[index].type),
            minLeadingWidth: 95,
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => DetailsCharacter(
                    character: characters[index],
                  ),
                ),
              );
            },
          );
        });
  }
}

class DetailsCharacter extends StatelessWidget {
  const DetailsCharacter({required this.character});

  final SerieCharacter character;

  @override
  Widget build(BuildContext context) {
    final image = character.image;
    final name = character.name;
    final details = character.details;
    final type = character.type;

    return Scaffold(
        body: SizedBox(
      width: double.maxFinite,
      height: double.maxFinite,
      child: Stack(
        children: [
          Positioned(
            left: 0,
            right: 0,
            child: Container(
              width: double.maxFinite,
              height: 300,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: NetworkImage(image),
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
                height: 530,
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30),
                      topRight: Radius.circular(30)),
                ),
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      Row(children: [
                        Text(name,
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
                                  child: const Icon(Icons.merge_type),
                                ),
                                Text(type),
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
                                  const Text('Julio 26, 2019'),
                                ],
                              ),
                            ),
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
                                details,
                                style: TextStyle(
                                    fontSize: 15, color: Colors.grey[400]),
                              )),
                        ],
                      )
                    ],
                  ),
                )),
          ),
        ],
      ),
    ));
  }
}

class SerieCharacter {
  String name;
  String image;
  String details;
  String type;

  SerieCharacter(
      {required this.name,
      required this.image,
      required this.details,
      required this.type});
}
