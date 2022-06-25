import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:sample/Screen/destinationScreen.dart';
import 'package:sample/Screen/facebook.dart';

import 'package:sample/Screen/screen.dart';

import '../models/destination_model.dart';

class destination extends StatelessWidget {
  const destination({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("Top Destination",
                  style: TextStyle(
                      fontSize: 20,
                      letterSpacing: 1.5,
                      fontWeight: FontWeight.bold)),
              GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context, MaterialPageRoute(builder: (_) => Screen()));
                  },
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
              itemCount: destinations.length,
              itemBuilder: (BuildContext contex, int index) {
                Destination destination = destinations[index];
                return GestureDetector(
                  // for(int i==0,i<Index.lenght,i++),
                  onTap: () {
                    if (index == 0) {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (_) =>
                                  destinationScreen(destination: destination)));
                    } else if (index == 1) {
                      Navigator.push(
                          context, MaterialPageRoute(builder: (_) => Screen()));
                    } else if (index == 2) {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (_) => facebook()));
                    } else {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (_) =>
                                  destinationScreen(destination: destination)));
                    }
                  },

                  child: Container(
                    margin: EdgeInsets.all(10),
                    width: 210,
                    child: Stack(
                      alignment: Alignment.topCenter,
                      children: [
                        Positioned(
                          bottom: 6,
                          child: Container(
                              height: 120,
                              width: 200,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(10.0),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "${destination.activities.length} activities",
                                      style: TextStyle(
                                          fontSize: 22,
                                          fontWeight: FontWeight.w600,
                                          letterSpacing: 1.2),
                                    ),
                                    Text(
                                      destination.description,
                                      style: TextStyle(color: Colors.grey),
                                    ),
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
                          child: Stack(
                            children: [
                              Hero(
                                tag: destination.imageUrl,
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(20),
                                  child: Image(
                                    height: 180,
                                    width: 180,
                                    image: AssetImage(destination.imageUrl),
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                              Positioned(
                                bottom: 10,
                                left: 10,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      destination.city,
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.w600,
                                          letterSpacing: 1.2,
                                          fontSize: 24),
                                    ),
                                    Row(
                                      children: [
                                        Text(
                                          destination.country,
                                          style: TextStyle(color: Colors.white),
                                        ),
                                      ],
                                    )
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
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
