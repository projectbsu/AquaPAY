// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();

}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 121, 204, 243),
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children:[
              Icon(Icons.phone_android,
              size: 100,
              ),
              SizedBox(height: 50),

            // Hello Again!
            Text(
              'Hello Again',
              style: TextStyle(
                fontWeight: FontWeight.bold, 
                fontSize: 40, 
                ),
              ),
              SizedBox(height: 10),

              Text(
              'Welcome back, you\'ve been missed',
              style: TextStyle(
                fontSize: 20, 
                ),
              ),
              SizedBox(height: 50),

            // email textfeild
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.blue[200],
                  border: Border.all(color: Color.fromARGB(255, 7, 8, 46)),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(left: 20.0),
                  child: TextField(
                    decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: 'Email:'
                  ),
                ),
              ),
            ),
          ),
           SizedBox(height: 10),

            // password textfield
           Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.blue[200],
                  border: Border.all(color: Color.fromARGB(255, 7, 8, 46)),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(left: 20.0),
                  child: TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: 'Password:'
                  ),
                ),
              ),
            ),
          ),
           SizedBox(height: 10),

            // sign in button
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: Container(
                padding: EdgeInsets.all(25),
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 24, 137, 194),
                  borderRadius: BorderRadius.circular(12),
                  ),
                  
                child: Center(
                  child: Text('Sign In',
                  style: TextStyle(
                    color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                  ),
                ),
              ),
            ),
          ),
          SizedBox(height: 25),

            // not a member? register now
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Not a member? ',
                style:TextStyle(
                fontWeight: FontWeight.bold,
                ),
                ),
                
                Text('Register Now',
                style:TextStyle(
                color: Colors.white,
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