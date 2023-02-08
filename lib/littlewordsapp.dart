import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';


class LittleWordsApp extends StatelessWidget {
  const LittleWordsApp({Key? key}): super(key: key);

  @override
  Widget build(BuildContext context){
    return const ProviderScope(
      child:  MaterialApp(
        title:  'Little Words',
        home: _Routing(),
      ),

    )
  }
}

class _Routing extends ConsumerWidget {
  const _Routing({Key? key,}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return ref.watch(username.provider).when(data: _whenData, error: _whenError, loading: _whenLoading);
  }
}

Widget _whenData(String? username){
  if (null==username)(String? username){
    return LoginRoute();
  }
  return HomeRoute();
}

Widget _whenError(String? username){
  return ErrorRoute();
}

Widget _whenLoading{
  return LoadindRoute();
}