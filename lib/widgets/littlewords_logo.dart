import 'package:flutter/material.dart';

class LittlewordsLogo extends StatelessWidget {
  const LittlewordsLogo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const CircleAvatar(
      backgroundImage: AssetImage('assets/images/logo.png'),
      radius: 100,
    );
  }
}