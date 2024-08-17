import 'package:flutter/material.dart';
import 'package:flutter_app/services/google_auth.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: ElevatedButton(
            onPressed: ()=>GoogleAuth().signInWithGoogle(),
            child: Text("Login with google"),
          ),
        ),
      ),
    );
  }
}
