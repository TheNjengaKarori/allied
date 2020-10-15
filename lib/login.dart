import 'package:allied/bottomnav.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomPadding: false,
      body: Column(
        crossAxisAlignment:CrossAxisAlignment.start,
        children:<Widget>[
          Container(
            child:Stack(children: <Widget>[
              Container(
                padding:EdgeInsets.fromLTRB(20.0, 110.0, .0, 50.0),
                child: Text('Hello',
                style:GoogleFonts.montserrat(
                  fontSize: 80.0,
                  fontWeight: FontWeight.w300,
                )
                ),
              ),
              SizedBox(height:30.0),
              Container(
                padding:EdgeInsets.fromLTRB(20.0, 200.0, 0.0, 0.0),
                child: Text('There',
                style:GoogleFonts.montserrat(
                  fontSize: 80.0,
                  fontWeight: FontWeight.bold
                )
                ),
              ),
               Container(
                padding:EdgeInsets.fromLTRB(285.0, 200.0, 0.0, 0.0),
                child: Text('.',
                style:GoogleFonts.montserrat(
                  fontSize: 80.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.blueAccent[400]
                )
                ),
              )
            ],
            )
          ),
          Container(
            padding:EdgeInsets.only(top:35.0,left:20.0,right:20.0),
            child:Column(children: <Widget>[
              TextFormField(
        decoration: InputDecoration(
          icon:Icon(Icons.person_outline,
          color: Colors.blueAccent[400]
          ),
          labelText: "Full Names",
          labelStyle: GoogleFonts.montserrat(
            color: Colors.blueAccent[400]
          ),
          fillColor: Colors.blueAccent[400],
          focusedBorder:OutlineInputBorder(
            borderSide: const BorderSide(
              color: Colors.blueAccent, 
              width: 2.0),
            borderRadius: BorderRadius.circular(25.0),
          ),
        ),
      )
            ],)
          ),
           Container(
            padding:EdgeInsets.only(top:35.0,left:20.0,right:20.0),
            child:Column(children: <Widget>[
              TextFormField(
        decoration: InputDecoration(
          icon:Icon(Icons.mail_outline,
          color: Colors.blueAccent[400]
          ),
          labelText: "Email",
          labelStyle: GoogleFonts.montserrat(
            color: Colors.blueAccent[400] 
          ),
          fillColor: Colors.blueAccent[400],
          focusedBorder:OutlineInputBorder(
            borderSide: const BorderSide(color: Colors.blueAccent, width: 2.0),
            borderRadius: BorderRadius.circular(25.0),
          ),
        ),
      )
            ],)
          ),
          SizedBox(height:10.0),
          Container(
            alignment:Alignment(1.0,0.0),
            padding:EdgeInsets.fromLTRB(30.0, 15.0, 20.0, 0.0),
            child:InkWell(
              child: Text('Forgot Password',
              style:GoogleFonts.montserrat(
                color:Colors.blueAccent[400],
                fontWeight: FontWeight.bold,
                decoration: TextDecoration.underline
                              )
              ),
            )
          ),
          SizedBox(height:30.0),
          Center(
            child:ButtonTheme( 
              minWidth:110.0,
              height:50.0,
              child:RaisedButton(
                shape:RoundedRectangleBorder(
                  borderRadius:BorderRadius.circular(50.0),
                ),
                color:Colors.blueAccent[400],
                onPressed: (){
                 Navigator.push(context, 
                MaterialPageRoute(builder: (context)
                    => BottomNav(),
                 ),
                   );
                },
                child: Text('Login',
                style:GoogleFonts.montserrat(
                  color:Colors.white
                )),
              ),
            )
          ) 
        ]
      ),
    );
  }
}