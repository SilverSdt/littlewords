import 'package:flutter/material.dart';
import 'package:littlewords/beans/dto/word.dto.dart';
import 'package:littlewords/widgets/wordCard.dart';

import '../../db/db.helper.dart';

class Page1 extends StatelessWidget{
  const Page1({Key? key}) : super (key: key);

  @override
  Widget build(BuildContext context){
    return FutureBuilder(
        future: DbHelper.findAll(),
        builder: (context, snapshot){

          if (!snapshot.hasData){
            return const CircularProgressIndicator();
          }

          final List<WordDTO>? data = snapshot.data;

          if (data == null || data.isEmpty){
            return const Text("Aucun mot ramassé");
          }

          return ListView.builder(
              itemCount: data.length,
              itemBuilder: (context, index){
                return WordCard(word: data[index]);
              });
        }
    );
  }
}