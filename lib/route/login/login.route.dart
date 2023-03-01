import 'package:flutter/material.dart';
import 'package:littlewords/widgets/littlewords_logo.dart';

class LoginRoute extends StatelessWidget {
  const LoginRoute({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: const [
          Spacer(),
          LittlewordsLogo(),
          Spacer(),
          TextField(
            decoration: InputDecoration(
              filled: true
            ),
          ),
          ElevatedButton(
              onPressed: null,
              child: Text("Enregistrer nom")
          )
        ]),
    );
  }
}