import 'package:allied/compare.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class Life extends StatefulWidget {
  @override
  _LifeState createState() => _LifeState();
}

class _LifeState extends State<Life> {

  var _age =[ 
    "25 years and below",
    "26 - 30 years",
    "31 - 35 years",
    "35 - 40 years",
    "Above 40 years",

  ];

  var _save =[ 
    "2,000 - 5,000",
    "5,000 - 10,000",
    "5,000 - 10,000",
    "10,000 - 20,000",
    "over 20,000",
  ];

  var _live =[ 
    "Nairobi",
    "Mombasa",
    "Kisumu",
    "Thika",
    "Nakuru",
    "Naivasha",
    "Eldoret",
    "Kitale",
    "Rest of Kenya",
  ];
  @override
  Widget build(BuildContext context) {
     return Scaffold(
       backgroundColor:Colors.white,
      resizeToAvoidBottomPadding: false,
      appBar: AppBar(
        backgroundColor:Colors.white,
        title:Text('Life Insurance',
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
          'assets/life.png',
          fit: BoxFit.cover,
        ),
        SizedBox(height:30),
         FormBuilderDropdown(
        attribute: 'Age',
        decoration: InputDecoration(
          icon:FaIcon(FontAwesomeIcons.baby,
          color: Colors.blueAccent[400]
          ),
          labelText: 'Age',
         labelStyle: GoogleFonts.montserrat(
            color: Colors.blueAccent[400]
          ),
           hintText: "",
           hintStyle: TextStyle( color:Colors.blueAccent[400].withOpacity(0.6),fontStyle: FontStyle.italic)
        ),
        
        items: _age.map((_age) => DropdownMenuItem( 
          value: _age,
          child: Text('$_age'),
        )).toList()
        ),
         SizedBox(height:30),
         FormBuilderDropdown(
        attribute: 'Savings',
        decoration: InputDecoration(
          icon:FaIcon(FontAwesomeIcons.piggyBank,
          color: Colors.blueAccent[400]
          ),
          labelText: 'Your monthly savings?',
         labelStyle: GoogleFonts.montserrat(
            color: Colors.blueAccent[400]
          ),
           hintText: "",
           hintStyle: TextStyle( color:Colors.blueAccent[400].withOpacity(0.6),fontStyle: FontStyle.italic)
        ),
        
        items: _save.map((_save) => DropdownMenuItem( 
          value: _save,
          child: Text('$_save'),
        )).toList()
        ),
         SizedBox(height:30),
         FormBuilderDropdown(
        attribute: 'live',
        decoration: InputDecoration(
          icon:FaIcon(FontAwesomeIcons.home,
          color: Colors.blueAccent[400]
          ),
          labelText: 'Where do you live?',
         labelStyle: GoogleFonts.montserrat(
            color: Colors.blueAccent[400]
          ),
           hintText: "",
           hintStyle: TextStyle( color:Colors.blueAccent[400].withOpacity(0.6),fontStyle: FontStyle.italic)
        ),
        
        items: _live.map((_live) => DropdownMenuItem( 
          value: _live,
          child: Text('$_live'),
        )).toList()
        ),
        SizedBox(height: 40,),
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