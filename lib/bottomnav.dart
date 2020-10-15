
import 'package:allied/alert.dart';
import 'package:allied/compare.dart';
import 'package:allied/contacts/contact.dart';
import 'package:allied/home.dart';
import 'package:allied/profile.dart';
import 'package:flutter/material.dart';

class BottomNav extends StatefulWidget {
  @override
  _BottomNavState createState() => _BottomNavState();
  
}

class _BottomNavState extends State<BottomNav> {
   int _currentIndex = 0;
   final List<Widget> _children = [
     Home(),
     Compare(),
     Alert(),
     Contact()
     
   ];

   void onTappedBar(int index)
   {
     setState(() {
       _currentIndex = index;
     });
   }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _children[_currentIndex],
       bottomNavigationBar:BottomNavigationBar(
          backgroundColor: Colors.white, 
           selectedItemColor: Colors.blueAccent[400],
            unselectedItemColor: Colors.grey,

            onTap:onTappedBar,
            currentIndex: _currentIndex,
              items: 
              [
                BottomNavigationBarItem(
                  icon: Icon(Icons.home),
                  title: Text('Home'),
                  ),
                  BottomNavigationBarItem(
                  icon: Icon(Icons.list),
                  title: Text('Compare')
                  ),
                  BottomNavigationBarItem(
                  icon: Icon(Icons.notifications_none),
                  title: Text('Notification')
                  ),
                   BottomNavigationBarItem(
                  icon: Icon(Icons.phone_in_talk),
                  title: Text('Contact Us')
                  ),
                  
              ],
              ) ,
    );
  }
}