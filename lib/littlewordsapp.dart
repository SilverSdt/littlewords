import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'route/error/error.route.dart';
import 'route/home/home.route.dart';
import 'route/loading/loading.route.dart';
import 'route/login/login.route.dart';
import 'providers/username.provider.dart';


class LittleWordsApp extends StatelessWidget {
  const LittleWordsApp({Key? key}): super(key: key);

  @override
  Widget build(BuildContext context){
    return const ProviderScope(
      child:  MaterialApp(
        title:  'Little Words',
        home: _Routing(),
      ),

    );
  }
}

class _Routing extends ConsumerWidget {
  const _Routing({Key? key,}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return ref.watch(usernameProvider).when(data: _whenData, error: _whenError, loading: _whenLoading);
  }
}

Widget _whenData(String? username){
  if (null == username){
    return LoginRoute();
  }
  return const HomeRoute();
}

Widget _whenError(obj, stack){
  return const ErrorRoute();
}

Widget _whenLoading(){
  return const LoadingRoute();
}