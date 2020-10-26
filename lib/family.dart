import 'package:allied/compare.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';

class Family extends StatefulWidget {
  @override
  _FamilyState createState() => _FamilyState();
}

class _FamilyState extends State<Family> {

  DateTime selectedDate =
DateTime.now();

  var _inpatient =[ 
    "500,000",
    "1,000,000",
    "2,000,000",
    "5,000,000",
    "10,000,000",
    "20,000,000",
  ];

  var _condition = [
    "No",
    "yes"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       backgroundColor:Colors.white,
      resizeToAvoidBottomPadding: false,
      appBar: AppBar(
        backgroundColor:Colors.white,
        title:Text('Family Insurance',
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
          'assets/family.png',
          fit: BoxFit.cover,
        ),
        Column(
          children: [
            FormBuilder( 
              child:Column(children: [
                //inpatient
                 FormBuilderDropdown(
        attribute: 'inpatient',
        decoration: InputDecoration(labelText: 'Annual Inpatient Cover Limit (Ksh)',
         labelStyle: GoogleFonts.montserrat(
            color: Colors.blueAccent[400]
          ),
           hintText: "500,000",
           hintStyle: TextStyle( color:Colors.blueAccent[400].withOpacity(0.6),fontStyle: FontStyle.italic)
        ),
        
        items: _inpatient.map((_inpatient) => DropdownMenuItem( 
          value: _inpatient,
          child: Text('$_inpatient'),
        )).toList()
        ),
        SizedBox(height: 40,),
        //pre-exiting condition
          FormBuilderDropdown(
        attribute: 'condition',
        decoration: InputDecoration(labelText: 'Any pre-existing medical condition?',
         labelStyle: GoogleFonts.montserrat(
            color: Colors.blueAccent[400]
          ),
           hintText: "No",
           hintStyle: TextStyle( color:Colors.blueAccent[400].withOpacity(0.6),fontStyle: FontStyle.italic)
        ),
        
        items: _condition.map((_condition) => DropdownMenuItem( 
          value: _condition,
          child: Text('$_condition'),
        )).toList() 
        ),
        SizedBox(height:40,),
       Column(
         children: [
           Text('DOB of Applicant',
           style:  GoogleFonts.montserrat(
            color: Colors.blueAccent[400]
           )
          ),
           Container( 
             height: 150,
             child: CupertinoDatePicker(
               mode: CupertinoDatePickerMode.date,
               initialDateTime: DateTime(1940,1,1),
               onDateTimeChanged: (DateTime newDateTime){

               },
             ),
           ),
         ],
       ),
         SizedBox(height:40,),
       Column(
         children: [
          Text('DOB of Spouse',
            style:  GoogleFonts.montserrat(
            color: Colors.blueAccent[400]
           )
          ),
           Container( 
             height: 150,
             child: CupertinoDatePicker(
               mode: CupertinoDatePickerMode.date,
               initialDateTime: DateTime(1940,1,1),
               onDateTimeChanged: (DateTime newDateTime){

               },
             ),
           ),
         ],
       ),
       SizedBox(height:40),
        TextFormField(
        decoration: InputDecoration(
          icon:FaIcon(FontAwesomeIcons.hashtag,  
          color: Colors.blueAccent[400]
          ),
          labelText: "No. of Children (0 - 18 years old)",
          labelStyle: GoogleFonts.montserrat(
            color: Colors.blueAccent[400]
          ),
          hintText: ('Maximum 6'),
          hintStyle: TextStyle( color:Colors.blueAccent[400].withOpacity(0.6),fontStyle: FontStyle.italic),
          fillColor: Colors.blueAccent[400],
          focusedBorder:OutlineInputBorder(
            borderSide: const BorderSide(
              color: Colors.blueAccent, 
              width: 2.0),
            borderRadius: BorderRadius.circular(25.0),
          ),
        ),
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
          ) 
              ],) ,
            ),
          ],
        )
      ],),
    );
  }
}