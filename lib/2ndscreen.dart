import 'package:flutter/material.dart';

class SecondScreeen extends StatefulWidget {
  SecondScreeen({Key key}) : super(key: key);

  @override
  _SecondScreeenState createState() => _SecondScreeenState();
}

class _SecondScreeenState extends State<SecondScreeen> {
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
                  bottom: 80,
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
                Column(
                  children: [
                    SizedBox(
                      height: 20.0,
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 20, right: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Container(
                                width: 70,
                                height: 70,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(60.0),
                                  border: Border.all(
                                    color: Colors.white,
                                    width: 3,
                                  ),
                                  image: DecorationImage(
                                      fit: BoxFit.cover,
                                      image: AssetImage("assets/tom.jpg")),
                                ),
                              ),
                              SizedBox(width: 10),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text("Pine",
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 25,
                                      )),
                                  Text("122*****555",
                                      style: TextStyle(
                                        color: Colors.grey,
                                      ))
                                ],
                              )
                            ],
                          ),
                          IconButton(
                            icon: Icon(
                              Icons.settings,
                              color: Colors.white,
                              size: 40,
                            ),
                            onPressed: () {},
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 40),
                    Container(
                      height: 70,
                      width: double.infinity,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Column(
                            children: [
                              Icon(
                                Icons.folder,
                                color: Colors.white,
                                size: 50,
                              ),
                              Text("Favoritses",
                                  style: TextStyle(color: Colors.white))
                            ],
                          ),
                          Column(
                            children: [
                              Icon(
                                Icons.account_balance_wallet,
                                color: Colors.white,
                                size: 50,
                              ),
                              Text("Favoritses",
                                  style: TextStyle(color: Colors.white))
                            ],
                          ),
                          Column(
                            children: [
                              Icon(
                                Icons.print,
                                color: Colors.white,
                                size: 50,
                              ),
                              Text("Favoritses",
                                  style: TextStyle(color: Colors.white))
                            ],
                          ),
                          Column(
                            children: [
                              Icon(
                                Icons.computer,
                                color: Colors.white,
                                size: 50,
                              ),
                              Text("Favoritses",
                                  style: TextStyle(color: Colors.white))
                            ],
                          ),
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 30),
                      child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            buildTile(Icons.payments, 5, "Pending payments"),
                            buildTile(Icons.local_shipping_rounded, 2,
                                "To be shipped"),
                          ]),
                    ),
                    SizedBox(height: 5),
                  ],
                ),
              ],
            ),
            Container(
              margin: EdgeInsets.only(top: 10),
              child: Stack(
                children: [
                  Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          buildTile(Icons.call_received, 8, "To be received"),
                          buildTile(Icons.find_replace, 0, "Return/Replace")
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
            othermethodsTile(
                Colors.red, Colors.red[100], "Gift Card", Icons.card_giftcard),
            othermethodsTile(Colors.amber, Colors.amber[100], "Band Card",
                Icons.payment_outlined),
            othermethodsTile(Colors.red, Colors.red[100], "Replacement Code",
                Icons.find_replace_sharp),
            othermethodsTile(Colors.blue, Colors.blue[100],
                "Consulting Collection", Icons.collections),
            othermethodsTile(Colors.red, Colors.red[100], "Customer Care",
                Icons.assignment_ind_rounded),
          ],
        ),
      ),
    );
  }

  buildTile(icon, number, text) {
    return Material(
      elevation: 5,
      borderRadius: BorderRadius.circular(10),
      child: Container(
        width: MediaQuery.of(context).size.width / 2.2,
        height: 150,
        padding: EdgeInsets.symmetric(horizontal: 5),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 10),
              Icon(icon, size: 50),
              Text(
                text,
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 18.0,
                ),
              ),
              SizedBox(height: 10),
              Text(
                number.toString(),
                style: TextStyle(
                  fontSize: 20.0,
                  color: Colors.red,
                ),
              ),
              SizedBox(height: 10),
            ],
          ),
        ),
      ),
    );
  }

  othermethodsTile(Color color, Color bgColor, text, icon) {
    return Container(
      color: Colors.white,
      margin: EdgeInsets.only(top: 20),
      padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      child: Row(
        children: [
          Container(
              width: 50,
              height: 50,
              decoration: BoxDecoration(
                color: bgColor,
                borderRadius: BorderRadius.circular(30),
              ),
              child: Icon(
                icon,
                color: color,
                size: 30,
              )),
          SizedBox(width: 20),
          Text(
            text,
            style: TextStyle(
              color: Colors.black,
              fontSize: 20,
              fontWeight: FontWeight.w400,
            ),
          ),
          Spacer(),
          Icon(
            Icons.arrow_forward_ios,
            color: Colors.grey,
          ),
        ],
      ),
    );
  }
}
