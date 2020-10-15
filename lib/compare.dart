import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Compare extends StatefulWidget {
  @override
  _CompareState createState() => _CompareState();
}

class _CompareState extends State<Compare> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
       resizeToAvoidBottomPadding: false,
        appBar: AppBar(
        backgroundColor:Colors.white,
        title:Text('Compare',
        style: GoogleFonts.montserrat(
           color:Colors.blueAccent[400]
        ),
        ),
        elevation: 0.0,
        centerTitle: true,
      ),
      body: ListView(
        padding: const EdgeInsets.fromLTRB(40.0, 40.0, 40.0, 0),
        children: [
          Container(
             child: Image.asset(
              'assets/compare.png',
              
              fit:BoxFit.contain
            ),
          ),
          SizedBox(height: 20,),
          Center(
            child:Text(
              'Compare insurance offered by multiple companies and pick the one thats suits your needs',
              style:GoogleFonts.montserrat(
                color:Colors.blueAccent[400],
                fontSize: 15.0
              )
            )
          )
        ],
      ),
    );
  }
}