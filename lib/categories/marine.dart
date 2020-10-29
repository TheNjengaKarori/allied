import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Marine extends StatefulWidget {
  @override
  _MarineState createState() => _MarineState();
}

class _MarineState extends State<Marine> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       backgroundColor:Colors.white,
      resizeToAvoidBottomPadding: false,
      appBar: AppBar(
        backgroundColor:Colors.white,
        title:Text('Marine Insurance',
        style: GoogleFonts.montserrat(
          color:Colors.blueAccent[400]
        ),
        ),
         centerTitle: true,
        elevation:0.0,
      ),
      body: ListView(children: [
        Image.asset( 
          'assets/home.png',
          fit: BoxFit.cover,
        ),
      ],),
      
    );
  }
}