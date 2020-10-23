
import 'package:allied/compare.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';


class Vehicle extends StatefulWidget {
  @override
  _VehicleState createState() => _VehicleState();
}

class _VehicleState extends State<Vehicle> {

  var _bodyType = [
    "Van",
    "Bus",
    "SUV",
    "Sedan",
    "Coupe",
    "Hatchback",
    "Crossover",
    "Convertible",
    "Luxury Car",
    "Sports Car",
    "Mini Van",
    "Super Car",
    "Station Wagon"
  ];

  var _condition = [
    "Good",
    "Avearge",
    "Bad"
  ];

  var _ownership =[ 
    "Private",
    "Commercial",
    "Public Service Vehicle"
  ];

  var _months = [
    "1",
    "2",
    "3",
    "4",
    "6",
    "7",
    "8",
    "9",
    "10",
    "11",
    "12",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       backgroundColor:Colors.white,
      resizeToAvoidBottomPadding: false,
      appBar: AppBar(
        backgroundColor:Colors.white,
        title:Text('Vehicle Insurance',
        style: GoogleFonts.montserrat(
          color:Colors.blueAccent[400]
        ),
        ),
         centerTitle: true,
        elevation:0.0,
      ),
    body:ListView(
      padding: const EdgeInsets.all(40),
      children: [
        Image.asset( 
          'assets/vehicle.png',
          fit: BoxFit.cover,
        ),
        Column(children: [
      FormBuilder(
        child: Column(
          children: [
            //make
            TextFormField(
        decoration: InputDecoration(
          hintText: ('Nissan'),
            hintStyle: TextStyle( color:Colors.blueAccent[400].withOpacity(0.6),fontStyle: FontStyle.italic),
          icon:FaIcon(FontAwesomeIcons.carAlt,  
          color: Colors.blueAccent[400]
          ),
          labelText: "Make of the car",
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
      ),
      SizedBox(height:40),
      //model
       TextFormField(
        decoration: InputDecoration(
          hintText: ('Sunny'),
            hintStyle: TextStyle( color:Colors.blueAccent[400]..withOpacity(0.6),fontStyle: FontStyle.italic),
          icon:Icon(Icons.directions_car,
          color: Colors.blueAccent[400]
          ),
          labelText: "Model of the car",
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
      ),
      SizedBox(height:40),
      //licesne
            TextFormField(
        decoration: InputDecoration(
         icon:FaIcon(FontAwesomeIcons.idCard,
          color: Colors.blueAccent[400]
          ),
          labelText: "Driver's License No.",
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
      ),
       SizedBox(height:40),
       
        TextFormField(
        decoration: InputDecoration(
          icon:FaIcon(FontAwesomeIcons.hashtag,  
          color: Colors.blueAccent[400]
          ),
          labelText: "Chasis No.",
          labelStyle: GoogleFonts.montserrat(
            color: Colors.blueAccent[400]
          ),
          hintText: ('5GHNXX4A7HHK0445657'),
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
      SizedBox(height:40),
       //body type
      FormBuilderDropdown(
        attribute: 'body type',
        decoration: InputDecoration(labelText: 'Body Type',
         labelStyle: GoogleFonts.montserrat(
            color: Colors.blueAccent[400]
          ),
          hintText: "Body type",
           hintStyle: TextStyle( color:Colors.blueAccent[400].withOpacity(0.6),fontStyle: FontStyle.italic)
        ),
        items: _bodyType.map((_bodyType) => DropdownMenuItem( 
          value: _bodyType,
          child: Text('$_bodyType'),
        )).toList()
        ),
      SizedBox(height:40),
       //ownership
             FormBuilderDropdown(
        attribute: 'ownership',
        decoration: InputDecoration(labelText: 'Ownership',
         labelStyle: GoogleFonts.montserrat(
            color: Colors.blueAccent[400]
          ),
           hintText: "Private",
           hintStyle: TextStyle( color:Colors.blueAccent[400].withOpacity(0.6),fontStyle: FontStyle.italic)
        ),
        
        items: _ownership.map((_ownership) => DropdownMenuItem( 
          value: _ownership,
          child: Text('$_ownership'),
        )).toList()
        ),
         SizedBox(height:40),
         Row(children: [
           Expanded( 
             child: TextFormField(
               //year
        decoration: InputDecoration(
         icon:FaIcon(FontAwesomeIcons.calendar,
          color: Colors.blueAccent[400]
          ),
          labelText: "Year",
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
           ),
           SizedBox(width:30),
           Expanded( 
             //CC
             child: TextFormField(
        decoration: InputDecoration(
         icon:FaIcon(FontAwesomeIcons.tachometerAlt,
          color: Colors.blueAccent[400]
          ),
          labelText: "CC",
          labelStyle: GoogleFonts.montserrat(
            color: Colors.blueAccent[400]
          ),
          hintText: ('3000 CC'),
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
         ],),
          SizedBox(height:40), 
         Row(children: [
           Expanded( 
             child: TextFormField(
               //plate
        decoration: InputDecoration(
          icon:Icon(Icons.format_align_justify,
          color: Colors.blueAccent[400]
          ),
          labelText: "Plate No.",
          labelStyle: GoogleFonts.montserrat(
            color: Colors.blueAccent[400]
          ),
          hintText: ('KAU 420F'),
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
           ),
           SizedBox(width:30),
           Expanded( 
             //tonnage
             child: TextFormField(
        decoration: InputDecoration(
          icon:FaIcon(FontAwesomeIcons.weightHanging,
          color: Colors.blueAccent[400]
          ),
          labelText: "Tonnage",
          labelStyle: GoogleFonts.montserrat(
            color: Colors.blueAccent[400]
          ),
          hintText: ('2 Tonnes'),
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
         ],),
         SizedBox(height:40),
         Row(children: [
           Expanded( 
             //passengers
             child: TextFormField(
        decoration: InputDecoration(
          icon:FaIcon(FontAwesomeIcons.userFriends,
          color: Colors.blueAccent[400]
          ),
          labelText: "Passengers",
          labelStyle: GoogleFonts.montserrat(
            color: Colors.blueAccent[400]
          ),
          hintText: ('4 Passengers'),
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
           SizedBox(width:30),
           //mileage
           Expanded( 
             child: TextFormField(
        decoration: InputDecoration(
           icon:FaIcon(FontAwesomeIcons.road,
          color: Colors.blueAccent[400]
          ),
          labelText: "Mileage (Km)",
          labelStyle: GoogleFonts.montserrat(
            color: Colors.blueAccent[400]
          ),
          hintText: ('5000'),
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
         ],),
         SizedBox(height:40),
         Row(children: [
           //price
           Expanded( 
             child: TextFormField(
        decoration: InputDecoration(
           icon:FaIcon(FontAwesomeIcons.moneyBillWaveAlt,
          color: Colors.blueAccent[400]
          ),
          labelText: "Value (Ksh)",
          labelStyle: GoogleFonts.montserrat(
            color: Colors.blueAccent[400]
          ),
          hintText: ('5000'),
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
           SizedBox(width:30),
           //condition
           Expanded( 
             child:  FormBuilderDropdown(
        attribute: 'condition',
        decoration: InputDecoration(labelText: 'Condition',
         icon:FaIcon(FontAwesomeIcons.tools ,
          color: Colors.blueAccent[400]
          ),
         labelStyle: GoogleFonts.montserrat(
            color: Colors.blueAccent[400]
          ),
          hintText: "Good",
           hintStyle: TextStyle( color:Colors.blueAccent[400].withOpacity(0.6).withOpacity(0.6),fontStyle: FontStyle.italic)
        ),
        items: _condition.map((_condition) => DropdownMenuItem( 
          value: _condition,
          child: Text('$_condition'),
        )).toList()
        ),
           ),
         ],),
      SizedBox(height:40),
         FormBuilderDropdown(
        attribute: 'Months',
        decoration: InputDecoration(labelText: 'Period of Insurance (Months)',
        icon:FaIcon(FontAwesomeIcons.calendarAlt ,
          color: Colors.blueAccent[400]
          ),
         labelStyle: GoogleFonts.montserrat(
            color: Colors.blueAccent[400]
          ),
        ),
        
        items: _months.map((_months) => DropdownMenuItem( 
          value: _months,
          child: Text('$_months'),
        )).toList()
        ),
        ],),
      ),
       SizedBox(height:40),
         Center( 
             child: TextFormField(
        decoration: InputDecoration(
           icon:FaIcon(FontAwesomeIcons.moneyBillWaveAlt,
          color: Colors.blueAccent[400]
          ),
          labelText: "Your Budget (Ksh)",
          labelStyle: GoogleFonts.montserrat(
            color: Colors.blueAccent[400]
          ),
          hintText: ('5000'),
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
    ],
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
    ],
    )
      );
  }
}
