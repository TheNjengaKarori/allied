import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';


class Alert extends StatefulWidget {
  @override
  _AlertState createState() => _AlertState();
}

class _AlertState extends State<Alert> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
       resizeToAvoidBottomPadding: false,
        appBar: AppBar( 
         backgroundColor: Colors.white,
        title:Text('Notifications',
        style: GoogleFonts.montserrat(
           color:Colors.blueAccent[400]
        ),
        ),
        elevation: 0.0,
        centerTitle: true
      ),
      body: ListView(
        children: [
          Container( 
           padding:EdgeInsets.fromLTRB(250.0, 600.0, 0.0, 50.0),
            child: FloatingActionButton( 
              child:new FaIcon(FontAwesomeIcons.trashAlt,
          color: Colors.white
          ),
          onPressed: (){},
            )
            )
          
          
        ],
        
      ),
    );
  }
}