import 'package:flutter/cupertino.dart';

class FoodItems {
  final String image;
  final String foodName;
  final String decs;
  final String calories;
  final double price;
  final double rate;
  final String datails;
  final String time;
  final num list;

  FoodItems({
    this.list,
    @required this.image,
    @required this.foodName,
    @required this.decs,
    @required this.calories,
    @required this.price,
    @required this.rate,
    @required this.datails,
    @required this.time,
  });
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is FoodItems &&
          runtimeType == other.runtimeType &&
          image == other.image &&
          foodName == other.foodName &&
          decs == other.decs &&
          calories == other.calories &&
          rate == other.rate &&
          datails == other.datails &&
          time == other.time &&
          price == other.price&&
          list==other.list;

  @override
  int get hashCode =>
  list.hashCode^
      image.hashCode ^
      foodName.hashCode ^
      decs.hashCode ^
      calories.hashCode ^
      rate.hashCode ^
      datails.hashCode ^
      time.hashCode ^
      price.hashCode;
}
