import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:littlewords/beans/dto/word.dto.dart';

class WordCard extends StatelessWidget {
  const WordCard({Key? key, required this.word}) : super(key: key);

  final WordDTO word;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(

        decoration: BoxDecoration(
          border: Border.all(color: Colors.black),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Padding(
          padding: const EdgeInsets.all(8),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children:[
              Row(
                children: [
                  Text(word.author!),
                  Spacer(),
                  Text(word.uid.toString())
                ],
              ),
               Text(word.content!)
            ],
          ),
        ),
      ),
    );
  }
}
