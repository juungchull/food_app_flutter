// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_app/src/widgets/add_button.dart';

class FoodListDetail {
  String imageUrl;
  String title;
  String subTitle;
  String price;
  double time;
  int arriveTime;
  Widget addButton;
  FoodListDetail({
    required this.imageUrl,
    required this.title,
    required this.subTitle,
    required this.price,
    required this.time,
    required this.arriveTime,
    required this.addButton,
  });
}

List<FoodListDetail> foodCard = [
  FoodListDetail(
    imageUrl:
        'https://plus.unsplash.com/premium_photo-1668618295303-ebcdca3ca3e4?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8aGFtYnVyZ2VyfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=500&q=60',
    title: 'Vecna Burgers\n with Cheese',
    subTitle: 'Gourmet Burgers',
    price: '\$17.97',
    time: 4.9,
    arriveTime: 30,
    addButton: AddButton(),
  ),
];
