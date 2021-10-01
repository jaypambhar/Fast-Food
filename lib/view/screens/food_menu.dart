import 'package:flutter/material.dart';

import 'home_page.dart';

class FoodMenu extends StatelessWidget {
  const FoodMenu({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.local_mall_outlined),
      ),
      bottomNavigationBar: Container(
        child: BottomAppBar(
          shape: CircularNotchedRectangle(),
          child: Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              IconButton(
                  icon: Icon(Icons.home_outlined),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => HomePage(),
                      ),
                    );
                  }),
              IconButton(
                  icon: Icon(Icons.menu_book_outlined),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => FoodMenu(),
                      ),
                    );
                  }),
              SizedBox(width: 10),
              IconButton(icon: Icon(Icons.bookmark_outline), onPressed: () {}),
              IconButton(
                  icon: Icon(Icons.notifications_none_outlined),
                  onPressed: () {}),
            ],
          ),
        ),
      ),
      body: SafeArea(
        child: ListView(
          children: [
            ListTile(
              title: Text("1. Margherita Pizza....."),
              subtitle: Text("   \$ 9.50"),
            ),
            ListTile(
              title: Text("2. Double Cheese Margherita....."),
              subtitle: Text("   \$ 12.50"),
            ),
            ListTile(
              title: Text("3. Peppy Paneer....."),
              subtitle: Text("   \$ 13.00"),
            ),
            ListTile(
              title: Text("4. Mexican Green Wave....."),
              subtitle: Text("   \$ 13.50"),
            ),
            ListTile(
              title: Text("5. Deluxe Veggie....."),
              subtitle: Text("   \$ 13.50"),
            ),
            ListTile(
              title: Text("6. Cheese  N Corn....."),
              subtitle: Text("   \$ 13.50"),
            ),
            ListTile(
              title: Text("7. Paneer Makhani....."),
              subtitle: Text("   \$ 14.50"),
            ),
            ListTile(
              title: Text("8. Luger Burger....."),
              subtitle: Text("   \$ 4.50"),
            ),
            ListTile(
              title: Text("9. Whiskey King Burger ....."),
              subtitle: Text("   \$ 5.50"),
            ),
            ListTile(
              title: Text("10. Cheese Burger....."),
              subtitle: Text("   \$ 6.00"),
            ),
            ListTile(
              title: Text("11. Pasta....."),
              subtitle: Text("   \$ 6.50"),
            ),
            ListTile(
              title: Text("12. CocaCola Cold Drinks....."),
              subtitle: Text("   \$ 2.50"),
            ),
            ListTile(
              title: Text("13. Sprite....."),
              subtitle: Text("   \$ 1.50"),
            ),
            ListTile(
              title: Text("14. Thumbs up ....."),
              subtitle: Text("   \$ 2.50"),
            ),
          ],
        ),
      ),
    );
  }
}
