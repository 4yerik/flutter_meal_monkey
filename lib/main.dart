
import 'package:flutter/material.dart';
import 'package:fluttermealmonkey/screens/dumpling.dart';
import 'package:fluttermealmonkey/screens/fruit.dart';
import 'package:fluttermealmonkey/screens/plan_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
//      home: FruitScreen(),
    home: DumplingScreen(),
//      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done

    return Scaffold(
      backgroundColor: Color(0xFF21BFBD),


      body: ListView(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        children: <Widget>[
          Padding(
            padding: EdgeInsets.only(top: 15.0, left: 10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                IconButton(
                  icon: Icon(Icons.arrow_back_ios),
                  color: Colors.white,
                  onPressed: () {},
                ),
                Container(
                  width: 125.0,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      IconButton(
                        icon: Icon(Icons.filter_list),
                        color: Colors.white,
                        onPressed: () {},
                      ),
                      IconButton(
                        icon: Icon(Icons.menu),
                        color: Colors.white,
                        onPressed: () {},
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
          SizedBox(
            height: 40.0,
          ),
          Container(
            height: MediaQuery.of(context).size.height - 185.0,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(topLeft: Radius.circular(75.0)),
            ),
            child: ListView(
              primary: false,
              padding: EdgeInsets.only(left: 25.0, right: 20.0),
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.only(top: 45.0),
                  child: Container(
                    height: MediaQuery.of(context).size.height - 300.0,
                    child: ListView(
                      children: <Widget>[
                        _buildFoodItem('assets/images/padThai.JPG', "Pad Thai", '25', context),
                        _buildFoodItem('assets/images/salad.JPG', "Salad", '15', context),
                      ],
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,

                  children: <Widget>[
                    Container(
                      height: 65.0,
                      width: 60.0,
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.grey,
                          style: BorderStyle.solid,
                          width: 1.0,
                        ),
                        borderRadius: BorderRadius.circular(20.0)
                      ),
                    )
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}

Widget _buildFoodItem(String imgPath, String foodName, String price, BuildContext context) {
  return GestureDetector(
    onTap: () => Navigator.push(
      context,
      MaterialPageRoute(
//          builder: (_) => FruitScreen()
        builder: (_) => PlanScreen(heroTag: imgPath, foodName: foodName, foodPrice: price,
        ),
      ),
    ),
    child: Padding(
      padding: EdgeInsets.only(left: 10.0, right: 10.0, top: 10.0),
      child: InkWell(
        onTap: () {
          Navigator.of(context).push(MaterialPageRoute(
            builder: (context) => PlanScreen(heroTag: imgPath, foodName: foodName, foodPrice: price)
          ));
        },
        child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Container(
                  child: Row(
                children: [
//                  Hero(
//                      tag: imgPath,
//                      child: Image(
//                        image: AssetImage(imgPath),
//                        fit: BoxFit.contain,
//                        height: 75.0,
//                        width: 75.0,
//                      )),
                  CircleAvatar(
                    radius: 35.0,
                    backgroundImage: AssetImage(imgPath),
                  ),
                  SizedBox(width: 10.0,),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        foodName,
                        style: TextStyle(
                          fontFamily: 'Montserrat',
                          fontSize: 17.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        price,
                        style: TextStyle(
                          fontFamily: 'Montserrat',
                          fontSize: 15.0,
                          color: Colors.grey,
                        ),
                      ),
                    ],
                  )
                ],
              )),
              IconButton(
                icon: Icon(Icons.add),
                color: Colors.black,
                onPressed: () {
                },
              )
            ]),
      ),
    ),
  );
}
