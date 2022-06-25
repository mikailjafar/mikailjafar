import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class Screen extends StatefulWidget {
  const Screen({Key? key}) : super(key: key);

  @override
  State<Screen> createState() => _ScreenState();
}

class _ScreenState extends State<Screen> {
  final _listItem = [
    "assets/images/cat1.jpg",
    "assets/images/cat2.jpg",
    "assets/images/cat3.jpg",
    "assets/images/cat.jpg",
    "assets/images/cat4.jpg",
    "assets/images/cat5.jpg",
    "assets/images/cat3.jpg",
    "assets/images/hotel0.jpg",
    "assets/images/newdelhi.jpg",
    "assets/images/paris.jpg",
    "assets/images/santorini.jpg",
    "assets/images/saopaulo.jpg",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromARGB(255, 194, 170, 162),
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          leading: Icon(Icons.menu),
          title: Text('Home'),
          centerTitle: true,
          actions: [
            Padding(
              padding: const EdgeInsets.all((10)),
              child: Container(
                  width: 30,
                  height: 30,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Color.fromARGB(255, 198, 154, 154)),
                  child: Icon(Icons.flight)),
            )
          ],
        ),
        body: Container(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  width: double.infinity,
                  height: 230,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      image: DecorationImage(
                        image: AssetImage("assets/images/cat3.jpg"),
                        fit: BoxFit.cover,
                      )),
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        gradient: LinearGradient(
                            tileMode: TileMode.decal,
                            begin: Alignment.center,
                            colors: [
                              Colors.brown.withOpacity(.1),
                              Colors.black.withOpacity(.4)
                            ])),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text(
                          "Beauty Everywhere",
                          style: TextStyle(
                            color: Colors.white54,
                            fontWeight: FontWeight.w600,
                            fontSize: 20,
                            letterSpacing: 2,
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Container(
                          margin: EdgeInsets.symmetric(horizontal: 40),
                          height: 50,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.white,
                          ),
                          child: Center(
                            child: Row(
                              children: [
                                Icon(
                                  Icons.search,
                                  color: Colors.red,
                                  size: 20,
                                ),
                                SizedBox(
                                  width: 70,
                                ),
                                Text(
                                  "Let's Go",
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 12,
                                      fontWeight: FontWeight.w400),
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Expanded(
                  child: GridView.count(
                    crossAxisCount: 2,
                    mainAxisSpacing: 8,
                    crossAxisSpacing: 20,
                    children: _listItem
                        .map((item) => Card(
                              color: Colors.transparent,
                              elevation: 0,
                              child: Container(
                                decoration: BoxDecoration(
                                  color: Colors.grey,
                                  borderRadius: BorderRadius.circular(20),
                                  image: DecorationImage(
                                      image: AssetImage(item),
                                      fit: BoxFit.cover),
                                ),
                                child: Transform.translate(
                                  offset: Offset(53, -50),
                                  child: Container(
                                    width: 30,
                                    height: 40,
                                    margin: EdgeInsets.symmetric(
                                        horizontal: 55, vertical: 55),
                                    decoration: BoxDecoration(
                                        color: Colors.transparent,
                                        borderRadius:
                                            BorderRadius.circular(20)),
                                    child: Icon(
                                      Icons.heart_broken,
                                      color: Color.fromARGB(255, 237, 72, 12),
                                    ),
                                  ),
                                ),
                              ),
                            ))
                        .toList(),
                  ),
                ),
                Text(
                  "Much love from jafar",
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w300,
                    fontStyle: FontStyle.italic,
                  ),
                )
              ],
            ),
          ),
        ));
  }
}
