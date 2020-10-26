import 'package:allied/compare.dart';
import 'package:allied/family.dart';
import 'package:allied/individual.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';

class Medical extends StatefulWidget {
  @override
  _MedicalState createState() => _MedicalState();
}

class _MedicalState extends State<Medical> {

  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       backgroundColor:Colors.white,
      resizeToAvoidBottomPadding: false,
      appBar: AppBar(
        backgroundColor:Colors.white,
        title:Text('Medical Insurance',
        style: GoogleFonts.montserrat(
          color:Colors.blueAccent[400]
        ),
        ),
         centerTitle: true,
        elevation:0.0,
      ),
      body: ListView(
        padding: const EdgeInsets.all(40),
        children: [
          Image.asset( 
          'assets/medical.png',
          fit: BoxFit.cover,
        ),
        SizedBox(height: 70,),
          Row(children: [
               FlatButton(
              onPressed: (){
                 Navigator.push(context, 
                MaterialPageRoute(builder: (context)
                    => Individual(),
                 ),
                   );
                },
              child: Column(
                children:<Widget>[
                    FaIcon(FontAwesomeIcons.userAlt,  
          color: Colors.blueAccent[400],size:70
          ),
                  Text('Individual',
                  style: GoogleFonts.montserrat(
                    color:Colors.blueAccent[400]
                  ),)
                ]
              ),
              ),
             SizedBox(width: 100,),
              FlatButton(
              onPressed: (){
                 Navigator.push(context, 
                MaterialPageRoute(builder: (context)
                    => Family(),
                 ),
                   );
                },
              child: Column(
                children:<Widget>[
                    FaIcon(FontAwesomeIcons.users,  
          color: Colors.blueAccent[400],size:70
          ),
                  Text('Family',
                  style: GoogleFonts.montserrat(
                    color:Colors.blueAccent[400]
                  ),)
                ]
              ),
              ),
          ],),
        ],
      ),
    );
  }
}