import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:login_app/models/food_items.dart';
import 'package:login_app/models/model_data.dart';
import 'package:login_app/view/screens/food_details.dart';

enum FoodType { Burger, Pizza, StickFries, Pasta, ColdDrinks }

class HomePage extends StatefulWidget {
  HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

ThemeData _lightTheme = ThemeData(
  accentColor: Colors.blue,
  brightness: Brightness.light,
);
ThemeData _darkTheme = ThemeData(
  accentColor: Colors.red,
  brightness: Brightness.dark,
  primaryColor: Colors.black,
);
bool _light = true;

class _HomePageState extends State<HomePage> {
  FoodType currentListType = FoodType.Burger;
  List<FoodItems> searchList = [];
  List<FoodItems> foodFeeds = [];
  final _scaffoldkey = GlobalKey<ScaffoldState>();

  List<String> foodList = [
    "burger",
    "pizza",
    "Stick Fries",
    "pasta",
    "cold drinks"
  ];

  @override
  void initState() {
    foodFeeds = Data.burgerFeed();
    searchList = foodFeeds;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: _light ? _lightTheme : _darkTheme,
      home: Scaffold(
        // backgroundColor: Colors.blueGrey[100],
        // drawerScrimColor: Colors.teal,
        key: _scaffoldkey,
        // floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        // floatingActionButton: FloatingActionButton(
        //   onPressed: () {},
        //   child: Icon(Icons.local_mall_outlined),
        // ),
        // bottomNavigationBar: Container(
        //   child: BottomAppBar(
        //     // color: Colors.blueGrey[100],
        //     shape: CircularNotchedRectangle(),
        //     child: Row(
        //       mainAxisAlignment: MainAxisAlignment.spaceAround,
        //       children: [
        //         IconButton(
        //             icon: Icon(Icons.home_outlined),
        //             onPressed: () {
        //               Navigator.push(
        //                 context,
        //                 MaterialPageRoute(
        //                   builder: (context) => HomePage(),
        //                 ),
        //               );
        //             }),
        //         IconButton(
        //             icon: Icon(Icons.menu_book_outlined),
        //             onPressed: () {
        //               Navigator.push(
        //                 context,
        //                 MaterialPageRoute(
        //                   builder: (context) => FoodMenu(),
        //                 ),
        //               );
        //             }),
        //         SizedBox(width: 10),
        //         IconButton(
        //             icon: Icon(Icons.bookmark_outline), onPressed: () {}),
        //         IconButton(
        //             icon: Icon(Icons.notifications_none_outlined),
        //             onPressed: () {}),
        //       ],
        //     ),
        //   ),
        // ),
        body: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              children: [
                _header(),
                Container(
                  height: 65,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      selectFoodItem(
                        label: "Burger",
                        image: "assets/images/item_1.png",
                        type: FoodType.Burger,
                      ),
                      selectFoodItem(
                          label: "Pizza",
                          image: "assets/images/item_2.png",
                          type: FoodType.Pizza),
                      selectFoodItem(
                          label: "StickFries",
                          image: "assets/images/item_3.png",
                          type: FoodType.StickFries),
                      selectFoodItem(
                          label: "Pasta",
                          image: "assets/images/item_4.png",
                          type: FoodType.Pasta),
                      selectFoodItem(
                          label: "Coc",
                          image: "assets/images/item_5.png",
                          type: FoodType.ColdDrinks),
                    ],
                  ),
                ),
                Container(
                  height: 265,
                  margin: EdgeInsets.only(top: 15),
                  child: foodFeeds.length <= 0
                      ? Center(
                          child: Text("No items"),
                        )
                      : ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: foodFeeds.length,
                          itemBuilder: (context, index) =>
                              _foodDishes(index, foodFeeds[index]),
                        ),
                ),
              ],
            ),
          ),
        ),
        drawer: _drawer(),
      ),
    );
  }

  Widget _header() => Column(
        children: [
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  height: 60,
                  width: 60,
                  decoration: BoxDecoration(
                    // color: Colors.white,
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
                Row(
                  children: [
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

                    IconButton(
                      icon: Icon(_light
                          ? Icons.brightness_6_outlined
                          : Icons.brightness_2_outlined),
                      onPressed: () {
                        setState(() {
                          _light = !_light;
                        });
                      },
                    )
                    // Switch(
                    //   value: _light,
                    //   onChanged: (value) => setState(
                    //     () => _light = value,
                    //   ),
                    // ),
                  ],
                ),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.only(left: 10),
            width: double.infinity,
            child: Text(
              "Let's eat\nQuality food 😋",
              style: TextStyle(fontSize: 20),
            ),
          ),
          Row(
            children: [
              Container(
                height: 50,
                width: 270,
                margin: EdgeInsets.only(left: 10, top: 10),
                decoration: BoxDecoration(
                  color: Colors.grey.shade200,
                  borderRadius: BorderRadius.all(Radius.circular(17)),
                ),
                child: TextFormField(
                  onChanged: (value) {
                    setState(() {
                      foodFeeds = searchList
                          .where((element) =>
                              element.foodName.toLowerCase().contains(value))
                          .toList();
                    });
                  },
                  decoration: InputDecoration(
                    hintText: "Search food",
                    border: InputBorder.none,
                    prefixIcon: IconButton(
                      icon: Icon(Icons.search),
                      onPressed: () {},
                    ),
                  ),
                ),
              ),
              Container(
                height: 50,
                width: 50,
                margin: EdgeInsets.only(left: 15, top: 10),
                decoration: BoxDecoration(
                    color: Colors.amber,
                    borderRadius: BorderRadius.all(Radius.circular(15))),
                child: IconButton(
                  icon: Icon(Icons.menu_open),
                  onPressed: () {},
                ),
              )
            ],
          ),
        ],
      );

  Widget selectFoodItem({
    String image,
    String label,
    FoodType type,
  }) {
    return GestureDetector(
      onTap: () {
        setState(() {
          switch (type) {
            case FoodType.Burger:
              currentListType = FoodType.Burger;
              foodFeeds = Data.burgerFeed();
              searchList = foodFeeds;
              break;
            case FoodType.Pizza:
              currentListType = FoodType.Pizza;

              foodFeeds = Data.pizzaFeed();
              searchList = foodFeeds;

              break;
            case FoodType.StickFries:
              currentListType = FoodType.StickFries;

              foodFeeds = Data.stickFeed();
              searchList = foodFeeds;

              break;
            case FoodType.Pasta:
              currentListType = FoodType.Pasta;

              foodFeeds = Data.pastaFeed();
              searchList = foodFeeds;

              break;
            case FoodType.ColdDrinks:
              currentListType = FoodType.ColdDrinks;

              foodFeeds = Data.coldDrinksFeed();
              searchList = foodFeeds;

              break;
            default:
          }
        });
      },
      child: Container(
        width: 140,
        margin: EdgeInsets.only(left: 10, top: 10, right: 10),
        decoration: BoxDecoration(
          color: currentListType == type ? Colors.amber : Colors.transparent,
          borderRadius: BorderRadius.all(Radius.circular(15)),
          border: Border.all(
            color: Colors.blue,
            width: currentListType == type ? 2 : 0,
          ),
        ),
        child: Row(
          children: [
            Image.asset(
              "$image",
              height: 50,
              width: 50,
            ),
            SizedBox(width: 10),
            Text(
              "$label",
            ),
          ],
        ),
      ),
    );
  }

  Widget _foodDishes(int index, FoodItems data) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => FoodDetails(foodData: data),
          ),
        );
      },
      child: Container(
        width: 200,
        margin: EdgeInsets.only(left: 15, right: 15),
        decoration: BoxDecoration(
          // color: Colors.pink,
          borderRadius: BorderRadius.all(Radius.circular(15)),
        ),
        child: Column(
          children: [
            Image.asset(
              "${data.image}",
              height: 100,
            ),
            Text(
              "${data.foodName}",
              style: TextStyle(fontSize: 20),
            ),
            SizedBox(height: 5),
            Text(
              "${data.decs}",
              style: TextStyle(fontSize: 15, color: Colors.black45),
            ),
            Text(
              "${data.calories}",
              style: TextStyle(fontSize: 15, color: Colors.red),
            ),
            SizedBox(height: 10),
            Text(
              " \$ ${data.price}",
              style: TextStyle(fontSize: 25),
            ),
          ],
        ),
      ),
    );
  }

  _drawer() => Drawer(
        child: Column(
          children: [
            Container(
              height: 230,
              color: Colors.pink,
              child: Image.asset(
                "assets/images/drawer.jpg",
                fit: BoxFit.cover,
                width: double.infinity,
              ),
            ),
            Expanded(
              child: Container(
                padding: EdgeInsets.only(left: 15),
                color: Colors.white,
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
                    ListTile(
                      leading: Icon(
                        Icons.brightness_6_rounded,
                        color: Colors.black,
                      ),
                      title: Text(
                        "Theme Mode",
                        style: TextStyle(color: Colors.black),
                      ),
                      trailing: Switch(
                        value: _light,
                        onChanged: (value) => setState(
                          () => _light = value,
                        ),
                      ),
                    ),
                    Divider(
                      thickness: 0.8,
                      color: Colors.grey,
                    ),
                    Text(
                      "Communicate",
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
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
