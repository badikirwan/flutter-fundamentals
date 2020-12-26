
import 'dart:ui';
import 'package:flutter/material.dart';

class FoodList extends StatefulWidget {
  @override
  _FoodListState createState() => _FoodListState();
}

class _FoodListState extends State<FoodList> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        _buildFoodCard('Strawbery Cream Waffles', 7.0, 20, true),
        _buildFoodCard('Strawbery Cream Waffles', 7.0, 20, true),
        _buildFoodCard('Strawbery Cream Waffles', 7.0, 20, true)
      ],
      scrollDirection: Axis.horizontal,
    );
  }

  _buildFoodCard(String foodName, double price, int calCount, bool hasMilk) {
    return Padding(
      padding: EdgeInsets.only(top: 8.0, left: 10.0, right: 10.0),
      child: Container(
        height: 100.0,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(7.0),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.2),
              blurRadius: 3.0,
                spreadRadius: 3.0
            )
          ]
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Padding(
                padding: EdgeInsets.only(left: 15.0, right: 15.0, top: 10.0),
                child: ClipOval(
                  child: Image(
                    image: NetworkImage('https://images.immediate.co.uk/production/volatile/sites/30/2020/08/classic_snowball-9022de0.jpg?quality=90&resize=500%2C454'),
                    fit: BoxFit.cover,
                    height: 100.0,
                    width: 100.0,
                  ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
