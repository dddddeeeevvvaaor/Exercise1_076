import 'package:exercise1/View/home_screen.dart';
import 'package:exercise1/View/login_screen.dart';
import 'package:exercise1/Widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

/// SignupScreen adalah class yang digunakan untuk membuat tampilan signup screen.
class SignupScreen extends StatefulWidget {
  /// const SignupScreen({super.key}) adalah konstruktor yang mengambil argumen super.key, tetapi tampaknya terdapat kesalahan sintaks. Seharusnya bukan `super.key`, tetapi `this.key`.
  SignupScreen({Key? key}) : super(key: key);

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  /// bool _isObscure = true; adalah variabel boolean yang digunakan untuk menentukan apakah password akan ditampilkan atau tidak.
  bool _isObscure = true;

  /// bool _isObscureConfirm = true; adalah variabel boolean yang digunakan untuk menentukan apakah re-password akan ditampilkan atau tidak.
  bool _isObscureConfirm = true;

///String? name adalah variabel string yang digunakan untuk menyimpan nama user yang diinputkan pada form signup.
  String? name;
///String? email adalah variabel string yang digunakan untuk menyimpan email user yang diinputkan pada form signup.
  String? email;
///String? password adalah variabel string yang digunakan untuk menyimpan password user yang diinputkan pada form signup.
  String? password;
///String? repassword adalah variabel string yang digunakan untuk menyimpan re-password user yang diinputkan pada form signup.
  String? repassword;

/// GlobalKey<FormState> _formKey = GlobalKey<FormState>(); adalah variabel global key yang digunakan untuk mengakses form yang ada pada signup screen.
  final _formKey = GlobalKey<FormState>();

/// TextEditingController _nameController = TextEditingController(); adalah variabel controller yang digunakan untuk mengontrol inputan dari form nama.
  final TextEditingController _nameController = TextEditingController();

/// TextEditingController _emailController = TextEditingController(); adalah variabel controller yang digunakan untuk mengontrol inputan dari form email.
  final TextEditingController _emailController = TextEditingController();

/// TextEditingController _passwordController = TextEditingController(); adalah variabel controller yang digunakan untuk mengontrol inputan dari form password.
  final TextEditingController _passwordController = TextEditingController();

/// TextEditingController _confirmPasswordController = TextEditingController(); adalah variabel controller yang digunakan untuk mengontrol inputan dari form re-password.
  final TextEditingController _confirmPasswordController =
      TextEditingController();

///pada code di bawah ini berfungsi untuk membangun tampilan aplikasi dengan menggunakan Scaffold. Scaffold adalah widget yang digunakan untuk membuat tampilan dasar yang biasanya digunakan untuk menampilkan beberapa widget lainnya. Scaffold memiliki beberapa properti yang dapat digunakan untuk mengatur tampilan, seperti appBar, body, bottomNavigationBar, dan lain-lain.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            //membuat button berbentuk kotak menutuju LoginScreen
            Container(
              margin: const EdgeInsets.only(top: 40),
              padding: const EdgeInsets.only(left: 20),
              alignment: Alignment.centerLeft,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => LoginScreen()),
                  );
                },
                //membuat button berbentuk persegiempat dan bisa di atur ukurannya
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)),
                  primary: Colors.amber,
                  padding: const EdgeInsets.only(
                      top: 10, bottom: 10, left: 10, right: 10),
                  minimumSize: const Size(10, 10),
                ),
                //membuat icon panah ke kiri
                child: const Icon(
                  Icons.arrow_back,
                  color: Colors.white,
                ),
              ),
            ),
            //membuat logo berbentuk lingkaran
            Container(
              margin: const EdgeInsets.only(top: 5),
              width: 100.0,
              height: 100.0,
              decoration: BoxDecoration(
                image: const DecorationImage(
                  image: NetworkImage(
                      'https://cdn.pixabay.com/photo/2022/12/29/17/12/dora-the-explorer-7685379_1280.png'),
                  fit: BoxFit.cover,
                ),
                borderRadius: BorderRadius.circular(100.0),
                border: Border.all(
                  color: Color.fromARGB(255, 239, 239, 239),
                  width: 1.0,
                ),
              ),
            ),
            Form(
              key: _formKey,
              child: Column(children: [
                Container(
                  margin: const EdgeInsets.only(top: 10),
                  padding: const EdgeInsets.only(left: 20),
                  alignment: Alignment.centerLeft,
                  child: const Text(
                    "Name",
                    textAlign: TextAlign.left,
                    style: TextStyle(
                        color: Colors.blue,
                        fontWeight: FontWeight.bold,
                        fontSize: 15),
                  ),
                ),
                CustomTextFormField(
                  controller: _nameController,
                  hintText: "Enter your name",
                  obscureText: false,
                  icon: Icons.person,
                  onSaved: (value) {
                    name = value;
                  },
                ),
                Container(
                  margin: const EdgeInsets.only(top: 10),
                  padding: const EdgeInsets.only(left: 20),
                  alignment: Alignment.centerLeft,
                  child: const Text(
                    "Email",
                    textAlign: TextAlign.left,
                    style: TextStyle(
                        color: Colors.blue,
                        fontWeight: FontWeight.bold,
                        fontSize: 15),
                  ),
                ),
                CustomTextFormFieldEmail(
                  controller: _emailController,
                  hintText: "Enter your email",
                  obscureText: false,
                  icon: Icons.email,
                  onSaved: (value) {
                    email = value;
                  },
                ),
                Container(
                  margin: const EdgeInsets.only(top: 10),
                  padding: const EdgeInsets.only(left: 20),
                  alignment: Alignment.centerLeft,
                  child: const Text(
                    "Password",
                    textAlign: TextAlign.left,
                    style: TextStyle(
                        color: Colors.blue,
                        fontWeight: FontWeight.bold,
                        fontSize: 15),
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.only(left: 20, right: 20, bottom: 10),
                  child: TextFormField(
                    obscureText: _isObscure,
                    controller: _passwordController,
                    decoration: InputDecoration(
                      hintText: "Enter your password",
                      hintStyle: Theme.of(context).textTheme.bodyText1,
                      prefixIcon: const Icon(Icons.lock, color: Colors.blue),
                      suffixIcon: IconButton(
                        icon: Icon(
                          _isObscure ? Icons.visibility : Icons.visibility_off,
                          color: Color.fromARGB(157, 92, 92, 92),
                        ),
                        onPressed: () {
                          setState(() {
                            _isObscure = !_isObscure;
                          });
                        },
                      ),
                    ),
                    //membuat validasi password
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter your password';
                      } else if (value.length < 6) {
                        return 'Password must be at least 6 characters long';
                      }
                      return null;
                    },
                    onSaved: (value) {
                      password = value;
                    },
                  ),
                ),
                //membuat re-password
                Container(
                  margin: const EdgeInsets.only(top: 10),
                  padding: const EdgeInsets.only(left: 20),
                  alignment: Alignment.centerLeft,
                  child: const Text(
                    "Re-Password",
                    textAlign: TextAlign.left,
                    style: TextStyle(
                        color: Colors.blue,
                        fontWeight: FontWeight.bold,
                        fontSize: 15),
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.only(left: 20, right: 20, bottom: 10),
                  child: TextFormField(
                    obscureText: _isObscureConfirm,
                    controller: _confirmPasswordController,
                    decoration: InputDecoration(
                      hintText: "Re-Enter Your Password",
                      hintStyle: Theme.of(context).textTheme.bodyText1,
                      prefixIcon: const Icon(Icons.lock, color: Colors.blue),
                      suffixIcon: IconButton(
                        icon: Icon(
                          _isObscureConfirm
                              ? Icons.visibility
                              : Icons.visibility_off,
                          color: Color.fromARGB(157, 92, 92, 92),
                        ),
                        onPressed: () {
                          setState(
                            () {
                              _isObscureConfirm = !_isObscureConfirm;
                            },
                          );
                        },
                      ),
                    ),
                    //membuat validasi re-password
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please re-enter your password';
                      } else if (value != _passwordController.text) {
                        return 'Password does not match';
                      }
                      return null;
                    },
                    onSaved: (value) {
                      repassword = value;
                    },
                  ),
                ),
                InkWell(
                  child: Container(
                    margin: const EdgeInsets.only(top: 20),
                    height: 50,
                    width: MediaQuery.of(context).size.width * 0.9,
                    decoration: BoxDecoration(
                      color: Colors.amber,
                      borderRadius: BorderRadius.circular(50),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 1,
                          blurRadius: 5,
                          offset: const Offset(0, 3),
                        ),
                      ],
                    ),
                    child: const Center(
                      child: Text(
                        'Register',
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                        ),
                      ),
                    ),
                  ),
                  onTap: () {
                    if (_formKey.currentState!.validate()) {
                      _formKey.currentState!.save();
                      print('Register Button Pressed');
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) =>
                              HomeScreen(name: _nameController.text),
                        ),
                      );
                    }
                  },
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 20),
                  //membuat text
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        "Already have an account?",
                        style: TextStyle(
                          color: Color.fromARGB(255, 133, 133, 133),
                          fontWeight: FontWeight.bold,
                          fontSize: 15,
                        ),
                      ),
                      InkWell(
                        child: const Text(
                          "Sign In",
                          style: TextStyle(
                            color: Colors.blue,
                            fontWeight: FontWeight.bold,
                            fontSize: 15,
                          ),
                        ),
                        onTap: () {
                          print('Sign In Button Pressed');
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (context) => LoginScreen(),
                            ),
                          );
                        },
                      ),
                    ],
                  ),
                ),
              ]),
            ),
          ],
        ),
      ),
    );
  }
}
