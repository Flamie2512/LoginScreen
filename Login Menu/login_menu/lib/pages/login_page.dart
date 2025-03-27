import 'package:flutter/material.dart';
import 'package:login_menu/Components/button.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  void signInUser() {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              //logo
              const SizedBox(height: 50),
              const Icon(Icons.lock, size: 100),
              const SizedBox(height: 50),

              const Text(
                'Welcome back!',
                style: TextStyle(color: Colors.black, fontSize: 20),
              ),

              const SizedBox(height: 25),
              //username textfield
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 100),
                child: TextField(
                  decoration: InputDecoration(
                    labelText: "Username",
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide: const BorderSide(color: Colors.grey),
                    ),
                  ),
                ),
              ),

              const SizedBox(height: 25),
              //username textfield
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 100),
                child: TextField(
                  decoration: InputDecoration(
                    labelText: "Password",
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide: const BorderSide(color: Colors.grey),
                    ),
                  ),
                ),
              ),

              const SizedBox(height: 25),

              //forgot password
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 100.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      'Forgot Password?',
                      style: TextStyle(color: Colors.grey[600]),
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 10),
              //Sign in button
              MyButton(onTap: signInUser),

              const SizedBox(height: 20),

              //another login's
              const Padding(
                padding: EdgeInsets.all(20),
                child: Row(
                  children: [
                    Expanded(child: Divider(thickness: 1, color: Colors.black)),
                    Text('or continue with'),
                    Expanded(child: Divider(thickness: 1, color: Colors.black)),
                  ],
                ),
              ),

              Padding(
                padding: const EdgeInsets.all(20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [Image.asset('lib/images/google.png', height: 50)],
                ),
              ),

              const SizedBox(height: 15),

              //not a member? Register now
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Not a member?'),
                  SizedBox(width: 5),
                  Text(
                    'Register now!',
                    style: TextStyle(
                      color: Colors.blue,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
