import 'dart:math';

import 'package:flutter/material.dart';
import 'package:dotted_border/dotted_border.dart';


const black = Color(0xff151515);
const grey = Color(0xff222222);
const lightGreen = Color(0xffC4CD81);
const purple = Color(0xff7E84FF);
const pink = Color(0xffE091B6);
const cyan = Color(0xff9BE3D3);
const white = Colors.white;

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: black,
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 22),
          child: Column(
            children: [
              SizedBox(height: 20,),
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Feeds',
                      style: TextStyle(
                        color: white,
                        fontSize: 28,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Icon(
                      Icons.more_vert,
                      color: white,
                      size: 28,
                    ),
                  ],
                ),
              ),
              SizedBox(height: 40,),
              Container(
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      DottedBorder(
                        color: lightGreen,
                        borderType: BorderType.Circle,
                        strokeWidth: 2,
                        dashPattern: [24, 20],
                        radius: Radius.circular(12),
                        padding: EdgeInsets.all(5),
                        child: ClipRRect(
                          borderRadius: BorderRadius.all(Radius.circular(12)),
                          child: CircleAvatar(
                            radius: 34,
                            backgroundImage: AssetImage('images/a.jpg'),
                          )
                        ),
                      ),
                      SizedBox(width: 20,),
                      DottedBorder(
                        color: purple,
                        borderType: BorderType.Circle,
                        strokeWidth: 2,
                        dashPattern: [24, 20],
                        radius: Radius.circular(12),
                        padding: EdgeInsets.all(5),
                        child: ClipRRect(
                            borderRadius: BorderRadius.all(Radius.circular(12)),
                            child: CircleAvatar(
                              radius: 34,
                              backgroundImage: AssetImage('images/b.jpg'),
                            )
                        ),
                      ),
                      SizedBox(width: 20,),
                      DottedBorder(
                        color: pink,
                        borderType: BorderType.Circle,
                        strokeWidth: 2,
                        dashPattern: [24, 20],
                        radius: Radius.circular(12),
                        padding: EdgeInsets.all(5),
                        child: ClipRRect(
                            borderRadius: BorderRadius.all(Radius.circular(12)),
                            child: CircleAvatar(
                              radius: 34,
                              backgroundImage: AssetImage('images/c.jpg'),
                            )
                        ),
                      ),
                      SizedBox(width: 20,),
                      DottedBorder(
                        color: cyan,
                        borderType: BorderType.Circle,
                        strokeWidth: 2,
                        dashPattern: [24, 20],
                        radius: Radius.circular(12),
                        padding: EdgeInsets.all(5),
                        child: ClipRRect(
                            borderRadius: BorderRadius.all(Radius.circular(12)),
                            child: CircleAvatar(
                              radius: 34,
                              backgroundImage: AssetImage('images/d.jpg'),
                            )
                        ),
                      ),
                      SizedBox(width: 20,),
                      DottedBorder(
                        color: purple,
                        borderType: BorderType.Circle,
                        strokeWidth: 2,
                        dashPattern: [24, 20],
                        radius: Radius.circular(12),
                        padding: EdgeInsets.all(5),
                        child: ClipRRect(
                            borderRadius: BorderRadius.all(Radius.circular(12)),
                            child: CircleAvatar(
                              radius: 34,
                              backgroundImage: AssetImage('images/a.jpg'),
                            )
                        ),
                      ),
                      SizedBox(width: 20,),
                      DottedBorder(
                        color: pink,
                        borderType: BorderType.Circle,
                        strokeWidth: 2,
                        dashPattern: [24, 20],
                        radius: Radius.circular(12),
                        padding: EdgeInsets.all(5),
                        child: ClipRRect(
                            borderRadius: BorderRadius.all(Radius.circular(12)),
                            child: CircleAvatar(
                              radius: 34,
                              backgroundImage: AssetImage('images/b.jpg'),
                            )
                        ),
                      ),
                      SizedBox(width: 20,),
                      DottedBorder(
                        color: lightGreen,
                        borderType: BorderType.Circle,
                        strokeWidth: 2,
                        dashPattern: [24, 20],
                        radius: Radius.circular(12),
                        padding: EdgeInsets.all(5),
                        child: ClipRRect(
                            borderRadius: BorderRadius.all(Radius.circular(12)),
                            child: CircleAvatar(
                              radius: 34,
                              backgroundImage: AssetImage('images/c.jpg'),
                            )
                        ),
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(height: 40,),
              Expanded(
                child: Container(
                  child: Column(
                    children: [
                      Container(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Chats',
                              style: TextStyle(
                                color: white,
                                fontSize: 26,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.all(7),
                              decoration: BoxDecoration(
                                color: grey,
                                borderRadius: BorderRadius.only(topLeft: Radius.circular(20), topRight: Radius.circular(20), bottomLeft: Radius.circular(20)),
                              ),
                              child: Icon(
                                Icons.add,
                                color: Colors.grey[500],
                                size: 24,
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 20,),
                      Expanded(
                        child: Container(
                          child: ListView.builder(
                            itemCount: 10,
                            itemBuilder: (context, index) {
                              return Container(
                                padding: EdgeInsets.all(20),
                                margin: EdgeInsets.symmetric(vertical: 10),
                                decoration: BoxDecoration(
                                  color: grey,
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                child: Row(
                                  children: [
                                    Expanded(
                                      flex: 2,
                                      child: Container(
                                        child: CircleAvatar(
                                          backgroundImage: AssetImage((index % 2 == 0) ? 'images/c.jpg' : 'images/d.jpg'),
                                          radius: 29,
                                        ),
                                      ),
                                    ),
                                    Expanded(
                                      flex: 8,
                                      child: Container(
                                        padding: EdgeInsets.symmetric(horizontal: 20),
                                        child: Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                            (index % 2 == 0) ? 'Vicky' : 'Tobi',
                                              style: TextStyle(
                                                color: white,
                                                fontSize: 18,
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                            SizedBox(height: 8,),
                                            Text(
                                              (index % 2 == 0) ? 'Wow, Great!' : 'See you then man.',
                                              style: TextStyle(
                                                color: Colors.grey[400],
                                                fontSize: 14,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                    Expanded(
                                      flex: 2,
                                      child: Container(
                                        child: Column(
                                          crossAxisAlignment: CrossAxisAlignment.end,
                                          children: [
                                            Text(
                                              '5:30 PM',
                                              style: TextStyle(
                                                color: white,
                                                fontSize: 12,
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                            SizedBox(height: 8,),
                                            Container(
                                              height: 25,
                                              width: 25,
                                              padding: EdgeInsets.all(5),
                                              decoration: BoxDecoration(
                                                color: Colors.red,
                                                borderRadius: BorderRadius.circular(20),
                                              ),
                                              child: Center(
                                                child: Text(
                                                  (index % 2 == 0) ? '2' : '1',
                                                  style: TextStyle(
                                                    color: white,
                                                    fontSize: 12,
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              );
                            },
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      bottomSheet: BottomSheet(
        enableDrag: false,
        onClosing: () {},
        builder: (BuildContext context) {
          return Container(
            color: black,
            height: 110,
            padding: EdgeInsets.symmetric(horizontal: 22, vertical: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  width: 200,
                  height: 70,
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color: grey,
                    borderRadius: BorderRadius.circular(50),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.home,
                        color: white,
                        size: 30,
                      ),
                      Icon(
                        Icons.chat,
                        color: Colors.grey[600],
                        size: 30,
                      ),
                      Icon(
                        Icons.settings,
                        color: Colors.grey[600],
                        size: 30,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
