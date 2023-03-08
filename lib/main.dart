import 'package:flutter/material.dart';
import 'littlewordsapp.dart';
import 'package:littlewords/db/db.helper.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  DbHelper.initDb();

  runApp(const LittleWordsApp());
}