import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:furniture_app_ui/2ndscreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: SecondScreeen(),
    );
  }
}

class Home extends StatefulWidget {
  Home({Key key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: ListView(
          children: [
            Stack(
              children: [
                Container(
                  width: double.infinity,
                  height: 300,
                  color: Colors.amber[400],
                ),
                Positioned(
                  right: 90,
                  bottom: 50,
                  child: Container(
                    height: 400,
                    width: 400,
                    decoration: BoxDecoration(
                        color: Colors.amber[300].withOpacity(0.8),
                        borderRadius: BorderRadius.circular(300)),
                  ),
                ),
                Positioned(
                  left: 200,
                  bottom: 130,
                  child: Container(
                    height: 300,
                    width: 300,
                    decoration: BoxDecoration(
                        color: Colors.amber[200].withOpacity(0.6),
                        borderRadius: BorderRadius.circular(300)),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(left: 10, right: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 40,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            width: 70,
                            height: 70,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(60),
                                border: Border.all(
                                  color: Colors.white,
                                  width: 3,
                                ),
                                image: DecorationImage(
                                    fit: BoxFit.cover,
                                    image: AssetImage("assets/tom.jpg"))),
                          ),
                          IconButton(
                            icon: Icon(
                              Icons.menu,
                              color: Colors.white,
                            ),
                            onPressed: () {},
                          ),
                        ],
                      ),
                      SizedBox(height: 50.0),
                      Text(
                        "Hello  ,  Pine",
                        style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.w800,
                        ),
                      ),
                      SizedBox(height: 25.0),
                      Text(
                        "What you wany to Buy ?",
                        style: TextStyle(
                          fontSize: 27,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      SizedBox(height: 25.0),
                      Material(
                          elevation: 5,
                          borderRadius: BorderRadius.circular(10),
                          child: TextFormField(
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: "Search",
                              hintStyle: TextStyle(color: Colors.grey),
                              prefixIcon: Icon(
                                Icons.search,
                                color: Colors.amber[500],
                              ),
                            ),
                          )),
                      SizedBox(height: 10),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(height: 20),
            Stack(
              children: [
                Material(
                  elevation: 10,
                  child: Container(
                    width: double.infinity,
                    height: 70,
                    color: Colors.white,
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 8),
                  height: 60,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Column(
                        children: [
                          Container(
                            height: 40,
                            width: 40,
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    fit: BoxFit.cover,
                                    image: AssetImage("assets/sofa.png"))),
                          ),
                          Text("Sofa"),
                        ],
                      ),
                      Column(
                        children: [
                          Container(
                            height: 40,
                            width: 40,
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    fit: BoxFit.cover,
                                    image: AssetImage("assets/dresser.png"))),
                          ),
                          Text("Wardrobe"),
                        ],
                      ),
                      Column(
                        children: [
                          Container(
                            height: 40,
                            width: 40,
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    fit: BoxFit.cover,
                                    image: AssetImage("assets/dressers.png"))),
                          ),
                          Text("Desk"),
                        ],
                      ),
                      Column(
                        children: [
                          Container(
                            height: 40,
                            width: 40,
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    fit: BoxFit.cover,
                                    image: AssetImage("assets/desks.png"))),
                          ),
                          Text("Dresser"),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 30,
            ),
            buildCard(true),
            buildCard(false),
            buildCard(true),
            buildCard(false),
          ],
        ),
      ),
    );
  }

  buildCard(bool isfav) {
    return Container(
      margin: EdgeInsets.only(left: 10, right: 10, top: 10, bottom: 10),
      width: double.infinity,
      color: Colors.white,
      height: 200,
      child: Row(
        children: [
          Expanded(
            child: Container(
              width: 140,
              height: 200,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/ottoman.jpg"),
                ),
              ),
            ),
          ),
          SizedBox(width: 20),
          Column(
            children: [
              Expanded(
                child: Column(
                  children: [
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "FinnNavain",
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(width: 20),
                        Material(
                          borderRadius: BorderRadius.circular(30),
                          elevation: 10,
                          child: isfav
                              ? Container(
                                  alignment: Alignment.center,
                                  height: 40,
                                  width: 40,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(30),
                                  ),
                                  child:
                                      Icon(Icons.favorite, color: Colors.red))
                              : Container(
                                  alignment: Alignment.center,
                                  height: 40,
                                  width: 40,
                                  decoration: BoxDecoration(
                                    color: Colors.grey[300],
                                    borderRadius: BorderRadius.circular(30),
                                  ),
                                  child: Icon(Icons.favorite_border)),
                        ),
                      ],
                    ),
                    SizedBox(height: 5),
                    Container(
                      width: 175,
                      child: Text(
                        "Scandinavian small siize double safe imported full leather / Dale Italia ail wax leathere black",
                        style: TextStyle(
                          color: Colors.grey,
                        ),
                      ),
                    ),
                    SizedBox(height: 30),
                  ],
                ),
              ),
              Column(
                children: [
                  Row(
                    children: [
                      Container(
                          color: Colors.amber,
                          alignment: Alignment.center,
                          width: 60,
                          height: 50,
                          child: Text("250",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                              ))),
                      Container(
                        alignment: Alignment.center,
                        color: Colors.amber[400],
                        width: 120,
                        height: 50,
                        child: Text(
                          "Add to cart",
                          style: TextStyle(
                            fontSize: 18,
                            color: Colors.white,
                          ),
                        ),
                      )
                    ],
                  ),
                ],
              )
            ],
          ),
        ],
      ),
    );
  }
}
