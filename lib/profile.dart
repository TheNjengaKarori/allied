import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Profile extends StatefulWidget {
  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       backgroundColor:Colors.white,
      resizeToAvoidBottomPadding: false,
      appBar: AppBar(
        backgroundColor:Colors.white,
        title:Text('My Profile',
        style: GoogleFonts.montserrat(
           color:Colors.blueAccent[400]
        ),
        ),
        elevation: 0.0,
        centerTitle: true,
      ),
      body: Center(
        child:Text('My Profile')
      ),
    );
  }
}