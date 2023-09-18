import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SignUpScreen(),
    );
  }
}

class SignUpScreen extends StatelessWidget {
  final TextEditingController usernameController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('Sign Up')),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            
            TextField( decoration: InputDecoration(
                    labelText: 'Email',
                    hintText: 'Register for Email',
                    floatingLabelBehavior: FloatingLabelBehavior.always,
                    contentPadding:
                        const EdgeInsets.symmetric(horizontal: 42, vertical: 20),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: const BorderSide(color: Colors.black),
                      gapPadding: 10,
                    ),
                  ),
                ),
            SizedBox(height: 16.0),
            TextField( decoration: InputDecoration(
                    labelText: 'Password',
                    hintText: 'Register for Password',
                    floatingLabelBehavior: FloatingLabelBehavior.always,
                    contentPadding:
                        const EdgeInsets.symmetric(horizontal: 42, vertical: 20),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: const BorderSide(color: Colors.black),
                      gapPadding: 10,
                      
                    ),
                  ),
                ),
              
            SizedBox(height: 16.0),
            ElevatedButton(
              onPressed: () {
                // Perform sign-up logic here
                String username = usernameController.text;
                String password = passwordController.text;
                // You can validate and save the user's data here
                // For a real app, consider using a database to store user information
                print('Username: $username, Password: $password');
              },
              child: Text('Sign Up'),
            ),
          ],
        ),
      ),
    );
  }
}
