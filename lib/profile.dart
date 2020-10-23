import 'package:allied/login.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
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
      body: ListView(
        padding: const EdgeInsets.all(40),
        children: [
          CircleAvatar(
             backgroundColor: Colors.blueAccent[400],
            child:FaIcon(FontAwesomeIcons.user ,
          color: Colors.white,
          size: 40,
          ),
          radius: 50,
          ),
          SizedBox(height:40),
          ExpansionTile(
            title: Text('My Policies',
            style: GoogleFonts.montserrat(
              color: Colors.blueAccent[400]
            ),),
            children: [ 
              ListTile( 
                title: Text( 
                  '',
                   style: GoogleFonts.montserrat(

            ),
                ),
              )
          ],),
           SizedBox(height:20),
          ExpansionTile(
            title: Text('My Claims',
            style: GoogleFonts.montserrat(
              color: Colors.blueAccent[400]
            ),),
            children: [ 
              ListTile( 
                title: Text( 
                  '',
                   style: GoogleFonts.montserrat(

            ),
                ),
              )
          ],),
          SizedBox(height:20),
           Center(
            child:ButtonTheme( 
              minWidth:3000.0,
              height:50.0,
              child:RaisedButton(
                shape:RoundedRectangleBorder(
                  borderRadius:BorderRadius.circular(50.0),
                ),
                color:Colors.blueAccent[400],
                onPressed: (){
                 Navigator.push(context, 
                MaterialPageRoute(builder: (context)
                    => Login(),
                 ),
                   );
                },
                child: Text('Invite a friend',
                style:GoogleFonts.montserrat(
                  color:Colors.white
                )),
              ),
            )
          ) ,
          SizedBox(height:40),
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
                    => Login(),
                 ),
                   );
                },
                child: Text('Log Out',
                style:GoogleFonts.montserrat(
                  color:Colors.white
                )),
              ),
            )
          ) 
        ],
      )
    );
  }
}