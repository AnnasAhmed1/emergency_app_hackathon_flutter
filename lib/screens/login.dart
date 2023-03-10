import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Login"),
      ),
      body: Column(
        // mainAxisAlignment: Mai,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          TextField(
            decoration: InputDecoration(
              hintText: "Email",
            ),
          ),
          TextField(
            decoration: InputDecoration(
              hintText: "Email",
            ),
          ),
          TextButton(
            onPressed: () {},
            child: Text(
              "Goto Signup",
            ),
          ),
        ],
      ),
    );
  }
}
