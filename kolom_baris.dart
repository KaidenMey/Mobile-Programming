import 'package:flutter/material.dart';

const double cellPadding = 180.0; // ats bwh
const double horizontalPadding = 5.0; // kiri kana

class KolomBaris extends StatelessWidget {
  const KolomBaris({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Kolom dan Baris"),
        backgroundColor: Colors.cyanAccent,
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              baris("Baris 1"),
              SizedBox(height: cellPadding),
              baris("Baris 2"),
              SizedBox(height: cellPadding),
              baris("Baris 3"),
            ],
          ),
        ),
      ),
    );
  }

  Widget baris(String baris) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Padding(
          padding:
              const EdgeInsets.symmetric(horizontal: horizontalPadding),
          child: Text('$baris, Kolom 1', textAlign: TextAlign.start),
        ),
        Padding(
          padding:
              const EdgeInsets.symmetric(horizontal: horizontalPadding),
          child: Text('$baris, Kolom 2', textAlign: TextAlign.start),
        ),
        Padding(
          padding:
              const EdgeInsets.symmetric(horizontal: horizontalPadding),
          child: Text('$baris, Kolom 3', textAlign: TextAlign.start),
        ),
      ],
    );
  }
}
