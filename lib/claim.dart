
import 'package:allied/history.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Claim extends StatefulWidget {
  @override
  _ClaimState createState() => _ClaimState();
}

class _ClaimState extends State<Claim> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        
        elevation: 0,
        centerTitle: true,
      ),
      resizeToAvoidBottomPadding: false,

      body: Column(
        crossAxisAlignment:CrossAxisAlignment.center,
        children: <Widget>[
          Container(
            child:Stack(children: <Widget>[
               Container(
                padding:EdgeInsets.fromLTRB(0.0, 25.0, .0, 50.0),
                child: Text('Pick a',
                style:GoogleFonts.montserrat(
                  fontSize: 60.0,
                  fontWeight: FontWeight.w300,
                )
                ),
              ),
              Container(
                padding:EdgeInsets.fromLTRB(0.0, 100.0, .0, 50.0),
                child: Text('Claim',
                style:GoogleFonts.montserrat(
                  fontSize: 60.0,
                  fontWeight: FontWeight.bold,
                )
                ),
              ),
              Container(
                padding:EdgeInsets.fromLTRB(200.0, 78.0, 0.0, 0.0),
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
                },
              child: Column(
                children:<Widget>[
                  Icon(Icons.home,
                  color: Colors.blueAccent[400],
                  size: 40.0,),
                  Text('Housing',
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
                  (context) => History()
                  )
                  );
                },
                  child: Row(
                    children: [
                      Text(
                        'Claim History',
                        style: GoogleFonts.montserrat(
                          color: Colors.blueAccent[400],
                          fontSize: 15,
                          fontWeight: FontWeight.w500
                        ),
                      ),
                      Icon(Icons.history,
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