// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:flutter_app/src/model/food_list_detail.dart';

class FoodCardDetail extends StatelessWidget {
  final int index;
  final List food;
  const FoodCardDetail({
    Key? key,
    required this.index,
    required this.food,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 15),
      width: double.infinity,
      height: 200,
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            blurRadius: 4.0,
            spreadRadius: 2,
            // offset: Offset(5, 5),
          ),
        ],
        borderRadius: BorderRadius.circular(20),
        color: Colors.white,
      ),
      child: Row(
        children: [
          Container(
            width: 180,
            height: 200,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Colors.black,
              image: DecorationImage(
                image: NetworkImage(burgerCard[index].imageUrl),
                fit: BoxFit.cover,
              ),
            ),
          ),
          SizedBox(width: 10),
          Container(
            padding: EdgeInsets.only(
              left: 15,
              top: 10,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  burgerCard[index].title,
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 5),
                Text(
                  burgerCard[index].subTitle,
                  style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                      color: Colors.grey),
                ),
                SizedBox(height: 20),
                Text(
                  '${burgerCard[index].price}',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 10),
                Row(
                  children: [
                    Row(
                      children: [
                        Icon(
                          Icons.star,
                          size: 16,
                          color: Colors.orange,
                        ),
                        SizedBox(width: 5),
                        Text('${burgerCard[index].time}'),
                      ],
                    ),
                    SizedBox(width: 25),
                    Row(
                      children: [
                        Icon(
                          Icons.alarm_on,
                          size: 16,
                          color: Colors.green,
                        ),
                        SizedBox(width: 5),
                        Text('${burgerCard[index].arriveTime} min'),
                      ],
                    ),
                  ],
                ),
                SizedBox(height: 5),
                Container(
                  width: 150,
                  child: ElevatedButton(
                    onPressed: () {},
                    child: Text('Add'),
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(16),
                      ),
                      backgroundColor: Colors.orange[900],
                    ),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
