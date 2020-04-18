import 'dart:html';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Fruit extends StatefulWidget {
  @override
  _FruitState createState() => _FruitState();
}

class _FruitState extends State<Fruit> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      scrollDirection: Axis.horizontal,
      children: <Widget>[
        _buildFoodCard('assets/avocado.png', 'Large single avocado freshly imported from California', '18.55', cardColor)
      ],
    );
  }

  Widget _buildFoodCard(String imgPath, String description, String price, String cardColor) {
    return Padding(
      padding: EdgeInsets.all(12.0),
      child: Container(
        height: 100.0,
        width: 200.0,
        decoration: BoxDecoration(
          color: Color(int.parse(cardColor)),
          borderRadius: BorderRadius.circular(15.0),
        ),
        child: Column(
          children: <Widget>[
            SizedBox(
              height: 15.0,
            ),
            Image.asset(imgPath, fit: BoxFit.cover, height: 100.0,),
            SizedBox(height: 10.0,),
            Text(
              price,
              style: TextStyle(
                fontFamily: 'Quicksand',
                color: Colors.white,
                fontSize: 20.0
              ),
            ),
            SizedBox(height: 10.0,),
            Padding(
              padding: const EdgeInsets.only(left: 20.0, right: 10.0),
              child: Text(description, style: TextStyle(
                  fontFamily: 'Quicksand',
                  color: Colors.white,
                  fontSize: 12.0
              ),),
            ),
            SizedBox(height: 15.0,),
            InkWell(
              onTap: () {},
              child: Container(
                height: 30.0,
                width: 125.0,
                decoration: BoxDecoration(
                  color: Color(0xFF89AC83),
                  borderRadius: BorderRadius.circular(15.0)
                ),
                child: Center(
                  child: Text(
                    'Add to cart',
                    style: TextStyle(
                      fontFamily: 'Quicksand',
                      color: Colors.white
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}