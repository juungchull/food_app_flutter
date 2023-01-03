// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:flutter_app/src/model/food_list_detail.dart';
import 'package:flutter_app/src/screens/widgets/food_card_detail.dart';
import 'package:flutter_app/src/screens/widgets/head_title.dart';

class BurgerMax extends StatefulWidget {
  const BurgerMax({Key? key}) : super(key: key);

  @override
  State<BurgerMax> createState() => _BurgerMaxState();
}

class _BurgerMaxState extends State<BurgerMax> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          HeadTitle(),
          Expanded(
            //A RenderFlex overflowed by 1870 pixels on the bottom.에러를 해결해 줌. expanded~~ good!!
            child: ListView.builder(
              physics: BouncingScrollPhysics(),
              scrollDirection: Axis.vertical,
              shrinkWrap: true,
              itemCount: burgerCard.length,
              itemBuilder: (BuildContext context, int key) => Padding(
                padding: const EdgeInsets.only(bottom: 30),
                child: FoodCardDetail(),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
