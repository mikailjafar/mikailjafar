import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:sample/models/catModel.dart';

import 'package:sample/models/destination_model.dart';

import '../models/activity_model.dart';

class Cat extends StatefulWidget {
   final Hello hello;
   const Cat({required this.hello});

  @override
  State<Cat> createState() => _CatState();
}



class _CatState extends State<Cat> {
  Text _buildStars(int rating){
    String stars ="";
    for(int i=0;i<rating;i++){
      stars +="* ";
    }
  return Text(stars);
  }
  @override
  Widget build(BuildContext context) {
    
    
    return Scaffold(
      body: Column(
        children: [
        Stack(
          children: [
            Container(
              height: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(30.0),
              boxShadow: [BoxShadow(color:Colors.black26,
              offset: Offset(0.0 ,2.0),
               blurRadius: 6.0),]
               
               
               ),
               child: Hero(
                tag: widget.hello.imageUrl,
                 child: ClipRRect(
                  borderRadius: BorderRadius.circular(30.0),
                   child: Image(image: AssetImage(widget.hello.imageUrl),
                   fit: BoxFit.cover,
                   ),
                 ),
               ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 40),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                 Row(
                  children: [
                       IconButton(onPressed: ()=>Navigator.pop(context),
                    
                 icon: Icon(Icons.arrow_back,),
                  iconSize: 25,
                  color: Colors.black,),
                 ],
                 ),
                 Row(children: [
              IconButton(onPressed: (){},
                    
                 icon: Icon(Icons.search),
                  iconSize: 25,
                  color: Colors.black,),
                   IconButton(onPressed: (){},
                    
                 icon: Icon(FontAwesomeIcons.sortAlphaDownAlt),
                  iconSize: 20,
                  color: Colors.black,),
            ],),
                ],
              ),
            ),
             Positioned(
                       bottom: 10,
                       left: 10,
                       child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                    Text(widget.hello.city,style: TextStyle(color: Colors.white,
                    fontWeight: FontWeight.w600,
                    letterSpacing: 1.2,fontSize: 24),
                         ),
                  Row(children: [
                                   
                  Text(widget.hello.country,
                  style: TextStyle(color:Colors.white),
                       ),
                     ],)
                   ],
                 ),
             ),
           
            Positioned(
             right:25,
             bottom: 20,
              child: Icon(Icons.location_city_outlined,
              color: Colors.white70,
              size: 25,),
            )
          ],
        ),
        Expanded(
          child: ListView.builder(
            padding: EdgeInsets.only(top: 10,bottom: 15),
            itemCount: widget.hello.activities.length,
            itemBuilder: (BuildContext context, int index){
              Activity activity =widget.hello.activities[index];
              return Stack(
                children: [
                  Container(
                    margin: EdgeInsets.fromLTRB(40,5, 20, 5),
                    height: 170,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color:Colors.white,
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    child:Padding(
                      padding: EdgeInsets.fromLTRB(100.0,20,20,20),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              SizedBox(
                                width: 120,
                                
                                child: Text(
                                  activity.name,
                                style: TextStyle(
                                  fontSize: 10,
                                  fontWeight: FontWeight.w500,
                                ),
                                overflow: TextOverflow.ellipsis,
                                maxLines: 2,
                                ),
                              ),
                              Column(
                                children: [
                                  Text('\$${activity.price},', style: TextStyle(
                                    fontSize: 10,
                                    fontWeight: FontWeight.w600,
                                     
                                  ),
                                  ),
                                  Text('per pack', style: TextStyle(
                                    color: Colors.grey,
                                    fontWeight: FontWeight.w600,
                                  ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          Text(activity.type,style: TextStyle( color:Colors.grey),),
                         _buildStars(activity.rating),
                          SizedBox(height: 10,),
                          Row(
                            children: [
                              Container(
                                
                                width: 70,
                                decoration: BoxDecoration(
                                  color:Theme.of(context).accentColor,
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                alignment: Alignment.center,
                                child: Text(activity.startTimes[0]),
                              ),
                              SizedBox(width: 10,),
                               Container(
                                width: 70,
                                decoration: BoxDecoration(
                                  color:Theme.of(context).accentColor,
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                alignment: Alignment.center,
                                child: Text(activity.startTimes[1]),
                              )
                            
                            ],
                          )
                        ],
                      ),
                    )
                  ),
                  Positioned(
                    top: 10,
                    left:15,
                    bottom: 10 ,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: Image(image: AssetImage(activity.imageUrl),
                      width: 110,
                      fit: BoxFit.cover,
                       ),
                    ),
                  )
                ],

              );
            }
            ),
        )
      ],),
      );
      

  }
}