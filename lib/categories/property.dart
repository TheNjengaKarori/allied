import 'package:allied/compare.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class Property extends StatefulWidget {
  @override
  _PropertyState createState() => _PropertyState();
}

class _PropertyState extends State<Property> {

  var _property =[ 
    "Private",
    "Commercial",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       backgroundColor:Colors.white,
      resizeToAvoidBottomPadding: false,
      appBar: AppBar(
        backgroundColor:Colors.white,
        title:Text('Property Insurance',
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
          'assets/home.png',
          fit: BoxFit.cover,
        ),
        Column(
          children: [
            FormBuilder( 
           child: Column(children: [
             FormBuilderDropdown(
        attribute: 'property',
        decoration: InputDecoration(
          icon:FaIcon(FontAwesomeIcons.home,
          color: Colors.blueAccent[400]
          ),
          labelText: 'Type of Property',
         labelStyle: GoogleFonts.montserrat(
            color: Colors.blueAccent[400]
          ),
           hintText: "Private",
           hintStyle: TextStyle( color:Colors.blueAccent[400].withOpacity(0.6),fontStyle: FontStyle.italic)
        ),
        
        items: _property.map((_property) => DropdownMenuItem( 
          value: _property,
          child: Text('$_property'),
        )).toList()
        ),
        SizedBox(height:40),
         TextFormField(
        decoration: InputDecoration(
         icon:FaIcon(FontAwesomeIcons.dollarSign,
          color: Colors.blueAccent[400]
          ),
          labelText: "Value of the property",
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
         keyboardType:TextInputType.datetime,
        inputFormatters: [FilteringTextInputFormatter.digitsOnly],
      ),
      SizedBox(height:40),
         TextFormField(
        decoration: InputDecoration(
         icon:FaIcon(FontAwesomeIcons.dollarSign,
          color: Colors.blueAccent[400]
          ),
          labelText: "Vlue of the contents in the Property (TV,Furniture, jewelery,etc)",
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
         keyboardType:TextInputType.datetime,
        inputFormatters: [FilteringTextInputFormatter.digitsOnly],
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
           ],), 
          )
          ],
          
        )
      ],),
    );
  }
}