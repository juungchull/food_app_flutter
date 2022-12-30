import 'package:flutter/material.dart';
import 'package:flutter_app/src/model/food_list_detail.dart';

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
                    image: NetworkImage(burgerCard[2].imageUrl),
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
