import 'package:flutter/material.dart';
import 'package:littlewords/widgets/littlewords_logo.dart';

class LoginRoute extends StatelessWidget {
  const LoginRoute({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:
          Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        const Spacer(),
        const LittlewordsLogo(),
        const Spacer(),
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
          child: TextField(
            decoration: InputDecoration(filled: true),
          ),
        ),

        Padding(
          padding: const EdgeInsets.only(left: 16, right: 16, top: 8, bottom: 32),
          child: ElevatedButton(
            onPressed: null,
            style: ElevatedButton.styleFrom(
              minimumSize: const Size.fromHeight(48),
            ),
            child: const Text("Enregistrer nom"),
          ),
        )
      ]),
    );
  }
}
