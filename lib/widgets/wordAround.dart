import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:littlewords/beans/dto/one_word.dto.dart';
import 'package:littlewords/beans/dto/word.dto.dart';
import 'package:littlewords/db/db.helper.dart';
import 'package:littlewords/providers/dio.provider.dart';
import 'package:littlewords/providers/words_around.provider.dart';
import 'package:littlewords/widgets/unknownWordCard.dart';

class WordAround extends ConsumerWidget {
  const WordAround({
    Key? key,
    required this.word
  }) : super(key: key);

    final WordDTO word;

  @override
  Widget build(BuildContext context, WidgetRef ref) {

    return GestureDetector(
      onTap: () {
        ref.refresh(wordsAroundProvider);
        final Dio dio = ref.read(dioProvider);
        var url = "/word?uid=${word.uid}&latitude=${word.latitude}&longitude=${word.longitude}";

        dio.get(url).then((response) {
          var jsonAsString = response.toString();
          var json = jsonDecode(jsonAsString);
          final OneWordDTO oneWordDTO = OneWordDTO.fromJson(json);

          if (oneWordDTO.data != null) {
            oneWordDTO.data?.longitude = word.longitude;
            oneWordDTO.data?.latitude = word.latitude;
            DbHelper.insert(oneWordDTO.data!);
          }

          // TODO :
          // OK 1. Insert du word dans db local si non null
          // 2. Refresh wordsAroundProvider
          // 3. Afficher une snackbar si data == null
        }).onError((error, stackTrace) {
         // return Text(error.toString());
        });
      },
      child: unknownWordCard(word: word)
    );
  }
}
