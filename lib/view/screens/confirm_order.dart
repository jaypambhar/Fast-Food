import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:login_app/models/food_items.dart';

class ConfirmOrder extends StatefulWidget {
  final FoodItems foodData;
  ConfirmOrder({Key key, this.foodData}) : super(key: key);

  @override
  _ConfirmOrderState createState() => _ConfirmOrderState();
}

class _ConfirmOrderState extends State<ConfirmOrder> {
  final _scaffoldkey = GlobalKey<ScaffoldState>();
  List<FoodItems> foodFeed = [];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        key: _scaffoldkey,
        drawer: _drawer(),
        body: Column(
          children: [
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: 60,
                    width: 60,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(
                        Radius.circular(20),
                      ),
                    ),
                    child: IconButton(
                      icon: Icon(Icons.menu),
                      onPressed: () {
                        _scaffoldkey.currentState.openDrawer();
                      },
                    ),
                  ),
                  AnimatedContainer(
                    duration: Duration(seconds: 4),
                    curve: Curves.easeInOutQuad,
                    margin: EdgeInsets.only(right: 20, top: 10),
                    height: 60,
                    width: 60,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                      image: DecorationImage(
                        image: AssetImage("assets/images/home_cartoon.jpg"),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              width: double.infinity,
              margin: EdgeInsets.only(left: 15, bottom: 15),
              child: Text(
                'My Cart',
                style: TextStyle(fontSize: 23, fontWeight: FontWeight.bold),
              ),
            ),
            Dismissible(
              // crossAxisEndOffset: 0.9,
              // dragStartBehavior: DragStartBehavior.down,
              // movementDuration: Duration(seconds: 20),
              resizeDuration: Duration(seconds: 4),

              direction: DismissDirection.horizontal,

              key: Key("Hello"),
              background:
                  Container(color: Colors.red, child: Icon(Icons.delete)),
              secondaryBackground: Container(
                  color: Colors.green, child: Icon(Icons.arrow_right)),
              child: Container(
                width: double.infinity,
                height: 200,
                margin: EdgeInsets.only(left: 15, right: 15),
                decoration: BoxDecoration(
                  color: Colors.grey,
                  borderRadius: BorderRadius.all(Radius.circular(15)),
                ),
                child: Text("Image"),
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 15, vertical: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("SubTotal"),
                  Text("\$ 15.50"),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 15, vertical: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Diccount"),
                  Text("-20%"),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 15, vertical: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Total"),
                  Text("\$ 12.40"),
                ],
              ),
            ),
            Container(
              height: 50,
              width: double.infinity,
              margin: EdgeInsets.symmetric(horizontal: 15),
              decoration: BoxDecoration(
                color: Colors.amber,
                borderRadius: BorderRadius.all(Radius.circular(20)),
              ),
              alignment: Alignment.center,
              child: Text(
                "Order Now",
                style: TextStyle(fontSize: 23),
              ),
            ),
          ],
        ),
      ),
    );
  }

  _drawer() {
    return Drawer(
      child: Column(
        children: [
          Container(
            height: 230,
            color: Colors.pink,
            child: Image.asset("assets/images/drawer.jpg"),
          ),
          Expanded(
            child: Container(
              padding: EdgeInsets.only(left: 15),
              child: ListView(
                children: [
                  ListTile(
                    leading: Icon(
                      Icons.person,
                      color: Colors.black,
                    ),
                    title: Text(
                      "Profile",
                      style: TextStyle(color: Colors.black),
                    ),
                  ),
                  ListTile(
                    leading: Icon(
                      Icons.add_shopping_cart,
                      color: Colors.black,
                    ),
                    title: Text(
                      "Cart",
                      style: TextStyle(color: Colors.black),
                    ),
                  ),
                  ListTile(
                    leading: Icon(
                      Icons.work,
                      color: Colors.black,
                    ),
                    title: Text(
                      "Order",
                      style: TextStyle(color: Colors.black),
                    ),
                  ),
                  ListTile(
                    leading: Icon(
                      Icons.speaker_notes,
                      color: Colors.black,
                    ),
                    title: Text(
                      "about",
                      style: TextStyle(color: Colors.black),
                    ),
                  ),
                  Divider(
                    thickness: 0.8,
                    color: Colors.grey,
                  ),
                  Text(
                    "Communicate",
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                  ),
                  ListTile(
                    leading: Icon(
                      Icons.lock_open_outlined,
                      color: Colors.black,
                    ),
                    title: Text(
                      "Change",
                      style: TextStyle(color: Colors.black),
                    ),
                  ),
                  ListTile(
                    leading: Icon(
                      Icons.power_settings_new,
                      color: Colors.black,
                    ),
                    title: Text(
                      "Log Out",
                      style: TextStyle(color: Colors.black),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
