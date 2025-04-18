import 'package:flutter/material.dart';
import 'kolom_baris.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Latihan Flutter',
      home: KolomBaris(),
    );
  }
}
