import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:littlewords/provider/username.provider.dart';
import 'package:littlewords/widgets/littlewords_logo.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LoginRoute extends StatelessWidget {
  LoginRoute({Key? key}) : super(key: key);

  final _txtController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:
          Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        const Spacer(),
        const LittlewordsLogo(),
        const Spacer(),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
          child: TextField(
            controller: _txtController,
            decoration: InputDecoration(filled: true),
          ),
        ),

        Padding(
          padding: const EdgeInsets.only(left: 16, right: 16, top: 8, bottom: 32),
          child: SaveUsernameButton(
            controller: _txtController,
          ),
        )
      ]),
    );
  }
}

class SaveUsernameButton extends ConsumerWidget {
  const SaveUsernameButton({
    Key? key,
    required this.controller
  }) : super(key: key);

  final TextEditingController controller;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return ElevatedButton(
      onPressed: () => {_onPressed(ref)},
      style: ElevatedButton.styleFrom(
        minimumSize: const Size.fromHeight(48),
      ),
      child: const Text("Enregistrer nom"),
    );
  }

  void _onPressed(WidgetRef ref) {
    var text = controller.text;
    print('Username: "$text"');

    SharedPreferences.getInstance().then((prefs) {
      prefs.setString("username", text);
      ref.refresh(usernameProvider);
    });
  }
}