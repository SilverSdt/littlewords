import 'package:flutter/material.dart';

class LittlewordsLogo extends StatelessWidget {
  const LittlewordsLogo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: Colors.white,
        shape: BoxShape.circle,
        boxShadow: [BoxShadow(blurRadius: 2, color: Colors.black, spreadRadius: 1, offset: Offset(3, 4))],
      ),
      child: const CircleAvatar(
        radius: 100,
        backgroundImage: AssetImage('assets/images/logo.png'),
      ),
    );
  }
}