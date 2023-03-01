import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class WordCard extends StatelessWidget {
  const WordCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
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
                Text('Toto'),
                Spacer(),
                Text('#123')
              ],
            ),
            const Text('Petit mot que j\' ai récupéré sur la map')
          ],
        ),
      ),
    );
  }
}
