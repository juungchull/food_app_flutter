// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/cupertino.dart';
import 'package:flutter_app/src/screens/bakery.dart';
import 'package:flutter_app/src/screens/bruger_max.dart';
import 'package:flutter_app/src/screens/brunch.dart';
import 'package:flutter_app/src/screens/hamburger.dart';
import 'package:flutter_app/src/screens/salmon.dart';
import 'package:flutter_app/src/screens/taco.dart';

class Card {
  int sale;
  String foodName;
  String foodTime;
  String foodStar;
  String url;
  Widget route;
  Card({
    required this.sale,
    required this.foodName,
    required this.foodTime,
    required this.foodStar,
    required this.url,
    required this.route,
  });
}

List<Card> cardDetail = [
  Card(
    route: BrugerMax(),
    url:
        'https://images.unsplash.com/photo-1484723091739-30a097e8f929?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTZ8fGZvb2R8ZW58MHx8MHx8&auto=format&fit=crop&w=500&q=60',
    sale: 10,
    foodName: 'Burger Max',
    foodTime: '23min',
    foodStar: '4.9',
  ),
  Card(
      route: Bakery(),
      url:
          'https://images.unsplash.com/photo-1484980972926-edee96e0960d?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mjh8fGZvb2R8ZW58MHx8MHx8&auto=format&fit=crop&w=500&q=60',
      sale: 20,
      foodName: 'Mamma\'s Bakery',
      foodTime: '31min',
      foodStar: '4.3'),
  Card(
    route: Brunch(),
    url:
        'https://images.unsplash.com/photo-1478145046317-39f10e56b5e9?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MjZ8fGZvb2R8ZW58MHx8MHx8&auto=format&fit=crop&w=500&q=60',
    sale: 10,
    foodName: 'Burger Max',
    foodTime: '25min',
    foodStar: '4.9',
  ),
  Card(
    route: Hamburger(),
    url:
        'https://images.unsplash.com/photo-1481070555726-e2fe8357725c?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MzV8fGZvb2R8ZW58MHx8MHx8&auto=format&fit=crop&w=500&q=60',
    sale: 20,
    foodName: 'Mamma\'s Bakery',
    foodTime: '21min',
    foodStar: '4.3',
  ),
  Card(
    route: Taco(),
    url:
        'https://images.unsplash.com/photo-1565299585323-38d6b0865b47?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NDF8fGZvb2R8ZW58MHx8MHx8&auto=format&fit=crop&w=500&q=60',
    sale: 10,
    foodName: 'Burger Max',
    foodTime: '21min',
    foodStar: '4.9',
  ),
  Card(
    route: Salmon(),
    url:
        'https://images.unsplash.com/photo-1574484284002-952d92456975?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NDR8fGZvb2R8ZW58MHx8MHx8&auto=format&fit=crop&w=500&q=60',
    sale: 20,
    foodName: 'Mamma\'s Bakery',
    foodTime: '21min',
    foodStar: '4.3',
  ),
];
