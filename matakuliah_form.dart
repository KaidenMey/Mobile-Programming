import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import './matakuliah_detail.dart';

class Matakuliah extends StatefulWidget {
  const Matakuliah({super.key});

  @override
  State<Matakuliah> createState() => _MatakuliahState();
}

class _MatakuliahState extends State<Matakuliah> {
  final _formKey = GlobalKey<FormState>();
  final _matakuliahCtrl = TextEditingController();
  final _sksCtrl = TextEditingController();
  final _semesterCtrl = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Masukan Mata Kuliah"),
        backgroundColor: Colors.cyanAccent,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              matakuliahField(),
              SizedBox(height: 10),
              sksField(),
              SizedBox(height: 10),
              semesterField(),
              SizedBox(height: 20),
              tombolSimpan(),
            ],
          ),
        ),
      ),
    );
  }

  Widget matakuliahField() {
    return TextFormField(
      decoration: InputDecoration(labelText: "Mata Kuliah"),
      controller: _matakuliahCtrl,
      validator: (value) {
        if (value == null || value.isEmpty) {
          return 'Mata kuliah tidak boleh kosong';
        }
        return null;
      },
    );
  }

  Widget sksField() {
    return TextFormField(
      decoration: InputDecoration(labelText: "SKS"),
      controller: _sksCtrl,
      keyboardType: TextInputType.number,
      inputFormatters: [FilteringTextInputFormatter.digitsOnly],
      validator: (value) {
        if (value == null || value.isEmpty) {
          return 'SKS tidak boleh kosong';
        }
        if (int.tryParse(value) == null) {
          return 'SKS harus berupa angka';
        }
        return null;
      },
    );
  }

  Widget semesterField() {
    return TextFormField(
      decoration: InputDecoration(labelText: "Semester"),
      controller: _semesterCtrl,
      validator: (value) {
        if (value == null || value.isEmpty) {
          return 'Semester tidak boleh kosong';
        }
        return null;
      },
    );
  }

  Widget tombolSimpan() {
    return ElevatedButton(
      onPressed: () {
        if (_formKey.currentState!.validate()) {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => MatakuliahDetail(
                matakuliah: _matakuliahCtrl.text,
                sks: int.parse(_sksCtrl.text),
                semester: _semesterCtrl.text,
              ),
            ),
          );
        }
      },
      child: Text("Simpan"),
    );
  }
}

