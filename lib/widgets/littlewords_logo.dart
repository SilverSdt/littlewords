import 'package:flutter/material.dart';

class LittlewordsLogo extends StatelessWidget {
  const LittlewordsLogo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 128,
      height: 128,
      decoration: BoxDecoration(
        color: Colors.tealAccent,
        shape: BoxShape.circle,
        border: Border.all(color: Colors.black, width: 8)
      ),
    );
  }
}