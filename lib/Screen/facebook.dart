import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class facebook extends StatefulWidget {
  const facebook({Key? key}) : super(key: key);

  @override
  State<facebook> createState() => _facebookState();
}

class _facebookState extends State<facebook> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        Container(
            height: 120,
            padding: EdgeInsets.only(top: 50, right: 10, left: 20, bottom: 20),
            child: Row(
              children: [
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        color: Colors.grey[300]),
                    child: TextField(
                      decoration: InputDecoration(
                          prefixIcon: Icon(Icons.search),
                          hintStyle: TextStyle(color: Colors.grey),
                          hintText: 'search',
                          border: InputBorder.none),
                    ),
                  ),
                ),
                SizedBox(
                  width: 20,
                ),
                Icon(
                  Icons.camera_alt_outlined,
                  color: Colors.grey[600],
                ),
              ],
            )),
        Expanded(
          child: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              padding: EdgeInsets.all(20),
              child: Column(
                children: [
                  Row(
                    //crossAxisAlignment: CrossAxisAlignment.baseline,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Stories",
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.grey,
                            letterSpacing: 1.2),
                      ),
                      Text(
                        'See More',
                        style: TextStyle(
                          fontSize: 12,
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                      height: 180,
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: [
                          makeStory(
                              storyImage: 'assets/images/cat3.jpg',
                              userImage: 'assets/images/paris.jpg',
                              userName: 'jafar'),
                          makeStory(
                              storyImage: 'assets/images/cat.jpg',
                              userImage: 'assets/images/santorini.jpg',
                              userName: 'Hafsat'),
                          makeStory(
                              storyImage: 'assets/images/cat1.jpg',
                              userImage: 'assets/images/venice.jpg',
                              userName: 'Muhammad'),
                          makeStory(
                              storyImage: 'assets/images/cat4.jpg',
                              userImage: 'assets/images/newdelhi.jpg',
                              userName: 'Ahmad'),
                          makeStory(
                              storyImage: 'assets/images/cat5.jpg',
                              userImage: 'assets/images/hotel2.jpg',
                              userName: 'Fatee'),
                          makeStory(
                              storyImage: 'assets/images/murano.jpg',
                              userImage: 'assets/images/hotel0.jpg',
                              userName: 'Patience'),
                          makeStory(
                              storyImage: 'assets/images/newyork.jpg',
                              userImage: 'assets/images/gondola.jpg',
                              userName: 'Nana'),
                          makeStory(
                              storyImage: 'assets/images/cat.jpg',
                              userImage: 'assets/images/paris.jpg',
                              userName: 'Fatee'),
                        ],
                      )),
                  SizedBox(
                    height: 40,
                  ),
                  makeFeed(
                      userName: 'jafar Mikail',
                      userImage: 'assets/images/paris.jpg',
                      feedTime: "10:30",
                      feedText:
                          "good morning my beautiful pple lets have fun by loking at this beautiful creatures dont forget nature is bea",
                      feedImage: 'assets/images/cat1.jpg'),
                ],
              )),
        ),
      ],
    ));
  }

  Widget makeStory({storyImage, userImage, userName}) {
    return AspectRatio(
        aspectRatio: 1.6 / 2,
        child: Container(
          margin: EdgeInsets.only(right: 10),
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  tileMode: TileMode.decal,
                  begin: Alignment.bottomRight,
                  colors: [
                    Colors.black.withOpacity(.9),
                    Colors.black.withOpacity(.1)
                  ]),
              borderRadius: BorderRadius.circular(20),
              image: DecorationImage(
                  image: AssetImage(storyImage), fit: BoxFit.cover)),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: 40,
                  height: 40,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(color: Colors.white, width: 2),
                    image: DecorationImage(
                      image: AssetImage(userImage),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Text(
                  userName,
                  style: TextStyle(color: Colors.white),
                )
              ],
            ),
          ),
        ));
  }

  Widget makeFeed({userName, userImage, feedTime, feedText, feedImage}) {
    return Container(
      margin: EdgeInsets.only(bottom: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Container(
                    width: 50,
                    height: 50,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        image: DecorationImage(
                            image: AssetImage(userImage), fit: BoxFit.cover)),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        userName,
                        style: TextStyle(
                            fontSize: 18,
                            color: Colors.grey[900],
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        feedTime,
                        style: TextStyle(
                          fontSize: 15,
                          color: Colors.grey,
                        ),
                      ),
                    ],
                  )
                ],
              ),
              IconButton(
                icon: Icon(
                  Icons.more_horiz,
                  size: 30,
                  color: Colors.grey,
                ),
                onPressed: () {},
              )
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            feedText,
            style: TextStyle(
              letterSpacing: 1.5,
              fontSize: 15,
              color: Colors.grey[800],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            height: 200,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(40),
                image: DecorationImage(
                    image: AssetImage(feedImage), fit: BoxFit.cover)),
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  makeLike(),
                  Transform.translate(
                    offset: Offset(-5, 0),
                    child: makeLove(),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Text(
                    "2.6k",
                    style: TextStyle(
                      fontSize: 12,
                      color: Colors.grey[800],
                    ),
                  ),

                  //  makeCommet(),
                  // makeLikeB()
                ],
              ),
              Text(
                '500 comments',
                style: TextStyle(
                  fontSize: 12,
                  color: Colors.grey[800],
                ),
              ),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            children: [makelikeB(true), makeCommet(), makecommB()],
          )
        ],
      ),
    );
  }

  Widget makeLike() {
    return Container(
      width: 25,
      height: 25,
      decoration: BoxDecoration(
        color: Colors.blue,
        shape: BoxShape.circle,
        border: Border.all(color: Colors.white),
      ),
      child: Center(
        child: Icon(
          size: 12,
          Icons.thumb_up,
          color: Colors.white,
        ),
      ),
    );
  }

  Widget makeLove() {
    return Container(
      width: 25,
      height: 25,
      decoration: BoxDecoration(
        color: Colors.red,
        shape: BoxShape.circle,
        border: Border.all(color: Colors.white),
      ),
      child: Center(
        child: Icon(
          size: 12,
          Icons.favorite,
          color: Colors.white,
        ),
      ),
    );
  }

  Widget makelikeB(isActive) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(50),
        border: Border.all(color: Colors.grey),
      ),
      child: Center(
          child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            Icons.thumb_up,
            color: isActive ? Colors.blue : Colors.grey,
          ),
          SizedBox(
            width: 5,
          ),
          Text(
            'Like',
            style: TextStyle(
              color: isActive ? Colors.blue : Colors.grey,
            ),
          )
        ],
      )),
    );
  }

  Widget makeCommet() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(50),
        border: Border.all(color: Colors.grey),
      ),
      child: Center(
          child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            Icons.chat,
            color: Colors.grey,
          ),
          SizedBox(
            width: 5,
          ),
          Text(
            'Comment',
            style: TextStyle(color: Colors.grey),
          )
        ],
      )),
    );
  }

  Widget makecommB() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(50),
        border: Border.all(color: Colors.grey),
      ),
      child: Center(
          child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            Icons.share,
            color: Colors.grey,
          ),
          SizedBox(
            width: 5,
          ),
          Text(
            'Share',
            style: TextStyle(color: Colors.grey),
          )
        ],
      )),
    );
  }
}
