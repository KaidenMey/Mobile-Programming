import 'package:flutter/material.dart'; 

class HelloWorld extends StatelessWidget { 
  const HelloWorld({super.key}); 
  
  @override 
  Widget build(BuildContext context) { 
    return Scaffold( 
      appBar: AppBar( 
        title: Text("Belajar Flutter"),
        backgroundColor: Colors.cyanAccent,
      ), 
      body: Center( 
        child: Text("Hallo world"),
      ), 
    ); 
  } 
}
