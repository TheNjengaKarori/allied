import 'dart:io';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:flutter_phone_direct_caller/flutter_phone_direct_caller.dart';

//class CallsAndMessages{
  //void textMe(String number) => launch('tel:$number');
//}


class Contact extends StatefulWidget {
  @override
  _ContactState createState() => _ContactState();
}

class _ContactState extends State<Contact> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
       backgroundColor:Colors.white,
      resizeToAvoidBottomPadding: false,
      appBar: AppBar(
        backgroundColor:Colors.white,
        title:Text('Contact Us',
        style: GoogleFonts.montserrat(
           color:Colors.blueAccent[400]
        ),
        ),
        elevation: 0.0,
        centerTitle: true,
      ),
      body:  ListView(
        children:<Widget>[
            Container(
              child: Image.asset(
              'assets/contact.png',
              
              fit:BoxFit.cover
            ),
            ),
             SizedBox(height: 60.0,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                 FlatButton(
              onPressed: _callNumber,
              child: Column(
                children:<Widget>[
                  Icon(Icons.local_phone,
                  color: Colors.blueAccent[400],
                  size: 40.0,),
                  Text('Call Us',
                  style: GoogleFonts.montserrat(
                    color:Colors.blueAccent[400]
                  ),)
                ]
              ),
              ),
              FlatButton(
              onPressed: _textMe,
                            child: Column(
                              children:<Widget>[
                                Icon(Icons.chat,
                                color: Colors.blueAccent[400],
                                size: 40.0,),
                                Text('Text Us',
                                style: GoogleFonts.montserrat(
                                  color:Colors.blueAccent[400]
                                ),)
                              ]
                            ),
                            ),
                            FlatButton(
                            onPressed: (){},
                            child: Column(
                              children:<Widget>[
                                Icon(Icons.alternate_email,
                                color: Colors.blueAccent[400],
                                size: 40.0,),
                                Text('Email Us',
                                style: GoogleFonts.montserrat(
                                  color:Colors.blueAccent[400]
                                ),)
                              ]
                            ),
                            ),
                            ],
                          ),
                        ],
                        )
                  );
                }
              
                 _callNumber() async{
                   const number = '034567890';
                   bool res = await FlutterPhoneDirectCaller.callNumber(number);
  }

  

  _textMe() async {
    if(Platform.isAndroid){
      const uri = 'sms: 23456789?body=hello%20there';
      await launch(uri);
    }
    else if(Platform.isIOS){
       const uri = 'sms: 23456789?body=hello%20there';
    }

  }


}

//import 'package:get_it/get_it.dart';