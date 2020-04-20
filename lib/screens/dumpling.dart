import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'donut.dart';

class DumplingScreen extends StatefulWidget {
  @override
  _DumplingScreenState createState() => _DumplingScreenState();
}

class _DumplingScreenState extends State<DumplingScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF4F0F1),
      body: ListView(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.all(20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,

              children: <Widget>[
                Container(
                  width: 185.0,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Container(
                        height: 50.0,
                        width: 50.0,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage('assets/images/dumplings.JPG'),
                            fit: BoxFit.cover
                          ),
                          borderRadius: BorderRadius.circular(25.0),
                        ),
                      ),
                      Text(
                        'Yeri Kim',
                        style: TextStyle(
                          fontFamily: 'OpenSans',
                          fontSize: 17.0,
                          fontWeight: FontWeight.bold,
                          color: Color(0xFF42403F),

                        ),
                      )
                    ],
                  ),
                ),
                IconButton(
                  icon: Icon(Icons.cake, color: Colors.grey.withOpacity(0.7)),
                  onPressed: () {},
                )
              ],
            ),
          ),
          Container(
            height: 200.0,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(
                  'assets/images/dumplings.JPG'
                ),
                fit: BoxFit.cover
              )
            ),
          ),
          SizedBox(height: 20.0,),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Container(
              width: MediaQuery.of(context).size.width - 30.0,
              child: Text(
                'These tasty treats make a perfect snack',
                style: TextStyle(
                  fontFamily: 'OpenSans',
                  fontSize: 12.5,
                  color: Color(0xFF8E8989),

                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20.0, right: 20.0, bottom: 20.0),
            child: Container(
              width: MediaQuery.of(context).size.width,
              child: Text(
                'These tasty treats make a perfect snack',
                style: TextStyle(
                  fontFamily: 'OpenSans',
                  fontSize: 12.5,
                  color: Color(0xFF8E8989),
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 20.0, right: 20.0, bottom: 20.0),
            child: Container(
              width: MediaQuery.of(context).size.width,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  IconButton(
                    icon: Icon(Icons.remove_circle),
                    color: Color(0xFFC4C2C5),
                    onPressed: () {},
                  ),
                  Container(
                    width: 125.0,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text(
                          '\$6.99',
                          style: TextStyle(
                            fontSize: 25.0,
                            fontWeight: FontWeight.bold,
                            color: Color(0xFF322F2E),
                          ),
                        ),
                        Text(
                          '1 order',
                          style: TextStyle(
                            fontFamily: 'OpenSans',
                            fontSize: 12.0,
                            fontWeight: FontWeight.w600,
                            color: Color(0xFF322F2E),
                          ),
                        )
                      ],
                    ),
                  ),
                  IconButton(
                    icon: Icon(Icons.add_circle_outline),
                    color: Color(0xFF4C4A4A),
                    onPressed: () {},
                  )
                ],
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 20.0, right: 20.0),
            child: InkWell(
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => Donut()
                  )
                );
              },
              child: Container(
                height: 50.0,
                width: MediaQuery.of(context).size.width,
                color: Color(0xFF312F2E),
                child: Center(
                  child: Text(
                    'add to basket',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
            ),
          ),
          SizedBox(height: 3.0,),
          Center(
            child: Text(
              'get the second order half price',
              style: TextStyle(
                fontFamily: 'OpenSans',
                fontSize: 12.0,
                color: Color(0xFF8E8989)
              ),
            ),
          )
        ],
      ),
    );
  }
}
