import 'package:exercise1/View/login_screen.dart';
import 'package:flutter/material.dart';

/// TampilanAwal adalah class yang digunakan untuk membuat tampilan awal aplikasi.
class TampilanAwal extends StatelessWidget {
  /// const TampilanAwal({super.key}) adalah konstruktor yang mengambil argumen super.key, tetapi tampaknya terdapat kesalahan sintaks. Seharusnya bukan `super.key`, tetapi `this.key`.
  const TampilanAwal({super.key});

/// Widget build digunakan untuk membangun tampilan aplikasi dengan menggunakan Scaffold. Scaffold adalah widget yang digunakan untuk membuat tampilan dasar yang biasanya digunakan untuk menampilkan beberapa widget lainnya. Scaffold memiliki beberapa properti yang dapat digunakan untuk mengatur tampilan, seperti appBar, body, bottomNavigationBar, dan lain-lain.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              padding: const EdgeInsets.only(top: 80),
              child: const Text(
                "Pokedex.",
                style: TextStyle(
                    color: Colors.amber,
                    fontSize: 40,
                    fontWeight: FontWeight.bold),
              ),
            ),
            Container(
              padding: const EdgeInsets.only(top: 50),
              child: const Text(
                "Welcome to Pokedex \n You can find your favorite pokemom here",
                style: TextStyle(color: Colors.grey),
                textAlign: TextAlign.center,
              ),
            ),
            const SizedBox(
              height: 50,
            ),
            Container(
              height: 300,
              width: MediaQuery.of(context).size.width * 0.8,
              child: FractionallySizedBox(
                widthFactor: 0.8,
                heightFactor: 0.8,
                child: Image.network(
                  "https://upload.wikimedia.org/wikipedia/commons/thumb/5/53/Pok%C3%A9_Ball_icon.svg/1200px-Pok%C3%A9_Ball_icon.svg.png",
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.only(top: 50),
              child: InkWell(
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                        builder: (context) => LoginScreen()),
                  );
                },
                child: Ink(
                  decoration: const BoxDecoration(
                    color: Colors.amber,
                    shape: BoxShape.circle,
                  ),
                  child: const Padding(
                    padding: EdgeInsets.all(12.0),
                    child: Icon(
                      Icons.arrow_forward,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
