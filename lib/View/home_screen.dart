import 'package:exercise1/Widgets/pokemon.dart';
import 'package:flutter/material.dart';

/// HomeScreen adalah class yang digunakan untuk membuat tampilan home screen. 
class HomeScreen extends StatefulWidget {
  /// const HomeScreen({super.key}) adalah konstruktor yang mengambil argumen super.key, tetapi tampaknya terdapat kesalahan sintaks. Seharusnya bukan `super.key`, tetapi `this.key`.
  const HomeScreen({
    Key? key,
    this.name,
  }) : super(key: key);

/// String name digunakan untuk menyimpan nama user yang diinputkan pada form login.
  final String? name;

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

/// _HomeScreenState adalah class yang digunakan untuk membuat state dari HomeScreen.
class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(
                child: Row(
                  children: [
                    Expanded(
                      child: Container(
                        padding: const EdgeInsets.only(top: 30, left: 20),
                        child: RichText(
                          text: TextSpan(
                            text: 'Hello, ',
                            style: const TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                            ),
                            children: <TextSpan>[
                              TextSpan(
                                text: '${widget.name.toString()}',
                                style: const TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.amber,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Container(
                      margin:
                          const EdgeInsets.only(top: 30, left: 20, right: 20),
                      width: 60,
                      height: 60,
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.grey,
                        image: DecorationImage(
                          fit: BoxFit.fill,
                          image: NetworkImage(
                              'https://assets.pokemon.com/assets/cms2/img/pokedex/full/749.png'),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                alignment: Alignment.topLeft,
                padding: const EdgeInsets.only(left: 20),
                child: const Text(
                  "Pokedex",
                  style: TextStyle(
                    color: Colors.amber,
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Container(
                padding: const EdgeInsets.only(left: 20, right: 20, top: 10),
                child: TextField(
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.0),
                          borderSide: BorderSide.none),
                      filled: true,
                      fillColor: Colors.grey[200],
                      contentPadding: const EdgeInsets.symmetric(
                          horizontal: 16.0, vertical: 14.0),
                      hintText: 'Search Pokemon',
                      hintStyle: const TextStyle(
                          color: Colors.grey, fontWeight: FontWeight.normal),
                      prefixIcon: const Icon(Icons.search)),
                ),
              ),
              // ignore: prefer_const_constructors
              Column(
                children: const [
                  Pokemon1(
                      gambar:
                          'https://assets.pokemon.com/assets/cms2/img/pokedex/full/006_f4.png',
                      nomor: '#0006',
                      nama_pokemon: 'Charizard',
                      deskripsi:
                          'This colossal, flame-winged figure of a Charizard was brought about by Gigantamax energy.'),
                  Pokemon2(
                      gambar:
                          'https://assets.pokemon.com/assets/cms2/img/pokedex/full/487.png',
                      nomor: '#0487',
                      nama_pokemon: 'Giratina',
                      deskripsi:
                          'This Pokémon is said to live in a world on the reverse side of ours, where common knowledge is distorted and strange.'),
                  Pokemon3(
                      gambar:
                          'https://assets.pokemon.com/assets/cms2/img/pokedex/full/797.png',
                      nomor: '#0797',
                      nama_pokemon: 'Celesteela',
                      deskripsi:
                          'One of the dangerous UBs, high energy readings can be detected coming from both of its huge arms.'),
                  Pokemon4(
                      gambar:
                          'https://assets.pokemon.com/assets/cms2/img/pokedex/full/888_f2.png',
                      nomor: '#0888',
                      nama_pokemon: 'Zacian',
                      deskripsi:
                          'Now armed with a weapon it used in ancient times, this Pokémon needs only a single strike to fell even Gigantamax Pokémon.'),
                  Pokemon5(
                    gambar:
                        'https://assets.pokemon.com/assets/cms2/img/pokedex/full/721.png',
                    nomor: '#0721',
                    nama_pokemon: 'Volcanion',
                    deskripsi:
                        'It lets out billows of steam and disappears into the dense fog. It’s said to live in mountains where humans do not tread.',
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
