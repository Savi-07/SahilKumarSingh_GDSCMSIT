import 'package:flutter/material.dart';
import 'package:trial_app/pages/SignUp_Page.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: const Color.fromARGB(255, 243, 240, 240),
      body: SingleChildScrollView(
        child: Column(
          children: [
            // Logo ayega yahan pe
            Padding(
              padding: const EdgeInsets.only(
                top: 140,
                right: 90,
                left: 90,
              ),
              child: Image.asset('lib/images/logo1.png'),
            ),

            //Greet message yahan pe
            const Padding(
              padding: EdgeInsets.only(
                top: 20,
                left: 35,
                right: 35,
              ),
              child: Text('Welcome to GDSC MSIT Official Application',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 25,
                      fontWeight: FontWeight.w800)),
            ),

            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 40.0, vertical: 85.0),
              child: Column(
                children: [
                  //username ayega yahan pe
                  TextField(
                    style: const TextStyle(
                      fontSize: 16,
                    ),
                    decoration: InputDecoration(
                      prefixIcon: const Icon(Icons.email),
                      fillColor: Colors.blue.shade100,
                      filled: true,
                      hintText: 'Email',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),
                  const SizedBox(height: 10.0),

                  //username ka password yahn pe
                  TextField(
                    style: const TextStyle(
                      fontSize: 16,
                    ),
                    obscureText: true,
                    decoration: InputDecoration(
                      prefixIcon: const Icon(Icons.key),
                      fillColor: Colors.blue.shade100,
                      filled: true,
                      hintText: 'Password',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),

                  const SizedBox(height: 22),

                  //yahan se karenge hum login
                  Container(
                    height: 40,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(100),
                      color: const Color.fromARGB(255, 229, 59, 13),
                    ),
                    child: const Center(
                      child: Text(
                        'Login',
                        style: TextStyle(
                            fontSize: 21,
                            fontWeight: FontWeight.w300,
                            color: Colors.white),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),

                  Container(
                      // height: 10,

                      ),

                  // agar signup karna hua toh
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        "Didn't have an account?",
                        style: TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.w500,
                        ),
                      ),

                      //idhar click karo signup page main jaoo
                      GestureDetector(
                        onTap: () {
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (context) {
                                return const SignUp_Page();
                              },
                            ),
                          );
                        },
                        child: const Text(
                          '  Sign up',
                          style: TextStyle(
                            fontSize: 17,
                            fontWeight: FontWeight.w500,
                            color: Color.fromARGB(255, 255, 100, 89),
                          ),
                        ),
                      )
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
