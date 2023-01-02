// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:flutter_app/src/model/bakery_detail.dart';
import 'package:flutter_app/src/model/food_list_detail.dart';

class Bakery extends StatelessWidget {
  const Bakery({
    Key? key,
  }) : super(key: key);

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
                child: BakerCardDetail(
                  index: key,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class HeadTitle extends StatelessWidget {
  const HeadTitle({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.46,
      color: Colors.green,
      child: Stack(
        children: [
          Container(
            height: MediaQuery.of(context).size.height * 0.35,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: NetworkImage(bakeryCard[0].imageUrl),
                    fit: BoxFit.cover),
                color: Colors.red,
                borderRadius: BorderRadius.circular(10)),
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 15, vertical: 50),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      border: Border.all(
                        width: 2,
                        color: Colors.white,
                      ),
                      shape: BoxShape.circle,
                    ),
                    child: CircleAvatar(
                      backgroundColor: Colors.transparent.withOpacity(0.1),
                      child: Icon(
                        Icons.keyboard_arrow_left_outlined,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    border: Border.all(
                      width: 2,
                      color: Colors.white,
                    ),
                    shape: BoxShape.circle,
                  ),
                  child: CircleAvatar(
                    backgroundColor: Colors.transparent.withOpacity(0.1),
                    child: Icon(
                      Icons.search_outlined,
                      color: Colors.white,
                    ),
                  ),
                ),
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
    );
  }
}

class BakerCardDetail extends StatelessWidget {
  final int index;
  const BakerCardDetail({
    Key? key,
    required this.index,
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
                image: NetworkImage(bakeryCard[index].imageUrl),
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
                  '${bakeryCard[index].price}',
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
                        Text('${bakeryCard[index].time}'),
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
                        Text('${bakeryCard[index].arriveTime} min'),
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
