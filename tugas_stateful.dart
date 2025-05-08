import 'package:flutter/material.dart';

class Tugas extends StatefulWidget {
  const Tugas({super.key});

  @override
  State<Tugas> createState() => _TugasState();
}

class _TugasState extends State<Tugas> {
  String nama = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Input Nama"), backgroundColor: Colors.cyanAccent),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            TextField(
              decoration: InputDecoration(labelText: "Masukkan nama"),
              onChanged: (value) {
                setState(() {
                  nama = value;
                });
              },
            ),
            SizedBox(height: 20),
            Text("Halo, $nama!"),
          ],
        ),
      ),
    );
  }
}
