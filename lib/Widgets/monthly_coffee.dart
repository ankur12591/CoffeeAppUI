import 'package:flutter/material.dart';

class MonthlyCoffeeWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 50, bottom: 30),
      child: Stack(
        overflow: Overflow.visible,
        children: [
          Container(
            padding: const EdgeInsets.all(8.0),
            //padding: EdgeInsets.only(top: 50, bottom: 30),
            width: double.infinity,
            height: 120,
            decoration: BoxDecoration(
              color:  Color(0xffF5F0E6),
              borderRadius: BorderRadius.only(topRight: Radius.circular(30))
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Monthly\nOnly",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
                ),
                Spacer(),
                Row(
                  children: [
                    Text("\$12.9",
                      style: TextStyle(color: Color(0xffE48B6C),
                        fontWeight: FontWeight.bold,
                        fontSize: 22,),
                    ),
                    Text(" /month",
                      style: TextStyle(color: Colors.grey),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Positioned(
            //width: 150,
            right: -5,
            top: -30,
            child: Container(
                width: 150,
                child: Image.asset("assets/box.png")),
          )
        ],
      ),
    );
  }
}
