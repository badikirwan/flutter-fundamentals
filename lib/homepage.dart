import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_app/foodlist.dart';

void main() {
  runApp(MainApp());
}

class MainApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Homepage(),
    );
  }
}

class Homepage extends StatefulWidget {
  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> with SingleTickerProviderStateMixin {

  TabController tabController;

  @override
  void initState() {
    super.initState();
    tabController = TabController(vsync: this, length: 4);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: <Widget>[
          Stack(
            children: <Widget>[
              Container(
                height: 250.0,
                decoration: BoxDecoration(
                    borderRadius:
                        BorderRadius.only(bottomRight: Radius.circular(75.0)),
                    color: Colors.amber),
              ),
              Container(
                height: 185.0,
                decoration: BoxDecoration(
                    borderRadius:
                        BorderRadius.only(bottomRight: Radius.circular(75.0)),
                    color: Colors.amberAccent),
              ),
              Padding(
                padding: EdgeInsets.only(top: 35.0, left: 15.0),
                child: Text(
                  'Good Afternoon!',
                  style: TextStyle(
                      fontSize: 30.0,
                      color: Colors.white,
                      fontWeight: FontWeight.bold),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 75.0, left: 15.0),
                child: Text(
                  'Choose your favorites!',
                  style: TextStyle(
                      fontSize: 30.0,
                      color: Colors.white,
                      fontWeight: FontWeight.bold),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 160.0, left: 15.0, right: 15.0),
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                          bottomRight: Radius.circular(25.0),
                          bottomLeft: Radius.circular(5.0),
                          topLeft: Radius.circular(5.0))),
                  child: TextField(
                    decoration: InputDecoration(
                        border: InputBorder.none,
                        contentPadding: EdgeInsets.only(top: 14.0),
                        hintText: 'Search for your favorites',
                        prefixIcon: Icon(Icons.search)),
                  ),
                ),
              )
            ],
          ),
          TabBar(
            controller: tabController,
            indicatorColor: Colors.orange,
            indicatorSize: TabBarIndicatorSize.label,
            indicatorWeight: 4.0,
            labelColor: Colors.black12,
            isScrollable: true,
            tabs: <Widget>[
              Tab(
                child: Text('DRINKS', style: TextStyle(fontSize: 15.0),
                ),
              ),
              Tab(
                child: Text('PIZZA', style: TextStyle(fontSize: 15.0),
                ),
              ),
              Tab(
                child: Text('BARBECUE', style: TextStyle(fontSize: 15.0),
                ),
              ),
              Tab(
                child: Text('STEAK', style: TextStyle(fontSize: 15.0),
                ),
              )
            ],
          ),
          SizedBox(height: 10.0,),
          Container(
            height: MediaQuery.of(context).size.height - 400.0,
            child: TabBarView(
                controller: tabController,
                children: <Widget>[
                  new FoodList(),
                  new FoodList(),
                  new FoodList(),
                  new FoodList()
                ]
            ),
          )
        ],
      ),
    );
  }
}
