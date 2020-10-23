import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Browse extends StatefulWidget {
  @override
  _BrowseState createState() => _BrowseState();
}

class _BrowseState extends State<Browse> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       backgroundColor: Colors.white,
       resizeToAvoidBottomPadding: false,
      appBar: AppBar( 
         backgroundColor: Colors.white,
        title:Text('Browse',
        style: GoogleFonts.montserrat(
           color:Colors.blueAccent[400]
        ),
        ),
        elevation: 0.0,
        centerTitle: true
      ),
      body: ListView(
        padding: const EdgeInsets.all(40),
        children:<Widget>[
            Container(
              child: Image.asset(
              'assets/browse.png',
              fit:BoxFit.contain
            ),
            ),
             Center(
            child:Text(
              'Feel free to browse through insurance companies and take a look at some of their insurance policies',
              style:GoogleFonts.montserrat(
                color:Colors.blueAccent[400],
                fontSize: 15.0
              )
            )
          ),
          SizedBox(height: 20.0,),
            GestureDetector(
             child: Container(
               height: 200,
              child: Card(
                child:Image.asset('assets/apa.jpeg',
                fit:BoxFit.contain,
                ),
                shape: RoundedRectangleBorder(
                  borderRadius:BorderRadius.circular(10.0),
                ),
              elevation: 10,
                margin: EdgeInsets.all(10),
              ),
            ),
            ),
             SizedBox(height: 20.0,),
              GestureDetector(
             child: Container(
               height: 200,
              child: Card(
                child:Image.asset('assets/cic.jpeg',
                fit:BoxFit.contain,
                ),
                shape: RoundedRectangleBorder(
                  borderRadius:BorderRadius.circular(10.0),
                ),
              elevation: 10,
                margin: EdgeInsets.all(10),
              ),
            ),
            ),
            SizedBox(height: 20.0,),
             GestureDetector(
             child: Container(
               height: 200,
              child: Card(
                child:Image.asset('assets/heritage.jpeg',
                fit:BoxFit.contain,
                ),
                shape: RoundedRectangleBorder(
                  borderRadius:BorderRadius.circular(10.0),
                ),
              elevation: 10,
                margin: EdgeInsets.all(10),
              ),
            ),
            ),
            
        SizedBox(height: 40.0,),
          ],
          ),
    );
  }
}