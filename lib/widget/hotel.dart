import 'package:flutter/material.dart';
import 'package:sample/Screen/cat.dart';
import 'package:sample/models/activity_model.dart';
import 'package:sample/models/catModel.dart';
import 'package:sample/models/hotel_model.dart';

class hotel extends StatelessWidget {
  const hotel({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("Exclusive Hotels",
                  style: TextStyle(
                      fontSize: 20,
                      letterSpacing: 1.5,
                      fontWeight: FontWeight.bold)),
              GestureDetector(
                  onTap: () {},
                  child: Text(
                    "SeeAll",
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                        color: Theme.of(context).primaryColor),
                  ))
            ],
          ),
        ),
        Container(
          height: 300,
          child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: hotels.length,
              itemBuilder: (BuildContext contex, int Index) {
                Hotel hotel = hotels[Index];

                return GestureDetector(
                  // ignore: prefer_const_constructors
                  // onTap: (){
                  //    Navigator.push(context, MaterialPageRoute(builder:(_)=>Cat(hello:Hello))
                  // );

                  // },

                  child: Container(
                    margin: EdgeInsets.all(10),
                    width: 240,
                    child: Stack(
                      alignment: Alignment.topCenter,
                      children: [
                        Positioned(
                          bottom: 6,
                          child: Container(
                              height: 120,
                              width: 240,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(10.0),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    Text(
                                      hotel.name,
                                      style: TextStyle(
                                          fontSize: 22,
                                          fontWeight: FontWeight.w600,
                                          letterSpacing: 1.2),
                                    ),
                                    SizedBox(height: 2),
                                    Text(
                                      hotel.address,
                                      style: TextStyle(color: Colors.grey),
                                    ),
                                    SizedBox(
                                      height: 2,
                                    ),
                                    Text("\$${hotel.price}/night,",
                                        style: TextStyle(
                                          fontSize: 18,
                                          fontWeight: FontWeight.w600,
                                        ))
                                  ],
                                ),
                              )),
                        ),
                        Container(
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(20),
                              boxShadow: [
                                BoxShadow(
                                    color: Colors.black26,
                                    offset: Offset(0.0, 2.0),
                                    blurRadius: 6.0),
                              ]),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(20),
                            child: Image(
                              height: 180,
                              width: 220,
                              image: AssetImage(hotel.imageUrl),
                              fit: BoxFit.cover,
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                );
              }),
        )
      ],
    );
  }
}
