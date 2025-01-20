import 'package:flutter/material.dart';
import 'package:taskly_app/pages/home_page.dart';
import 'package:hive_ce_flutter/hive_flutter.dart';

void main() async{
  await Hive.initFlutter("hive_boxes");
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Taskly App',
      theme: ThemeData(
        useMaterial3: false,
        primarySwatch: Colors.red,
      ),
      home: const HomePage(),
    );
  }
}
