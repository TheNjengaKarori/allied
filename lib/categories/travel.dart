import 'package:allied/compare.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class Travel extends StatefulWidget {
  @override
  _TravelState createState() => _TravelState();
}

class _TravelState extends State<Travel> {

  var _continent =[
    "Africa",
    "Asia",
    "Europe",
    "North America",
    "South America",
    "Australia\New Zealand",
  ];

  var _travelling =[
    "Individual",
    "Student"
  ];

  var _purpose =[
    "holiday",
    "business"
  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
       backgroundColor:Colors.white,
      resizeToAvoidBottomPadding: false,
      appBar: AppBar(
        backgroundColor:Colors.white,
        title:Text('Travel Insurance',
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
          'assets/Travel.png',
          fit: BoxFit.cover,
        ),
         SizedBox(height:30),
         FormBuilderDropdown(
        attribute: 'Destination',
        decoration: InputDecoration(
          icon:FaIcon(FontAwesomeIcons.baby,
          color: Colors.blueAccent[400]
          ),
          labelText: 'Destination',
         labelStyle: GoogleFonts.montserrat(
            color: Colors.blueAccent[400]
          ),
           hintText: "",
           hintStyle: TextStyle( color:Colors.blueAccent[400].withOpacity(0.6),fontStyle: FontStyle.italic)
        ),
        
        items: _continent.map((_continent) => DropdownMenuItem( 
          value: _continent,
          child: Text('$_continent'),
        )).toList()
        ),
         SizedBox(height:30),
         FormBuilderDropdown(
        attribute: 'Travelling',
        decoration: InputDecoration(
          icon:FaIcon(FontAwesomeIcons.piggyBank,
          color: Colors.blueAccent[400]
          ),
          labelText: 'Who is travelling?',
         labelStyle: GoogleFonts.montserrat(
            color: Colors.blueAccent[400]
          ),
           hintText: "",
           hintStyle: TextStyle( color:Colors.blueAccent[400].withOpacity(0.6),fontStyle: FontStyle.italic)
        ),
        
        items: _travelling.map((_travelling) => DropdownMenuItem( 
          value: _travelling,
          child: Text('$_travelling'),
        )).toList()
        ),
         SizedBox(height:30),
         FormBuilderDropdown(
        attribute: '',
        decoration: InputDecoration(
          icon:FaIcon(FontAwesomeIcons.home,
          color: Colors.blueAccent[400]
          ),
          labelText: 'Purpose of travel?',
         labelStyle: GoogleFonts.montserrat(
            color: Colors.blueAccent[400]
          ),
           hintText: "",
           hintStyle: TextStyle( color:Colors.blueAccent[400].withOpacity(0.6),fontStyle: FontStyle.italic)
        ),
        
        items: _purpose.map((_purpose) => DropdownMenuItem( 
          value: _purpose,
          child: Text('$_purpose'),
        )).toList()
        ),
         SizedBox(height:40),
         Center( 
             child: TextFormField(
        decoration: InputDecoration(
           icon:FaIcon(FontAwesomeIcons.moneyBillWaveAlt,
          color: Colors.blueAccent[400]
          ),
          labelText: "Days of Travel",
          labelStyle: GoogleFonts.montserrat(
            color: Colors.blueAccent[400]
          ),
          hintText: ('5 days'),
          hintStyle: TextStyle( color:Colors.blueAccent[400].withOpacity(0.6),fontStyle: FontStyle.italic),
          fillColor: Colors.blueAccent[400],
          focusedBorder:OutlineInputBorder(
            borderSide: const BorderSide(
              color: Colors.blueAccent, 
              width: 2.0),
            borderRadius: BorderRadius.circular(25.0),
          ),
        ),
         keyboardType:TextInputType.number,
        inputFormatters: [FilteringTextInputFormatter.digitsOnly],
      ),
           ),
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
                    => Compare(),
                 ),
                   );
                },
                child: Text('Search',
                style:GoogleFonts.montserrat(
                  color:Colors.white        
                )),
              ),
            )
          ) ,
          SizedBox(height:50),
      ],),
    );
  }
}