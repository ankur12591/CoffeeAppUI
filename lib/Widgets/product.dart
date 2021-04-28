import 'package:flutter/material.dart';

class ProductWidget extends StatelessWidget {
  final String productImage;
  final String country;
  final String name;
  final String shape;
  final String price;
  final String heroTag;

  const ProductWidget({
    this.productImage,
    this.country,
    this.name,
    this.shape,
    this.price,
    this.heroTag,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
     // padding: EdgeInsets.symmetric(vertical: 30),
      width: double.infinity,
      height: 120,
      decoration: BoxDecoration(
          color: Color(0xffF5F0E6),
          borderRadius: BorderRadius.only(topRight: Radius.circular(30))),
      child: Stack(
        overflow: Overflow.visible,
        children: [
          Row(
            children: [

              Padding(
                padding: const EdgeInsets.fromLTRB(117, 16, 10, 14),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      country,
                      // style: TextStyle(fontWeight: FontWeight.bold, fontSize: 12),
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Text(
                      name,
                      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                    ),
                    Spacer(),
                    Text(
                      "\$$price",
                      style: TextStyle(
                        color: Color(0xffE48B6C),
                        fontWeight: FontWeight.bold,
                        fontSize: 22,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          Positioned(
            child: Container(
                height: 120,
                child: Image(image: AssetImage(shape))),
            left: 0,
            bottom: 0,
          ),
          Positioned(
            child: Image.asset("assets/Rectangle.png"),
            right: 0,
            bottom: 0,
          ),
          Positioned(
            child: Icon(Icons.add, color: Colors.white),
            right: 5,
            bottom: 5,
          ),
          Positioned(
            child: Hero(
              tag: heroTag,
              child: Container(
                margin: const EdgeInsets.fromLTRB(18,0,0,0 ),
                width: 100,
                height: 150,
                child: Image.asset(productImage),
              ),
            ),
            left: 0,
            bottom: 0,
          ),
        ],
      ),
    );
  }
}
