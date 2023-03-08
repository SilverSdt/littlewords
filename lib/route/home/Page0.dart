import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:littlewords/beans/dto/word.dto.dart';
import 'package:littlewords/providers/words_around.provider.dart';
import 'package:littlewords/widgets/wordAround.dart';

import '../../widgets/wordCard.dart';

class Page0 extends ConsumerWidget {
  const Page0({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return ref
        .watch(wordsAroundProvider)
        .when(data: _whenData, error: _whenError, loading: _whenLoading);
  }

  Widget _whenData(List<WordDTO> data) {
    if (data.isEmpty){
      return const Center(child: Text("Aucun mot a proximité", textScaleFactor: 2,));
    }
    return ListView.builder(
        itemCount: data.length,
        itemBuilder: (context, index){
          return WordAround(word: data[index]);
        });
  }

  Widget _whenError(Object error, StackTrace stackTrace) {
    return Center(child: Text(error.toString()));
  }

  Widget _whenLoading() {
    return const Center(child: CircularProgressIndicator());
  }
}