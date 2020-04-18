import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttermealmonkey/widgets/fruit.dart';


class FruitScreen extends StatefulWidget {
  @override
  _FruitScreenState createState() => _FruitScreenState();
}

class _FruitScreenState extends State<FruitScreen> with SingleTickerProviderStateMixin{

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
          SizedBox(height: 10.0,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              IconButton(
                icon: Icon(Icons.menu, color: Colors.grey),
                onPressed: () {},
              ),
              Container(
                height: 50.0,
                width: 200.0,
                decoration: BoxDecoration(
                  color: Colors.grey.withOpacity(0.1),
                  borderRadius: BorderRadius.only(
                    bottomRight: Radius.circular(25.0),
                    bottomLeft: Radius.circular(25.0),
                    topLeft: Radius.circular(25.0),
                    topRight: Radius.circular(25.0)
                  )
                ),
                child: TextField(
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    contentPadding: EdgeInsets.only(top: 15.0),
                    prefixIcon: Icon(Icons.search, color: Colors.grey,)
                  ),
                ),
              ),
              IconButton(
                icon: Icon(Icons.shopping_cart, color: Colors.grey),
                onPressed: () {},
              ),
            ],
          ),
          SizedBox(height: 10.0,),
          Padding(
            padding: EdgeInsets.only(left: 10.0),
            child: Text("All Fruits", style: TextStyle(
              fontFamily: "Quicksand",
              fontWeight: FontWeight.bold,
              fontSize: 25.0
            ),),
          ),
          Padding(
            padding: EdgeInsets.only(top: 10.0),
            child: TabBar(
              controller: tabController,
              indicatorColor: Colors.transparent,
              labelColor: Colors.black,
              unselectedLabelColor: Colors.grey.withOpacity(0.6),
              isScrollable: true,
              tabs: <Widget>[

              ],
            ),

          ),
          Container(
            height: MediaQuery.of(context).size.height - 375.0,
            child: TabBarView(
              controller: tabController,
              children: <Widget>[
                new Fruit(),
                new Fruit(),
                new Fruit(),
              ],
            ),
          )
        ],
      ),
    );
  }
}


