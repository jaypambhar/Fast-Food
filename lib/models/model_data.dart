import 'package:login_app/models/food_items.dart';

class Data {
  static List<FoodItems> burgerFeed() => [
        FoodItems(
          list: 1,
          image: "assets/images/burger_item_1.png",
          foodName: "simple burger",
          decs: "Rice,flour,potatoes,etc",
          calories: "🔥 20 calories",
          price: 4.00,
          rate: 3.0,
          datails:
              "Burger Recipe is this dilicious evening snock\n during the winter and monsoons",
          time: "15-20 min",
        ),
        FoodItems(
          list: 2,
          image: "assets/images/burger_item_2.png",
          foodName: "veg burger ",
          decs: "Rice,flour,potatoes,etc",
          calories: "🔥 20 calories",
          price: 4.00,
          rate: 3.2,
          datails:
              "This Pesto recipe makes everything taste\ngreat,including veg burger Healthy Eating",
          time: "20-25 min",
        ),
        FoodItems(
          list: 3,
          image: "assets/images/burger_item_3.png",
          foodName: "cheese burger",
          decs: "Cabbage,butter,carrot,cheese",
          calories: "🔥 28 calories",
          price: 6.00,
          rate: 3.5,
          datails:
              "cheeseburger is hamburger topped with cheese.\nthe slice of cheese placed on top of the meat patty.",
          time: "25-30 min",
        ),
        FoodItems(
          list: 4,
          image: "assets/images/burger_item_4.png",
          foodName: "tikki burger",
          decs: "Potatopaties,vegan,green chillie ",
          calories: "🔥 30 calories",
          price: 6.30,
          rate: 4.0,
          datails:
              "Crisp potato patties in burger buns and\nthen topped with veggies\nand spiced with chutneys",
          time: "25-30 min",
        ),
        FoodItems(
          list: 5,
          image: "assets/images/burger_item_5.png",
          foodName: "burger&cold drinks",
          decs: "Chinese,sesame oil rockslat,cream",
          calories: "🔥 35 calories",
          price: 7.50,
          rate: 4.2,
          datails:
              "this plat in  fast food  like burger,\n french fries, cold drinks,ice creme",
          time: "30 min",
        ),
        FoodItems(
          list: 6,
          image: "assets/images/burger_item_6.png",
          foodName: "spicy cheese burger",
          decs: "Lemon paper,liquid smoke red chilli",
          calories: "🔥 40 calories",
          price: 7.50,
          rate: 4.5,
          datails:
              "A succulent beef patty layered with two slices\nof melty cheese spicy tomato sauce,\nThe NEW Spicy .",
          time: "30 min",
        ),
      ];
  static List<FoodItems> pizzaFeed() {
    List<FoodItems> list = [
      FoodItems(
        list: 1,
        image: "assets/images/pizza_item_1.png",
        foodName: "simple pizza",
        decs: "wheat flour,olive oil,Maple syrup",
        calories: "🔥 20 calories",
        price: 5.50,
        rate: 3.0,
        datails:
            "Burger Recipe is this dilicious evening snock\n during the winter and monsoons",
        time: "15-20 min",
      ),
      FoodItems(
        list: 2,
        image: "assets/images/pizza_item_2.png",
        foodName: "mar. pizza ",
        decs: "Whole wheat floar,cheese,garlic,sauce",
        calories: "🔥 25 calories",
        price: 5.70,
        rate: 3.2,
        datails:
            "This Pesto recipe makes everything taste\ngreat,including veg burger Healthy Eating",
        time: "20-25 min",
      ),
      FoodItems(
        list: 3,
        image: "assets/images/pizza_item_3.png",
        foodName: "cheese pizza",
        decs: "double cheese,sugar,pizza base",
        calories: "🔥 35 calories",
        price: 6.80,
        rate: 3.5,
        datails:
            "cheeseburger is hamburger topped with cheese.\nthe slice of cheese placed on top of the meat patty.",
        time: "25-30 min",
      ),
      FoodItems(list: 4,
        image: "assets/images/pizza_item_4.png",
        foodName: "fh. burger",
        decs: "chopped tomatoes,pizza sauce,etc",
        calories: "🔥 30 calories",
        price: 7.00,
        rate: 3.5,
        datails:
            "cheeseburger is hamburger topped with cheese.\nthe slice of cheese placed on top of the meat patty.",
        time: "25-30 min",
      ),
      FoodItems(list: 5,
        image: "assets/images/pizza_item_5.png",
        foodName: "popcorn pizza",
        decs: "popcorn,italian seasonings,etc",
        calories: "🔥 28 calories",
        price: 7.00,
        rate: 3.5,
        datails:
            "cheeseburger is hamburger topped with cheese.\nthe slice of cheese placed on top of the meat patty.",
        time: "25-30 min",
      ),
      FoodItems(list: 6,
        image: "assets/images/pizza_item_6.png",
        foodName: "spicy pizza",
        decs: "red chilli,tometo sauce,frenk red hots",
        calories: "🔥 40 calories",
        price: 8.50,
        rate: 3.5,
        datails:
            "cheeseburger is hamburger topped with cheese.\nthe slice of cheese placed on top of the meat patty.",
        time: "25-30 min",
      ),
    ];
    return list;
  }

  static List<FoodItems> stickFeed() {
    List<FoodItems> list = [
      FoodItems(list: 1,
        image: "assets/images/stick_item_1.png",
        foodName: "simple stick",
        decs: "potatoes,oil",
        calories: "🔥 5 calories",
        price: 2.80,
        rate: 3.5,
        datails:
            "Burger Recipe is this dilicious evening snock\n during the winter and monsoons",
        time: "15-20 min",
      ),
      FoodItems(list: 2,
        image: "assets/images/stick_item_2.png",
        foodName: "Digging stick",
        decs: "potatoes,ketchup,etc",
        calories: "🔥 8 calories",
        price: 3.10,
        rate: 4.0,
        datails:
            "Burger Recipe is this dilicious evening snock\n during the winter and monsoons",
        time: "15-20 min",
      ),
      FoodItems(list: 3,
        image: "assets/images/stick_item_3.png",
        foodName: "Swagger stick",
        decs: "potatoes,vinegar,sauce",
        calories: "🔥 10 calories",
        price: 4.00,
        rate: 3.0,
        datails:
            "Burger Recipe is this dilicious evening snock\n during the winter and monsoons",
        time: "15-20 min",
      ),
    ];
    return list;
  }

  static List<FoodItems> pastaFeed() {
    List<FoodItems> list = [
      FoodItems(list: 1,
        image: "assets/images/pasta_item_1.png",
        foodName: "Cheese Pasta",
        decs: "cheese,pasta,cherry,tomatoes",
        calories: "🔥 30 calories",
        price: 7.90,
        rate: 4.0,
        datails:
            "Burger Recipe is this dilicious evening snock\n during the winter and monsoons",
        time: "15-20 min",
      ),
      FoodItems(list: 2,
        image: "assets/images/pasta_item_2.png",
        foodName: "Fusilli",
        decs: "spring onion,cheese,dry mustard",
        calories: "🔥 40 calories",
        price: 8.50,
        rate: 4.5,
        datails:
            "Burger Recipe is this dilicious evening snock\n during the winter and monsoons",
        time: "15-20 min",
      ),
      FoodItems(list: 3,
        image: "assets/images/pasta_item_3.png",
        foodName: "Spicy pasta",
        decs: "spicy italian sausage red wine,etc",
        calories: "🔥 25 calories",
        price: 7.50,
        rate: 3.5,
        datails:
            "Burger Recipe is this dilicious evening snock\n during the winter and monsoons",
        time: "20-25 min",
      ),
      FoodItems(list: 4,
        image: "assets/images/pasta_item_4.png",
        foodName: "Sweet Pasta",
        decs: "cream cheese,butter,carrots,etc",
        calories: "🔥 15 calories",
        price: 5.00,
        rate: 3.0,
        datails:
            "Burger Recipe is this dilicious evening snock\n during the winter and monsoons",
        time: "20-25 min",
      ),
      FoodItems(list: 5,
        image: "assets/images/pasta_item_5.png",
        foodName: "nuddales pasta",
        decs: "Meat,cream,cheese,etc",
        calories: "🔥 20 calories",
        price: 5.50,
        rate: 3.0,
        datails:
            "Burger Recipe is this dilicious evening snock\n during the winter and monsoons",
        time: "15-20 min",
      ),
      FoodItems(list: 6,
        image: "assets/images/pasta_item_6.png",
        foodName: "Pasta",
        decs: "olive oil,tomatoes,onion,etc",
        calories: "🔥 10 calories",
        price: 4.00,
        rate: 3.0,
        datails:
            "Burger Recipe is this dilicious evening snock\n during the winter and monsoons",
        time: "10-15 min",
      ),
    ];
    return list;
  }

  static List<FoodItems> coldDrinksFeed() {
    List<FoodItems> list = [
      FoodItems(list: 1,
        image: "assets/images/coc_item_1.png",
        foodName: "juice",
        decs: "water,sugar,flavour,etc",
        calories: "🔥 no calories",
        price: 4.00,
        rate: 2.0,
        datails:
            "Burger Recipe is this dilicious evening snock\n during the winter and monsoons",
        time: "5 min",
      ),
      FoodItems(list: 2,
        image: "assets/images/coc_item_2.png",
        foodName: "7up",
        decs: "water,sugar,etc",
        calories: "🔥 no calories",
        price: 1.00,
        rate: 3.0,
        datails:
            "Burger Recipe is this dilicious evening snock\n during the winter and monsoons",
        time: "5 min",
      ),
      FoodItems(list: 3,
        image: "assets/images/coc_item_3.png",
        foodName: "Sprite",
        decs: "water,sugar,etc",
        calories: "🔥 no calories",
        price: 1.00,
        rate: 3.5,
        datails:
            "Burger Recipe is this dilicious evening snock\n during the winter and monsoons",
        time: "5 min",
      ),
      FoodItems(list: 4,
        image: "assets/images/coc_item_4.png",
        foodName: "Limca",
        decs: "water,sugar,etc",
        calories: "🔥 no calories",
        price: 1.00,
        rate: 3.0,
        datails:
            "Burger Recipe is this dilicious evening snock\n during the winter and monsoons",
        time: "5 min",
      ),
      FoodItems(list: 5,
        image: "assets/images/coc_item_5.png",
        foodName: "pepsi & cocacola",
        decs: "water,sugar,etc",
        calories: "🔥 no calories",
        price: 1.5,
        rate: 3.5,
        datails:
            "Burger Recipe is this dilicious evening snock\n during the winter and monsoons",
        time: "5 min",
      ),
    ];
    return list;
  }
}
