import 'package:exercise1/Widgets/custom_text_form_field.dart';
import 'package:exercise1/View/tampilanawal.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool _isObscure = true;

  final _formKey = GlobalKey<FormState>();

  final TextEditingController _nameController = TextEditingController();

  final TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              //agar ke atas
              margin: const EdgeInsets.only(top: 100),
            ),
            //menambahkan image menggunkan link
            Image.network(
                'https://upload.wikimedia.org/wikipedia/commons/thumb/9/98/International_Pok%C3%A9mon_logo.svg/404px-International_Pok%C3%A9mon_logo.svg.png',
                width: 350),
            const SizedBox(height: 20),
            Container(
              margin: const EdgeInsets.only(top: 10),
              child: const Text(
                "Let's get started.",
                style: TextStyle(
                  color: Colors.amber,
                  fontWeight: FontWeight.bold,
                  fontSize: 35,
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 15),
              child: const Text(
                "There's No Sense In Going Out Of\nYour Way To Get Somebody To Like You.",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color.fromARGB(255, 159, 159, 160),
                  fontWeight: FontWeight.bold,
                  fontSize: 17,
                ),
              ),
            ),
            Form(
              key: _formKey,
              child: Column(children: [
                Container(
                  margin: const EdgeInsets.only(top: 50),
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
                  icon: Icons.person, onSaved: (value) {},
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
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter your password';
                      } else if (value.length < 6) {
                        return 'Password must be at least 6 characters!';
                      }
                      return null;
                    },
                  ),
                ),
                //membuat button
                InkWell(
                  child: Container(
                    margin: const EdgeInsets.only(top: 50),
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
                        'Sign In',
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 19,
                        ),
                      ),
                    ),
                  ),
                  onTap: () {
                    if (_formKey.currentState!.validate()) {
                      print('Login Button Pressed');
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => LoginScreen(),
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
                        "Don't have an account?",
                        style: TextStyle(
                          color: Color.fromARGB(255, 133, 133, 133),
                          fontWeight: FontWeight.bold,
                          fontSize: 15,
                        ),
                      ),
                      InkWell(
                        child: const Text(
                          " Sign Up",
                          style: TextStyle(
                            color: Colors.blue,
                            fontWeight: FontWeight.bold,
                            fontSize: 15,
                          ),
                        ),
                        onTap: () {
                          print('Sign Up Button Pressed');
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (context) => TampilanAwal(),
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
