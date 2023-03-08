import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:littlewords/beans/dto/word.dto.dart';

class unknownWordCard extends StatelessWidget {
  const unknownWordCard({Key? key, required this.word}) : super(key: key);

  final WordDTO word;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
        width: word.uid.toString().length*56,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            decoration: BoxDecoration(
              border: Border.all(color: Colors.black),
              borderRadius: BorderRadius.circular(10),
            ),
            child: Padding(
              padding: const EdgeInsets.all(8),
              child: Center(child: Text(word.uid.toString(), textScaleFactor: 4,)),
            ),
          ),
        ),
    );
  }
}
