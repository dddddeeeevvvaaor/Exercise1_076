import 'package:flutter/material.dart';

///class Pokemon1 digunakan untuk membuat konstruktor yang mengambil argumen key, gambar, nomor, nama_pokemon, dan deskripsi.
class Pokemon1 extends StatelessWidget {
  ///const Pokemon1 digunakan untuk membuat konstruktor yang mengambil argumen key, gambar, nomor, nama_pokemon, dan deskripsi.
  const Pokemon1({
    Key? key,
    required this.gambar,
    required this.nomor,
    required this.nama_pokemon,
    required this.deskripsi,
  }) : super(key: key);

/// String gambar digunakan untuk menyimpan link gambar pokemon.
  final String gambar;
/// String nomor digunakan untuk menyimpan nomor pokemon.
  final String nomor;
/// String nama_pokemon digunakan untuk menyimpan nama pokemon.
  final String nama_pokemon;
/// String deskripsi digunakan untuk menyimpan deskripsi pokemon.
  final String deskripsi;

///pada code dibawah ini, terdapat beberapa widget yang digunakan untuk membangun tampilan aplikasi. Widget yang digunakan antara lain Column, Container, SizedBox, Row, Text, dan lain-lain.
///berfungsi untuk membangun tampilan aplikasi dengan menggunakan Column. Column adalah widget yang digunakan untuk membuat kolom pada tampilan aplikasi. Column memiliki beberapa properti yang dapat digunakan untuk mengatur tampilan kolom, seperti mainAxisAlignment, children, dan lain-lain.
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: const EdgeInsets.only(top: 20),
          padding: const EdgeInsets.only(left: 20, right: 20),
          width: 400,
          decoration: BoxDecoration(
            shape: BoxShape.rectangle,
            borderRadius: BorderRadius.circular(10.0),
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.1),
                blurRadius: 7,
                spreadRadius: 5,
                offset: const Offset(0, 3),
              ),
            ],
          ),
          child: Row(
            children: [
              Container(
                margin: const EdgeInsets.only(top: 20, bottom: 10),
                width: 100,
                height: 100,
                decoration: BoxDecoration(
                  shape: BoxShape.rectangle,
                  borderRadius: BorderRadius.circular(10.0),
                  color: Colors.amber[600],
                  image: DecorationImage(
                    fit: BoxFit.fill,
                    image: NetworkImage(gambar),
                  ),
                ),
              ),
              Container(
                alignment: Alignment.topLeft,
                padding: const EdgeInsets.only(left: 10),
                child: Column(
                  children: [
                    SizedBox(
                      width: 250,
                      child: Row(
                        children: [
                          Container(
                            padding: const EdgeInsets.only(right: 5),
                            child: Text(
                              nomor,
                              style: const TextStyle(color: Colors.grey),
                            ),
                          ),
                          Container(
                            child: Text(
                              nama_pokemon,
                              style:
                                  const TextStyle(fontWeight: FontWeight.bold),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      width: 250,
                      height: 18,
                      child: Row(
                        children: [
                          Container(
                            width: 35,
                            decoration: BoxDecoration(
                              shape: BoxShape.rectangle,
                              borderRadius: BorderRadius.circular(5),
                              color: Colors.orange,
                            ),
                            padding: const EdgeInsets.only(left: 5),
                            child: const Text(
                              'Fire',
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          const SizedBox(width: 5),
                          Container(
                            width: 45,
                            decoration: BoxDecoration(
                              shape: BoxShape.rectangle,
                              borderRadius: BorderRadius.circular(5),
                              gradient: const LinearGradient(
                                colors: [Colors.lightBlue, Colors.grey],
                                begin: Alignment.topCenter,
                                end: Alignment.bottomCenter,
                              ),
                            ),
                            padding: const EdgeInsets.only(left: 3),
                            child: const Text(
                              'Flying',
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      width: 250,
                      child: Text(
                        deskripsi,
                        textAlign: TextAlign.justify,
                        style: const TextStyle(color: Colors.grey),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

///class Pokemon2 digunakan untuk membuat konstruktor yang mengambil argumen key, gambar, nomor, nama_pokemon, dan deskripsi.
class Pokemon2 extends StatelessWidget {
  ///const Pokemon2 digunakan untuk membuat konstruktor yang mengambil argumen key, gambar, nomor, nama_pokemon, dan deskripsi.
  const Pokemon2({
    Key? key,
    required this.gambar,
    required this.nomor,
    required this.nama_pokemon,
    required this.deskripsi,
  }) : super(key: key);

/// String gambar digunakan untuk menyimpan link gambar pokemon.
  final String gambar;
/// String nomor digunakan untuk menyimpan nomor pokemon.
  final String nomor;
/// String nama_pokemon digunakan untuk menyimpan nama pokemon.
  final String nama_pokemon;
/// String deskripsi digunakan untuk menyimpan deskripsi pokemon.
  final String deskripsi;

///pada code dibawah ini, terdapat beberapa widget yang digunakan untuk membangun tampilan aplikasi. Widget yang digunakan antara lain Column, Container, SizedBox, Row, Text, dan lain-lain.
///berfungsi untuk membangun tampilan aplikasi dengan menggunakan Column. Column adalah widget yang digunakan untuk membuat kolom pada tampilan aplikasi. Column memiliki beberapa properti yang dapat digunakan untuk mengatur tampilan kolom, seperti mainAxisAlignment, children, dan lain-lain.
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: const EdgeInsets.only(top: 20),
          padding: const EdgeInsets.only(left: 20, right: 20),
          width: 400,
          decoration: BoxDecoration(
            shape: BoxShape.rectangle,
            borderRadius: BorderRadius.circular(10.0),
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.1),
                blurRadius: 7,
                spreadRadius: 5,
                offset: const Offset(0, 3),
              ),
            ],
          ),
          child: Row(
            children: [
              Container(
                margin: const EdgeInsets.only(top: 20, bottom: 10),
                width: 100,
                height: 100,
                decoration: BoxDecoration(
                  shape: BoxShape.rectangle,
                  borderRadius: BorderRadius.circular(10.0),
                  color: Colors.purple,
                  image: DecorationImage(
                    fit: BoxFit.fill,
                    image: NetworkImage(gambar),
                  ),
                ),
              ),
              Container(
                alignment: Alignment.topLeft,
                padding: const EdgeInsets.only(left: 10),
                child: Column(
                  children: [
                    SizedBox(
                      width: 250,
                      child: Row(
                        children: [
                          Container(
                            padding: const EdgeInsets.only(right: 5),
                            child: Text(
                              nomor,
                              style: const TextStyle(color: Colors.grey),
                            ),
                          ),
                          Container(
                            child: Text(
                              nama_pokemon,
                              style:
                                  const TextStyle(fontWeight: FontWeight.bold),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      width: 250,
                      height: 18,
                      child: Row(
                        children: [
                          Container(
                            width: 50,
                            decoration: BoxDecoration(
                              shape: BoxShape.rectangle,
                              borderRadius: BorderRadius.circular(5),
                              color: Colors.purple,
                            ),
                            padding: const EdgeInsets.only(left: 5),
                            child: const Text(
                              'Ghost',
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          const SizedBox(
                            width: 5,
                          ),
                          Container(
                            width: 50,
                            decoration: BoxDecoration(
                              shape: BoxShape.rectangle,
                              borderRadius: BorderRadius.circular(5),
                              gradient: const LinearGradient(
                                colors: [Colors.lightBlue, Colors.red],
                                begin: Alignment.topCenter,
                                end: Alignment.bottomCenter,
                              ),
                            ),
                            padding: const EdgeInsets.only(left: 3),
                            child: const Text(
                              'Dragon',
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      width: 250,
                      child: Text(
                        deskripsi,
                        textAlign: TextAlign.justify,
                        style: const TextStyle(color: Colors.grey),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

///class Pokemon3 digunakan untuk membuat konstruktor yang mengambil argumen key, gambar, nomor, nama_pokemon, dan deskripsi.
class Pokemon3 extends StatelessWidget {
  ///const Pokemon3 digunakan untuk membuat konstruktor yang mengambil argumen key, gambar, nomor, nama_pokemon, dan deskripsi.
  const Pokemon3({
    Key? key,
    required this.gambar,
    required this.nomor,
    required this.nama_pokemon,
    required this.deskripsi,
  }) : super(key: key);

/// String gambar digunakan untuk menyimpan link gambar pokemon.
  final String gambar;
/// String nomor digunakan untuk menyimpan nomor pokemon.
  final String nomor;
/// String nama_pokemon digunakan untuk menyimpan nama pokemon.
  final String nama_pokemon;
/// String deskripsi digunakan untuk menyimpan deskripsi pokemon.
  final String deskripsi;

///pada code dibawah ini, terdapat beberapa widget yang digunakan untuk membangun tampilan aplikasi. Widget yang digunakan antara lain Column, Container, SizedBox, Row, Text, dan lain-lain.
///berfungsi untuk membangun tampilan aplikasi dengan menggunakan Column. Column adalah widget yang digunakan untuk membuat kolom pada tampilan aplikasi. Column memiliki beberapa properti yang dapat digunakan untuk mengatur tampilan kolom, seperti mainAxisAlignment, children, dan lain-lain.
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: const EdgeInsets.only(top: 20),
          padding: const EdgeInsets.only(left: 20, right: 20),
          width: 400,
          decoration: BoxDecoration(
            shape: BoxShape.rectangle,
            borderRadius: BorderRadius.circular(10.0),
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.1),
                blurRadius: 7,
                spreadRadius: 5,
                offset: const Offset(0, 3),
              ),
            ],
          ),
          child: Row(
            children: [
              Container(
                margin: const EdgeInsets.only(top: 20, bottom: 10),
                width: 100,
                height: 100,
                decoration: BoxDecoration(
                  shape: BoxShape.rectangle,
                  borderRadius: BorderRadius.circular(10.0),
                  color: Color.fromARGB(255, 111, 129, 129),
                  image: DecorationImage(
                    fit: BoxFit.fill,
                    image: NetworkImage(gambar),
                  ),
                ),
              ),
              Container(
                alignment: Alignment.topLeft,
                padding: const EdgeInsets.only(left: 10),
                child: Column(
                  children: [
                    SizedBox(
                      width: 250,
                      child: Row(
                        children: [
                          Container(
                            padding: const EdgeInsets.only(right: 5),
                            child: Text(
                              nomor,
                              style: const TextStyle(color: Colors.grey),
                            ),
                          ),
                          Container(
                            child: Text(
                              nama_pokemon,
                              style:
                                  const TextStyle(fontWeight: FontWeight.bold),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      width: 250,
                      height: 18,
                      child: Row(
                        children: [
                          Container(
                            width: 45,
                            decoration: BoxDecoration(
                              shape: BoxShape.rectangle,
                              borderRadius: BorderRadius.circular(5),
                              color: const Color.fromRGBO(158, 183, 184, 1),
                            ),
                            padding: const EdgeInsets.only(left: 5),
                            child: const Text(
                              'Steel',
                              style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          const SizedBox(
                            width: 5,
                          ),
                          Container(
                            width: 45,
                            decoration: BoxDecoration(
                              shape: BoxShape.rectangle,
                              borderRadius: BorderRadius.circular(5),
                              gradient: const LinearGradient(
                                colors: [Colors.lightBlue, Colors.grey],
                                begin: Alignment.topCenter,
                                end: Alignment.bottomCenter,
                              ),
                            ),
                            padding: const EdgeInsets.only(left: 3),
                            child: const Text(
                              'Flying',
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      width: 250,
                      child: Text(
                        deskripsi,
                        textAlign: TextAlign.justify,
                        style: const TextStyle(color: Colors.grey),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

///class Pokemon4 digunakan untuk membuat konstruktor yang mengambil argumen key, gambar, nomor, nama_pokemon, dan deskripsi.
class Pokemon4 extends StatelessWidget {
  ///const Pokemon4 digunakan untuk membuat konstruktor yang mengambil argumen key, gambar, nomor, nama_pokemon, dan deskripsi.
  const Pokemon4({
    Key? key,
    required this.gambar,
    required this.nomor,
    required this.nama_pokemon,
    required this.deskripsi,
  }) : super(key: key);

/// String gambar digunakan untuk menyimpan link gambar pokemon.
  final String gambar;
/// String nomor digunakan untuk menyimpan nomor pokemon.
  final String nomor;
/// String nama_pokemon digunakan untuk menyimpan nama pokemon.
  final String nama_pokemon;
/// String deskripsi digunakan untuk menyimpan deskripsi pokemon.
  final String deskripsi;

///pada code dibawah ini, terdapat beberapa widget yang digunakan untuk membangun tampilan aplikasi. Widget yang digunakan antara lain Column, Container, SizedBox, Row, Text, dan lain-lain.
///berfungsi untuk membangun tampilan aplikasi dengan menggunakan Column. Column adalah widget yang digunakan untuk membuat kolom pada tampilan aplikasi. Column memiliki beberapa properti yang dapat digunakan untuk mengatur tampilan kolom, seperti mainAxisAlignment, children, dan lain-lain.
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: const EdgeInsets.only(top: 20),
          padding: const EdgeInsets.only(left: 20, right: 20),
          width: 400,
          decoration: BoxDecoration(
            shape: BoxShape.rectangle,
            borderRadius: BorderRadius.circular(10.0),
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.1),
                blurRadius: 7,
                spreadRadius: 5,
                offset: const Offset(0, 3),
              ),
            ],
          ),
          child: Row(
            children: [
              Container(
                margin: const EdgeInsets.only(top: 20, bottom: 10),
                width: 100,
                height: 100,
                decoration: BoxDecoration(
                  shape: BoxShape.rectangle,
                  borderRadius: BorderRadius.circular(10.0),
                  color: const Color.fromARGB(255, 232, 56, 114),
                  image: DecorationImage(
                    fit: BoxFit.fill,
                    image: NetworkImage(gambar),
                  ),
                ),
              ),
              Container(
                alignment: Alignment.topLeft,
                padding: const EdgeInsets.only(left: 10),
                child: Column(
                  children: [
                    SizedBox(
                      width: 250,
                      child: Row(
                        children: [
                          Container(
                            padding: const EdgeInsets.only(right: 5),
                            child: Text(
                              nomor,
                              style: const TextStyle(color: Colors.grey),
                            ),
                          ),
                          Container(
                            child: Text(
                              nama_pokemon,
                              style:
                                  const TextStyle(fontWeight: FontWeight.bold),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      width: 250,
                      height: 18,
                      child: Row(
                        children: [
                          Container(
                            width: 35,
                            decoration: BoxDecoration(
                              shape: BoxShape.rectangle,
                              borderRadius: BorderRadius.circular(5),
                              color: Colors.pink,
                            ),
                            padding: const EdgeInsets.only(left: 5),
                            child: const Text(
                              'Fairy',
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          const SizedBox(
                            width: 5,
                          ),
                          Container(
                            width: 35,
                            decoration: BoxDecoration(
                              shape: BoxShape.rectangle,
                              borderRadius: BorderRadius.circular(5),
                              color: Color.fromARGB(255, 111, 129, 129),
                            ),
                            padding: const EdgeInsets.only(left: 3),
                            child: const Text(
                              'Steel',
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      width: 250,
                      child: Text(
                        deskripsi,
                        textAlign: TextAlign.justify,
                        style: const TextStyle(color: Colors.grey),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

///class Pokemon5 digunakan untuk membuat konstruktor yang mengambil argumen key, gambar, nomor, nama_pokemon, dan deskripsi.
class Pokemon5 extends StatelessWidget {
  ///const Pokemon5 digunakan untuk membuat konstruktor yang mengambil argumen key, gambar, nomor, nama_pokemon, dan deskripsi.
  const Pokemon5({
    Key? key,
    required this.gambar,
    required this.nomor,
    required this.nama_pokemon,
    required this.deskripsi,
  }) : super(key: key);

/// String gambar digunakan untuk menyimpan link gambar pokemon.
  final String gambar;
/// String nomor digunakan untuk menyimpan nomor pokemon.
  final String nomor;
/// String nama_pokemon digunakan untuk menyimpan nama pokemon.
  final String nama_pokemon;
/// String deskripsi digunakan untuk menyimpan deskripsi pokemon.
  final String deskripsi;

///pada code dibawah ini, terdapat beberapa widget yang digunakan untuk membangun tampilan aplikasi. Widget yang digunakan antara lain Column, Container, SizedBox, Row, Text, dan lain-lain.
///berfungsi untuk membangun tampilan aplikasi dengan menggunakan Column. Column adalah widget yang digunakan untuk membuat kolom pada tampilan aplikasi. Column memiliki beberapa properti yang dapat digunakan untuk mengatur tampilan kolom, seperti mainAxisAlignment, children, dan lain-lain.
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: const EdgeInsets.only(top: 20),
          padding: const EdgeInsets.only(left: 20, right: 20),
          width: 400,
          decoration: BoxDecoration(
            shape: BoxShape.rectangle,
            borderRadius: BorderRadius.circular(10.0),
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.1),
                blurRadius: 7,
                spreadRadius: 5,
                offset: const Offset(0, 3),
              ),
            ],
          ),
          child: Row(
            children: [
              Container(
                margin: const EdgeInsets.only(top: 20, bottom: 10),
                width: 100,
                height: 100,
                decoration: BoxDecoration(
                  shape: BoxShape.rectangle,
                  borderRadius: BorderRadius.circular(10.0),
                  color: Colors.red[600],
                  image: DecorationImage(
                    fit: BoxFit.fill,
                    image: NetworkImage(gambar),
                  ),
                ),
              ),
              Container(
                alignment: Alignment.topLeft,
                padding: const EdgeInsets.only(left: 10),
                child: Column(
                  children: [
                    SizedBox(
                      width: 250,
                      child: Row(
                        children: [
                          Container(
                            padding: const EdgeInsets.only(right: 5),
                            child: Text(
                              nomor,
                              style: const TextStyle(color: Colors.grey),
                            ),
                          ),
                          Container(
                            child: Text(
                              nama_pokemon,
                              style:
                                  const TextStyle(fontWeight: FontWeight.bold),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      width: 250,
                      height: 18,
                      child: Row(
                        children: [
                          Container(
                            width: 35,
                            decoration: BoxDecoration(
                              shape: BoxShape.rectangle,
                              borderRadius: BorderRadius.circular(5),
                              color: Colors.red[600],
                            ),
                            padding: const EdgeInsets.only(left: 5),
                            child: const Text(
                              'Fire',
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          const SizedBox(
                            width: 5,
                          ),
                          Container(
                            width: 45,
                            decoration: BoxDecoration(
                              shape: BoxShape.rectangle,
                              borderRadius: BorderRadius.circular(5),
                              color: Colors.blue[300],
                            ),
                            padding: const EdgeInsets.only(left: 3),
                            child: const Text(
                              'Water',
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      width: 250,
                      child: Text(
                        deskripsi,
                        textAlign: TextAlign.justify,
                        style: const TextStyle(color: Colors.grey),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
