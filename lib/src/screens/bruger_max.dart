import 'package:flutter/material.dart';
import 'package:flutter_app/src/model/food_list_detail.dart';

class BrugerMax extends StatelessWidget {
  const BrugerMax({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: MediaQuery.of(context).size.height * 0.46,
            color: Colors.green,
            child: Stack(
              children: [
                Container(
                  height: MediaQuery.of(context).size.height * 0.35,
                  color: Colors.red,
                ),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 15, vertical: 50),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CircleAvatar(),
                      CircleAvatar(),
                    ],
                  ),
                ),
                Positioned(
                  left: 17,
                  bottom: 5,
                  child: Container(
                    width: MediaQuery.of(context).size.width * 0.92,
                    height: MediaQuery.of(context).size.height * 0.27,
                    decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(15),
                    ),
                  ),
                ),
                Positioned(
                  left: MediaQuery.of(context).size.width / 2 - 50,
                  top: MediaQuery.of(context).size.height * 0.14,
                  child: Container(
                    child: CircleAvatar(
                      radius: 50,
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 20),
          FoodCardDetail(),
        ],
      ),
    );
  }
}

class FoodCardDetail extends StatelessWidget {
  const FoodCardDetail({
    Key? key,
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
                image: NetworkImage(foodCard[0].imageUrl),
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
                  foodCard[0].title,
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 5),
                Text(
                  foodCard[0].subTitle,
                  style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                      color: Colors.grey),
                ),
                SizedBox(height: 20),
                Text(
                  '${foodCard[0].price}',
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
                        Text('${foodCard[0].time}'),
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
                        Text('${foodCard[0].arriveTime} min'),
                      ],
                    ),
                  ],
                ),
                SizedBox(height: 5),
                Container(
                  child: foodCard[0].addButton,
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
