import 'package:flutter/material.dart';

class MatakuliahDetail extends StatelessWidget {
  final String matakuliah;
  final int sks;
  final String semester;

  const MatakuliahDetail({super.key, required this.matakuliah, required this.sks, required this.semester});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Detail Mata Kuliah"),
      backgroundColor: Colors.cyanAccent,),
      body: Center(
        child: Column(
          children: [
            Text("Mata Kuliah : " + matakuliah),
            Text("SKS : ${sks}"),
            Text("Semester : " + semester)
          ],
        ),
      ),
    );
  }
}

