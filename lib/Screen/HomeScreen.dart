// ignore_for_file: prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

import 'package:flutter/src/widgets/framework.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'package:sample/Screen/destinationScreen.dart';
import 'package:sample/models/catModel.dart';
import 'package:sample/models/destination_model.dart';
import 'package:sample/widget/destination.dart';
import 'package:sample/widget/hotel.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int selected=0;
  int _currentTab=0;
  final List <IconData>_icons= [
    FontAwesomeIcons.plane,
    FontAwesomeIcons.bed,
    FontAwesomeIcons.walking,
    FontAwesomeIcons.personBiking,
  ];
  Widget _buildIcon(int index){
      return GestureDetector(
        onTap: (){
         
          setState(() {
            selected=index;
          });
        },
        child: Container(
          height: 50,
          width: 50,
          decoration: BoxDecoration(
           color:selected==index?Theme.of(context).accentColor:Color(0xFFE7EBEE),
           borderRadius: BorderRadius.circular(30)
          ),
        
      
      child:Icon(_icons[index],size: 25,
      color:selected==index?Theme.of(context).primaryColor:Color(0xFFB4C1C4)
      )
      ),
       );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
         padding:const EdgeInsets.symmetric(vertical:7.9),
        children: <Widget>[
            Padding(
             
              padding: const EdgeInsets.only(left: 20.0,right: 120.0),
              child: Text("What would you like to find?",
              style: TextStyle(
                fontSize: 25.0,
                fontWeight: FontWeight.bold,
              ),),
            ),
            SizedBox(height: 20,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
           children: 
            _icons.asMap().entries.map((MapEntry map)=>_buildIcon(map.key)
           ,
            ).toList(),
            ),
            SizedBox(height: 20,),
            destination(),
            hotel(),
            
        ],
      )),
      bottomNavigationBar:BottomNavigationBar(  
        
       currentIndex: _currentTab,
       onTap: (int value){
          setState(() {
            _currentTab=value;
          });
        }, 
        items:[
          BottomNavigationBarItem( 
            label: "",
            icon: Icon(Icons.search,size: 30,),
           
           
           ),
            BottomNavigationBarItem( 
            label: "",
            icon: Icon(Icons.local_pizza,size: 30,),),

              BottomNavigationBarItem( 
            label: "",
            icon: Icon(Icons.coffee,size: 30,),
            
           
           
           ),
            
        ]
      ) ,
    );

    
  }
}