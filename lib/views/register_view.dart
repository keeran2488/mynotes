import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'dart:developer' as devtools show log;

class RegisterView extends StatefulWidget {
  const RegisterView({Key? key}) : super(key: key);

  @override
  State<RegisterView> createState() => _RegisterViewState();
}

class _RegisterViewState extends State<RegisterView> {
  late final TextEditingController _email;
  late final TextEditingController _password;

  @override
  void initState() {
    _email = TextEditingController();
    _password = TextEditingController();
    super.initState();
  }

  @override
  void dispose() {
    _email.dispose();
    _password.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Register'),
      ),
      body: Column(
        children: [
          TextField(
            controller: _email,
            decoration: const InputDecoration(
              hintText: 'Enter your email here',
            ),
            autocorrect: false,
            keyboardType: TextInputType.emailAddress,
          ),
          TextField(
            controller: _password,
            decoration: const InputDecoration(
              hintText: 'Enter your password here',
            ),
            obscureText: true,
            enableSuggestions: false,
            autocorrect: false,
          ),
          TextButton(
            child: const Text("Register"),
            onPressed: () async {
              final email = _email.text;
              final password = _password.text;
              try {
                await FirebaseAuth.instance.createUserWithEmailAndPassword(
                    email: email, password: password);
              } on FirebaseAuthException catch (e) {
                if (e.code == 'weak-password') {
                  devtools.log('Weak password');
                } else if (e.code == 'email-already-in-use') {
                  devtools.log('Email already in use');
                } else if (e.code == 'invalid-email') {
                  devtools.log('Invalid email');
                }
              }
            },
          ),
          TextButton(
            onPressed: () {
              Navigator.of(context)
                  .pushNamedAndRemoveUntil('/login/', (route) => false);
            },
            child: const Text('Already registered? Login here!'),
          ),
        ],
      ),
    );
  }
}
