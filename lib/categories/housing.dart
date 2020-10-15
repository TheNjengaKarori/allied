
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


class Housing extends StatefulWidget {
  @override
  _HousingState createState() => _HousingState();
}

class _HousingState extends State<Housing> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       backgroundColor:Colors.white,
      resizeToAvoidBottomPadding: false,
      appBar: AppBar(
        backgroundColor:Colors.white,
        title:Text('Housing Insurance',
        style: GoogleFonts.montserrat(
          color:Colors.blueAccent[400]
        ),
        ),
         centerTitle: true,
        elevation:0.0,
      ),
      body: ListView(
        children:<Widget>[
            Container(
              child: Image.asset(
              'assets/home.png',
              fit:BoxFit.contain
            ),
            ),
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
          )
      );
  }
}
