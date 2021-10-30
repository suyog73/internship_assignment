// ignore_for_file: prefer_const_constructors
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'helper/color_bar.dart';
import 'helper/time_button.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF000000),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 80.0, horizontal: 30.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                children: const [
                  Icon(
                    FontAwesomeIcons.chevronLeft,
                    color: Colors.white,
                  ),
                  SizedBox(width: 40),
                  Text(
                    'USD / INR',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 25.0,
                      fontFamily: 'IBM Plex Sans',
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 25),
              Container(
                alignment: Alignment.centerLeft,
                height: 40.0,
                color: Colors.grey.shade900,
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 18.0, vertical: 0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Text(
                        'Technical Indicators',
                        style: TextStyle(
                          color: Colors.white,
                          fontFamily: 'IBM Plex Sans',
                          fontSize: 16,
                          fontWeight: FontWeight.w100,
                        ),
                      ),
                      Icon(
                        FontAwesomeIcons.chevronDown,
                        color: Colors.white,
                        size: 20,
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 50.0),
              Text(
                'Summary',
                style: TextStyle(
                  color: Colors.white,
                  fontFamily: 'IBM Plex Sans',
                  fontSize: 22,
                  fontWeight: FontWeight.w600,
                ),
              ),
              SizedBox(height: 45.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 40),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Column(
                              children: const [
                                ColorBar(
                                    colour: Color(0xFF007AFF), topRadius: 10.0),
                                ColorBar(colour: Color(0xFF004999)),
                                ColorBar(
                                  colour: Color(0xFFFFB946),
                                  width: 12,
                                  topRadius: 2,
                                  bottomRadius: 2,
                                ),
                                ColorBar(colour: Color(0xFF991D30)),
                                ColorBar(
                                    colour: Color(0xFFFC3545),
                                    bottomRadius: 10.0),
                              ],
                            ),
                            SizedBox(width: 20.0),
                            Row(
                              children: [
                                Container(
                                  width: 10,
                                  height: 10,
                                  decoration: BoxDecoration(
                                    color: Color(0xFFFFB946),
                                    borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(1500),
                                      bottomLeft: Radius.circular(1500),
                                    ),
                                  ),
                                ),
                                Container(
                                  alignment: Alignment.center,
                                  width: 100,
                                  height: 30,
                                  decoration: BoxDecoration(
                                    color: Color(0xFFFFB946),
                                  ),
                                  child: Text(
                                    'NEUTRAL',
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.w900,
                                      fontSize: 18,
                                    ),
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                  Column(
                    children: const [
                      TimeButton(
                        time: '1 MIN',
                        colour: Colors.white,
                        weight: FontWeight.w700,
                      ),
                      TimeButton(time: '5 MIN'),
                      TimeButton(time: '15 MIN'),
                      TimeButton(time: '30 MIN'),
                      TimeButton(time: '1 HR'),
                      TimeButton(time: '5 HR'),
                      TimeButton(time: '1 DAY'),
                      TimeButton(time: '1 WK'),
                      TimeButton(time: '1 MON'),
                    ],
                  ),
                ],
              ),
              SizedBox(height: 40),
              Text(
                'Moving Averages',
                style: TextStyle(
                  color: Colors.white,
                  fontFamily: 'IBM Plex Sans',
                  fontWeight: FontWeight.w600,
                  fontSize: 22,
                ),
              ),
              SizedBox(height: 30),
              InkWell(
                child: Container(
                  alignment: Alignment.center,
                  width: 65,
                  height: 40,
                  decoration: BoxDecoration(
                    color: Color(0xFF007AFF),
                    borderRadius: BorderRadius.all(Radius.circular(10.0)),
                  ),
                  child: Text(
                    'Buy',
                    style: TextStyle(
                        fontFamily: 'IBM Plex Sans',
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.w500),
                  ),
                ),
              ),
              SizedBox(height: 30.0),
              Padding(
                padding: const EdgeInsets.symmetric(
                    horizontal: 30.0, vertical: 10.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: const [
                        Text(
                          '7',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          'Buy',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.w100,
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: const [
                          Text(
                            '-',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            'Neutral',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                              fontWeight: FontWeight.w100,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: const [
                          Text(
                            '5',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            'Sell',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                              fontWeight: FontWeight.w100,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20.0),
              Container(
                alignment: Alignment.center,
                width: 180.0,
                height: 50.0,
                decoration: BoxDecoration(
                  color: Colors.grey.shade900,
                  borderRadius: BorderRadius.all(Radius.circular(10.0)),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Text(
                      'Exponential',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 22,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    SizedBox(width: 15.0),
                    Icon(
                      FontAwesomeIcons.chevronDown,
                      color: Colors.white,
                      size: 15.0,
                    ),
                  ],
                ),
              ),
              SizedBox(height: 100),
            ],
          ),
        ),
      ),
    );
  }
}
