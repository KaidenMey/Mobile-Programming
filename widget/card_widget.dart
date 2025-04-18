// import 'package:flutter/material.dart';

// class CardWidget extends StatelessWidget {
//   final IconData icon;
//   final String judul;

//   // const CardWidget({required this.judul, required this.icon, Key? key}) : super(key: key);


//   const CardWidget({super.key, required this.icon, required this.judul});

//   @override
//   Widget build(BuildContext context) {
//     return Card(
//       child: ListTile(
//         leading: Icon(icon),
//         title: Text(judul),
//       )
//     );
//   }
// }



import 'package:flutter/material.dart'; 

class CardWidget extends StatelessWidget { 
  final IconData icon; 
  final String judul; 

  const CardWidget({super.key, required this.icon, required this.judul}); 

  @override 
  Widget build(BuildContext context) { 
    return Card( 
      child: ListTile( 
        leading: Icon(icon), 
        title: Text(judul), 
      ), 
    ); 
  } 
}
