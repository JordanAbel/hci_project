import 'package:flutter/material.dart';
import 'package:flutter_demo/register_page.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      body: SafeArea(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Icon(
                    Icons.connect_without_contact,
                    size: 200,
                    color: Colors.white,
                  ),

                  const SizedBox(height: 30),

                  const Text(
                    "Sports Connect",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 38,
                      color: Colors.white,
                    ),
                  ),

                  const SizedBox(height: 10),

                  const Text(
                    "Welcome back!",
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                    ),
                  ),

                  const SizedBox(height: 50),

                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 25),
                    child: Container(
                      decoration: BoxDecoration(
                          color: Colors.grey[700],
                        border: Border.all(color: Colors.grey),
                        borderRadius: BorderRadius.circular(12)
                      ),
                      child: const Padding(
                        padding: EdgeInsets.only(left: 15),
                        child: TextField(
                          style: TextStyle(color: Colors.white),
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: "Email",
                            hintStyle: TextStyle(color: Colors.white)
                          ),
                        ),
                      ),
                    ),
                  ),

                  const SizedBox(height: 10),

                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 25),
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.grey[700],
                        border: Border.all(color: Colors.grey),
                        borderRadius: BorderRadius.circular(12)
                      ),
                      child: const Padding(
                        padding: EdgeInsets.only(left: 15),
                        child: TextField(
                          obscureText: true,
                          style: TextStyle(color: Colors.white),
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: "Password",
                            hintStyle: TextStyle(color: Colors.white)
                          ),
                        ),
                      ),
                    ),
                  ),

                  const SizedBox(height: 10),

                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 25),
                    child: Container(
                      padding: const EdgeInsets.all(20),
                      decoration: BoxDecoration(
                        color: Colors.deepPurple,
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: const Center(
                        child: Text(
                          "Sign In",
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                          ),
                        ),
                      ),
                    ),
                  ),

                  const SizedBox(height: 25),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text("Not a member?",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => const RegisterPage()
                          ));
                        },
                        child: const Text(" Register now!",
                          style: TextStyle(
                              color: Colors.blue,
                              fontWeight: FontWeight.bold
                          ),
                        ),
                      ),
                    ],
                  )]
            ),
          )
      ),
    );
  }
}