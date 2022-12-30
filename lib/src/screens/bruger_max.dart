import 'package:flutter/material.dart';
import 'package:flutter_app/src/model/food_list_detail.dart';
import 'package:flutter_app/src/screens/widgets/food_card_detail.dart';
import 'package:flutter_app/src/screens/widgets/head_title.dart';

class BrugerMax extends StatelessWidget {
  const BrugerMax({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          HeadTitle(),
          ListView.builder(
            scrollDirection: Axis.vertical,
            shrinkWrap: true,
            itemCount: 10,
            itemBuilder: (BuildContext context, int index) => Padding(
              padding: const EdgeInsets.only(bottom: 30),
              child: FoodCardDetail(),
            ),
          ),
        ],
      ),
    );
  }
}
