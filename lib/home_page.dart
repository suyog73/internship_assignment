// ignore_for_file: prefer_const_constructors
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'helper/color_bar.dart';
import 'helper/column_content.dart';
import 'helper/time_button.dart';
import 'helper/transaction_method.dart';

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
                      fontSize: 28.0,
                      fontWeight: FontWeight.w500,
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
                          color: Colors.grey,
                          fontSize: 18,
                          fontWeight: FontWeight.w100,
                        ),
                      ),
                      Icon(
                        FontAwesomeIcons.chevronDown,
                        color: Colors.grey,
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
                  fontSize: 24,
                  fontWeight: FontWeight.w400,
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
                                      fontWeight: FontWeight.w700,
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
                        textColour: Colors.white,
                        weight: FontWeight.w400,
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
                  fontWeight: FontWeight.w400,
                  fontSize: 25,
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
                    'BUY',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 30.0),
              Padding(
                padding: const EdgeInsets.symmetric(
                    horizontal: 30.0, vertical: 10.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    TransactionMethod(value: '7', method: 'Buy'),
                    TransactionMethod(value: '-', method: 'Neutral'),
                    TransactionMethod(value: '5', method: 'Sell'),
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
                        fontWeight: FontWeight.w400,
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
              SizedBox(height: 20.0),
              Container(
                height: 40.0,
                decoration: BoxDecoration(
                  color: Colors.grey.shade900,
                  borderRadius: BorderRadius.all(Radius.circular(5.0)),
                ),
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 10.0, vertical: 0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Text(
                        'Period',
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 18,
                          fontWeight: FontWeight.w100,
                        ),
                      ),
                      Text(
                        'Value',
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 18,
                          fontWeight: FontWeight.w100,
                        ),
                      ),
                      Text(
                        'Type',
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 18,
                          fontWeight: FontWeight.w100,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 10),
              ColumnContent(
                text1: 'MA10',
                text2: '465.28',
                text3: 'SELL',
              ),
              ColumnContent(
                text1: 'MA20',
                text2: '465.28',
                text3: 'SELL',
              ),
              ColumnContent(
                text1: 'MA30',
                text2: '465.28',
                text3: 'BUY',
              ),
              ColumnContent(
                text1: 'MA50',
                text2: '465.28',
                text3: 'BUY',
              ),
              ColumnContent(
                text1: 'MA100',
                text2: '465.28',
                text3: 'SELL',
              ),
              ColumnContent(
                text1: 'MA200',
                text2: '465.28',
                text3: 'BUY',
              ),
              SizedBox(height: 50),
              Text('Oscillators',
                  style: TextStyle(color: Colors.white, fontSize: 22)),
              SizedBox(height: 40),
              InkWell(
                child: Container(
                  decoration: BoxDecoration(
                    color: Color(0xFFFF2E50),
                    borderRadius: BorderRadius.all(Radius.circular(10.0)),
                  ),
                  alignment: Alignment.center,
                  width: 120,
                  height: 40,
                  child: Text(
                    'STRONG SELL',
                    style: TextStyle(color: Colors.white, fontSize: 17),
                  ),
                ),
              ),
              SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.symmetric(
                    horizontal: 30.0, vertical: 10.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    TransactionMethod(value: '1', method: 'Buy'),
                    TransactionMethod(value: '1', method: 'Neutral'),
                    TransactionMethod(value: '9', method: 'Sell'),
                  ],
                ),
              ),
              SizedBox(height: 30),
              Container(
                height: 40.0,
                decoration: BoxDecoration(
                  color: Colors.grey.shade900,
                  borderRadius: BorderRadius.all(Radius.circular(5)),
                ),
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 10, vertical: 0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Text(
                        'Period',
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 18,
                          fontWeight: FontWeight.w100,
                        ),
                      ),
                      Text(
                        'Value',
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 18,
                          fontWeight: FontWeight.w100,
                        ),
                      ),
                      Text(
                        'Type',
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 18,
                          fontWeight: FontWeight.w100,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 20.0),
              ColumnContent(
                text1: 'RSI (14)',
                text2: '-53.6549',
                text3: 'NEUTRAL',
                colour1: Colors.grey,
              ),
              ColumnContent(
                text1: 'CCI(20)',
                text2: '-53.6549',
                text3: 'SELL',
                colour1: Colors.grey,
              ),
              ColumnContent(
                text1: 'ADI(14)',
                text2: '-53.6549',
                text3: 'BUY',
                colour1: Colors.grey,
              ),
              ColumnContent(
                text1: 'Awesome Oscillator',
                text2: '-53.6549',
                text3: 'SELL',
                colour1: Colors.grey,
              ),
              ColumnContent(
                text1: 'Momentum (10)',
                text2: '-53.6549',
                text3: 'SELL',
                colour1: Colors.grey,
              ),
              ColumnContent(
                text1: 'Stochastic RSI Fast (3, 3, 14, 14)',
                text2: '-53.6549',
                text3: 'SELL',
                colour1: Colors.grey,
              ),
              ColumnContent(
                text1: 'Williams %R (14)',
                text2: '-53.6549',
                text3: 'SELL',
                colour1: Colors.grey,
              ),
              ColumnContent(
                text1: 'Bull Bear Power',
                text2: '-53.6549',
                text3: 'SELL',
                colour1: Colors.grey,
              ),
              ColumnContent(
                text1: 'Ultimate Oscillator (7, 14, 28)',
                text2: '-53.6549',
                text3: 'LESS VOLATILE',
                colour1: Colors.grey,
              ),
              SizedBox(height: 40),
              Text(
                'Pivot Points',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 25,
                ),
              ),
              SizedBox(height: 30.0),
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
                      'Classic',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 22,
                      ),
                    ),
                    SizedBox(width: 55.0),
                    Icon(
                      FontAwesomeIcons.chevronDown,
                      color: Colors.white,
                      size: 15.0,
                    ),
                  ],
                ),
              ),
              SizedBox(height: 30.0),
              ColumnContent(
                text1: 'S3',
                text3: '456.87',
                colour1: Colors.grey,
                colour3: Colors.white,
              ),
              ColumnContent(
                text1: 'S2',
                text3: '456.87',
                colour1: Colors.grey,
                colour3: Colors.white,
              ),
              ColumnContent(
                text1: 'S1',
                text3: '456.87',
                colour1: Colors.grey,
                colour3: Colors.white,
              ),
              ColumnContent(
                text1: 'Pivot Points',
                text3: '456.87',
                colour1: Colors.grey,
                colour3: Colors.white,
              ),
              ColumnContent(
                text1: 'R1',
                text3: '456.87',
                colour1: Colors.grey,
                colour3: Colors.white,
              ),
              ColumnContent(
                text1: 'R2',
                text3: '456.87',
                colour1: Colors.grey,
                colour3: Colors.white,
              ),
              ColumnContent(
                text1: 'R3',
                text3: '456.87',
                colour1: Colors.grey,
                colour3: Colors.white,
              ),
              SizedBox(height: 100),
            ],
          ),
        ),
      ),
    );
  }
}
