
import 'package:allied/categories/vehicle..dart';
import 'package:allied/claim.dart';
import 'package:allied/profile.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Colors.white,
     appBar: AppBar(
       backgroundColor: Colors.white,
       elevation: 0.0,
       actions:<Widget>[
         IconButton( 
           onPressed:() {
            Navigator.push(context, 
                MaterialPageRoute(builder: (context)
                    => Profile(),
                 ),
                   );
           },
           icon:Icon(Icons.person_outline,
           color: Colors.blueAccent,)
         )
       ]
     ),
      resizeToAvoidBottomPadding: false,
     
      body:Column(
        crossAxisAlignment:CrossAxisAlignment.center,
        children: <Widget>[
          Container(
            child:Stack(children: <Widget>[
               Container(
                padding:EdgeInsets.fromLTRB(0.0, 25.0, .0, 50.0),
                child: Text('Pick an',
                style:GoogleFonts.montserrat(
                  fontSize: 60.0,
                  fontWeight: FontWeight.w300,
                )
                ),
              ),
              Container(
                padding:EdgeInsets.fromLTRB(0.0, 100.0, .0, 50.0),
                child: Text('Insurance',
                style:GoogleFonts.montserrat(
                  fontSize: 60.0,
                  fontWeight: FontWeight.bold,
                )
                ),
              ),
              Container(
                padding:EdgeInsets.fromLTRB(335.0, 78.0, 0.0, 0.0),
                child: Text('.',
                style:GoogleFonts.montserrat(
                  fontSize: 80.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.blueAccent[400]
                )
                ),
              ),
             
            ],
            ),
          ),
          SizedBox(height:30.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
            FlatButton(
              onPressed: (){
                 Navigator.push(context, 
                MaterialPageRoute(builder: (context)
                    => Vehicle(),
                 ),
                   );
                },
              child: Column(
                children:<Widget>[
                  Icon(Icons.directions_car,
                  color: Colors.blueAccent[400],
                  size: 40.0,),
                  Text('Vehicle',
                  style: GoogleFonts.montserrat(
                    color:Colors.blueAccent[400]
                  ),)
                ]
              ),
              ),
              FlatButton(
              onPressed: null, 
              child: Column(
                children:<Widget>[
                  Icon(Icons.local_hospital,
                  color: Colors.blueAccent[400],
                  size: 40.0,),
                  Text('Medical',
                  style: GoogleFonts.montserrat(
                    color:Colors.blueAccent[400]
                  ),)
                ]
              ),
              ),
              FlatButton(
              onPressed: null, 
              child: Column(
                children:<Widget>[
                  Icon(Icons.home,
                  color: Colors.blueAccent[400],
                  size: 40.0,),
                  Text('Building',
                  style: GoogleFonts.montserrat(
                    color:Colors.blueAccent[400]
                  ),)
                ]
              ),
              ),
            ],
          ),
          SizedBox(height:50.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
            FlatButton(
              onPressed: null, 
              child: Column(
                children:<Widget>[
                  Icon(Icons.accessibility_new,
                  color: Colors.blueAccent[400],
                  size: 40.0,),
                  Text('Life',
                  style: GoogleFonts.montserrat(
                    color:Colors.blueAccent[400]
                  ),)
                ]
              ),
              ),
              FlatButton(
              onPressed: null, 
              child: Column(
                children:<Widget>[
                  Icon(Icons.directions_boat,
                  color: Colors.blueAccent[400],
                  size: 40.0,),
                  Text('Marine',
                  style: GoogleFonts.montserrat(
                    color:Colors.blueAccent[400]
                  ),)
                ]
              ),
              ),
              FlatButton(
              onPressed: null, 
              child: Column(
                children:<Widget>[
                  Icon(Icons.flight_takeoff,
                  color: Colors.blueAccent[400],
                  size: 40.0,),
                  Text('Travel',
                  style: GoogleFonts.montserrat(
                    color:Colors.blueAccent[400]
                  ),)
                ]
              ),
              ),
            ],
          ),
          SizedBox(height:50.0),
           Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
            FlatButton(
              onPressed: null, 
              child: Column(
                children:<Widget>[
                  Icon(Icons.folder,
                  color: Colors.blueAccent[400],
                  size: 40.0,),
                  Text('Assets',
                  style: GoogleFonts.montserrat(
                    color:Colors.blueAccent[400]
                  ),)
                ]
              ),
              ),
              FlatButton(
              onPressed: null, 
              child: Column(
                children:<Widget>[
                  Icon(Icons.laptop_windows,
                  color: Colors.blueAccent[400],
                  size: 40.0,),
                  Text('Electronics',
                  style: GoogleFonts.montserrat(
                    color:Colors.blueAccent[400]
                  ),)
                ]
              ),
              ),
              FlatButton(
              onPressed: null, 
              child: Column(
                children:<Widget>[
                  Icon(Icons.store,
                  color: Colors.blueAccent[400],
                  size: 40.0,),
                  Text('Business',
                  style: GoogleFonts.montserrat(
                    color:Colors.blueAccent[400]
                  ),)
                ]
              ),
              ),
            ],
          ),
          Container(
            padding:EdgeInsets.fromLTRB(260.0, 47.0, .0, 50.0),
            child: Center( 
              child: InkWell( 
                onTap: (){
                  Navigator.push(context, 
                  MaterialPageRoute(builder: 
                  (context) => Claim()
                  )
                  );
                },
                  child: Row(
                    children: [
                      Text(
                        'Make A Claim',
                        style: GoogleFonts.montserrat(
                          color: Colors.blueAccent[400],
                          fontSize: 15,
                          fontWeight: FontWeight.w500
                        ),
                      ),
                      Icon(Icons.arrow_forward_ios,
                      color: Colors.blueAccent[400],
                      ),
                    ],
                  ),
              )
            ),
          )
        ],
      ),
      );
    
  }
}




  
