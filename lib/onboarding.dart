
import 'package:allied/login.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';

class Onboarding extends StatefulWidget {
  @override
  _OnboardingState createState() => _OnboardingState();
}

class _OnboardingState extends State<Onboarding> {

      final int _numPages = 4;
      final PageController _pageController = PageController(initialPage: 0);
      int _currentPage = 0;

  List<Widget>_buildPageIndicator() {
    List<Widget> list = [];
    for (int i = 0; i < _numPages; i++) {
      list.add(i == _currentPage ? _indicator(true) : _indicator(false));
    }
    return list;
  }

   Widget _indicator(bool isActive) {
    return AnimatedContainer(
      duration: Duration(milliseconds: 150),
      margin: EdgeInsets.symmetric(horizontal: 8.0),
      height: 8.0,
      width: isActive ? 24.0 : 16.0,
      decoration: BoxDecoration(
        color: isActive ? Colors.white : Colors.blueAccent[400] ,
        borderRadius: BorderRadius.all(Radius.circular(15)),
      ),
    );
  }
  @override
  Widget build(BuildContext context) {
   return Scaffold(
     resizeToAvoidBottomPadding: false,
     backgroundColor: Colors.white,
     body:AnnotatedRegion<SystemUiOverlayStyle>(
       value:SystemUiOverlayStyle.light,
       child:Container(
         
         child: Padding(padding: EdgeInsets.symmetric(vertical: 40.0),
         child:Column(
           crossAxisAlignment: CrossAxisAlignment.stretch,
           children: <Widget>[
             Container(
               alignment:Alignment.centerRight,
               child:FlatButton(
                onPressed: () {
                Navigator.push(context, 
                MaterialPageRoute(builder: (context)
                    => Login()
                 ),
                   );
                 },
                 child: Text('Skip',
                 style:GoogleFonts.montserrat(
                   fontSize:20.0,
                   color:Colors.blueAccent[400]
                 )
                 ),
               ),
             ),
             Container(
               height:600.0,
               child:PageView(
                 physics:ClampingScrollPhysics(),
                 controller:_pageController,
                 onPageChanged:(int page) {
                   setState((){
                     _currentPage = page;
                   });
                 },
                 children:<Widget>[
                   Padding(
                     padding: EdgeInsets.all(40.0),
                     child: Column(
                       crossAxisAlignment: CrossAxisAlignment.start,
                       children: <Widget>[
                         Container(
                           child:Stack(
                             children:<Widget>[
                               Container(
                                 padding:EdgeInsets.fromLTRB(50.0, 110.0, 0.0, 0.0),
                                 child: Text('Welcome To',
                                 style: GoogleFonts.montserrat(
                                   fontSize: 50.0,
                                   fontWeight: FontWeight.w300,
                                 ),
                                 ),
                               ),
                               SizedBox(height:40.0),
                               Container(
                                  padding:EdgeInsets.fromLTRB(50.0, 250.0, 0.0, 0.0),
                                 child: Text('Allied',
                                 style: GoogleFonts.montserrat(
                                   fontSize: 75.0,
                                   fontWeight: FontWeight.bold,
                                 ),
                                 ),
                               ),
                                 Container(
                                  padding:EdgeInsets.fromLTRB(305.0, 245.0, 0.0, 0.0),
                                 child: Text('.',
                                 style: GoogleFonts.montserrat(
                                   color: Colors.blueAccent[400],
                                   fontSize: 80.0,
                                   fontWeight: FontWeight.bold,
                                 ),
                                 ),
                               )
                             ]
                           )
                         )
                       ],
                     ),
                     ),
                  
                   Padding(
                     padding: EdgeInsets.all(40.0),
                     child: Column(
                       crossAxisAlignment:CrossAxisAlignment.start,
                       children:<Widget>[
                         Center(
                           child:Image(
                             image:AssetImage(
                               'assets/vehicle.png'
                             ),
                             height:300.0,
                             width:300.0
                           ),
                         ),
                         SizedBox(height:30.0),
                         Text(
                           'Vehicle Insurance',
                           style:GoogleFonts.montserrat(
                               color: Colors.blueAccent[400],
                         fontWeight: FontWeight.w400,
                         fontSize: 33.0
                           ),
                            textAlign: TextAlign.center,
                         )
                       ]
                     ),
                     ),
                     Padding(
                     padding: EdgeInsets.all(40.0),
                     child: Column(
                       crossAxisAlignment:CrossAxisAlignment.start,
                       children:<Widget>[
                         Center(
                           child:Image(
                             image:AssetImage(
                               'assets/doctor.png' 
                             ),
                             height:300.0,
                             width:300.0
                           ),
                         ),
                         SizedBox(height:30.0),
                         Text(
                           'Medical  Insurance',
                           style:GoogleFonts.montserrat(
                               color: Colors.blueAccent[400],
                         fontWeight: FontWeight.w400,
                         fontSize: 33.0
                           ),
                            textAlign: TextAlign.center,
                         )
                       ]
                     ),
                     ),
                     Padding(
                     padding: EdgeInsets.all(40.0),
                     child: Column(
                       crossAxisAlignment:CrossAxisAlignment.start,
                       children:<Widget>[
                         Center(
                           child:Image(
                             image:AssetImage(
                               'assets/business.png'
                             ),
                             height:300.0,
                             width:300.0
                           ),
                         ),
                         SizedBox(height:30.0),
                         Text(
                           'Business Insurance',
                           style:GoogleFonts.montserrat(
                               color: Colors.blueAccent[400],
                         fontWeight: FontWeight.w400,
                         fontSize: 33.0
                           ),
                            textAlign: TextAlign.center,
                         )
                       ]
                     ),
                     ),
                 ],
               )
             ),
             Row( 
               mainAxisAlignment: MainAxisAlignment.center,
               children:_buildPageIndicator(),
             ),
             _currentPage != _numPages - 0
             ?Expanded(
               child: Align(
                 alignment:FractionalOffset.bottomRight,
                 child:FlatButton(
                   onPressed:() {
                     _pageController.nextPage(duration:  Duration(milliseconds: 500),
                     curve: Curves.ease,);
                   },
                   child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                              mainAxisSize: MainAxisSize.min,
                              children:<Widget>[
                                Text('Next',
                                style: GoogleFonts.montserrat(
                                  color:Colors.blueAccent[400],
                                  fontSize:22.0,
                                ),
                                textAlign: TextAlign.center,
                                ),
                                SizedBox(width:10.0),
                                Icon(
                                  Icons.arrow_forward,
                                  color:Colors.white,
                                  size:30.0
                                )
                              ]
                   ),
                 )
               ),
             )
             :Text('')
         ]
         )
         ),
       )
     ),
     bottomSheet: _currentPage == _numPages - 1
     ? Container(
       height: 100.0,
       width: double.infinity,
       color: Colors.white,
       child: GestureDetector(
          onTap: () {
                Navigator.push(context, 
                MaterialPageRoute(builder: (context)
                    => Login(),
                 ),
                   );
                 },
                 child: Padding(
                   padding: EdgeInsets.only(bottom: 30.0),
                   child: Text('Get Started',
                   style:GoogleFonts.montserrat(
                     color:Colors.blueAccent[400],
                     fontSize:20.0,
                     fontWeight:FontWeight.bold
                   ),
                    textAlign: TextAlign.center,
                   ),
                   ),
       ),
     )
     : Text(''),
   );
    
  }
}