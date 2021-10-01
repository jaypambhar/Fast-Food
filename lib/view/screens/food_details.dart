import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:login_app/models/food_items.dart';
import 'package:login_app/view/screens/confirm_order.dart';

class FoodDetails extends StatefulWidget {
  final FoodItems foodData;
  FoodDetails({Key key, @required this.foodData}) : super(key: key);

  @override
  _FoodDetailsState createState() => _FoodDetailsState();
}

class _FoodDetailsState extends State<FoodDetails> {
  int _counter = 1;
  bool tap = true;
  void increment() {
    setState(() {
      _counter++;
    });
  }

  void decrement() {
    if (_counter > 0) {
      setState(() {
        _counter--;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: 50,
                    width: 50,
                    margin: EdgeInsets.all(7),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(Radius.circular(15)),
                    ),
                    child: IconButton(
                      icon: Icon(Icons.arrow_back_ios),
                      onPressed: () {
                        Navigator.pop(context);
                      },
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(7),
                    child: IconButton(
                      icon: tap
                          ? Icon(Icons.favorite_border)
                          : Icon(
                              Icons.favorite_sharp,
                              color: Colors.red,
                            ),
                      onPressed: () {
                        setState(() => tap = !tap);
                      },
                    ),
                  ),
                ],
              ),
            ),
            Image.asset(
              "${widget.foodData.image}",
              height: 150,
            ),
            Container(
              height: 380,
              width: double.infinity,
              margin: EdgeInsets.only(top: 20, left: 15, right: 15),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30)),
              ),
              child: Stack(
                overflow: Overflow.visible,
                children: [
                  Positioned(
                    top: -20,
                    left: 95,
                    child: Container(
                      height: 50,
                      width: 140,
                      decoration: BoxDecoration(
                        color: Colors.amber,
                        borderRadius: BorderRadius.all(Radius.circular(30)),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          IconButton(
                            icon: Icon(Icons.remove),
                            onPressed: () {
                              decrement();
                            },
                          ),
                          Text(
                            "$_counter",
                            style: TextStyle(fontSize: 25),
                          ),
                          IconButton(
                            icon: Icon(Icons.add),
                            onPressed: () {
                              increment();
                            },
                          )
                        ],
                      ),
                    ),
                  ),
                  Positioned(
                    top: 50,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          width: 325,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "${widget.foodData.foodName}",
                                style: TextStyle(
                                    fontSize: 23, fontWeight: FontWeight.bold),
                              ),
                              Text(" \$${widget.foodData.price}",
                                  style: TextStyle(fontSize: 25))
                            ],
                          ),
                        ),
                        SizedBox(height: 8),
                        Container(
                          width: 325,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              TextButton.icon(
                                onPressed: () {},
                                icon: Icon(Icons.star,
                                    color: Colors.yellow.shade700),
                                label: Text("${widget.foodData.rate}"),
                              ),
                              Text("${widget.foodData.calories}"),
                              TextButton.icon(
                                onPressed: () {},
                                icon: Icon(Icons.alarm, color: Colors.red),
                                label: Text("${widget.foodData.time}"),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 10),
                        Text(
                          "Details",
                          style: TextStyle(
                              fontSize: 23, fontWeight: FontWeight.bold),
                        ),
                        SizedBox(height: 8),
                        Text(
                          "${widget.foodData.datails}",
                          style: TextStyle(fontSize: 15),
                        ),
                        SizedBox(height: 50),
                        GestureDetector(
                          onTap: () {
                            var data;
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) =>
                                    ConfirmOrder(foodData: data),
                              ),
                            );
                          },
                          child: Container(
                            height: 50,
                            width: 330,
                            decoration: BoxDecoration(
                              color: Colors.amber,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(25)),
                            ),
                            alignment: Alignment.center,
                            child: Text(
                              "Add to bag",
                              style: TextStyle(fontSize: 20),
                            ),
                          ),
                        ),
                        SizedBox(height: 10),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
