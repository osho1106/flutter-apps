// ignore_for_file: unused_import

import 'package:flutter/material.dart';
import 'package:test/views/cargo_view.dart';
import 'package:test/views/drinkStore_view.dart';
import 'package:test/views/finance_home_view.dart';
import 'package:test/views/get_started_view.dart';
import 'package:test/views/login_view.dart';
import 'package:test/views/mailBox_view.dart';
import 'package:test/views/notification_view.dart';
import 'package:test/views/social_view.dart';
import 'package:test/views/sport_view.dart';
import 'package:test/views/sub_view.dart';
import 'package:test/views/todo_view.dart';
import 'package:test/views/videoCall_view.dart';
import 'package:test/views/welcome_view.dart';
import 'package:test/views/local_auth_faceid.dart';

import 'views/not_found_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'COMMIT GINZA',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.indigo),
      home: const LocalAuthPage(),
    );
  }
}
