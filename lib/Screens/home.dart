import 'package:coffee_app/Screens/detail.dart';
import 'package:coffee_app/Widgets/monthly_coffee.dart';
import 'package:coffee_app/Widgets/product.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;


    return SafeArea(
        child: Scaffold(
          backgroundColor: Colors.white,
            body: Row(
              children: [
                Expanded(
                  flex: 1,
                  child: Container(
                    //width: width * 0.233,
                    color: Color(0xffF5F0E6),
                    child: Column(
                      children: [
                        Container(
                          width: width,
                          height: height * 0.233,
                          color: Color(0xffF5C168),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "Ngo",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 25,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Text(
                                "Pi    ",
                                textAlign: TextAlign.start,
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 25,
                                ),
                              ),
                            ],
                          ),

                        ),
                        Container(
                          width: double.infinity,
                          height: height * 0.200,
                          child: Stack(
                            children: [
                              Center(
                                child: RotatedBox(
                                  quarterTurns: 3,
                                  child: Text(
                                    "Top Pick",
                                    style: TextStyle(
                                        fontSize: 17, fontWeight: FontWeight.bold),
                                  ),
                                ),
                              ),
                              Align(
                                alignment: Alignment.centerRight,
                                child: Container(
                                  width: 5,
                                  height: 30,
                                  decoration: BoxDecoration(
                                    color: Color(0xffF5C168),
                                    borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(10),
                                        bottomLeft: Radius.circular(10)),
                                  ),
                                ),
                              ),
                            ],
                          ),

                        ),
                        Container(
                          width: double.infinity,
                          height: height * 0.150,
                          child: Center(
                            child: RotatedBox(
                              quarterTurns: 3,
                              child: Text(
                                "Trending",
                                style:
                                TextStyle(fontSize: 17, color: Colors.black54),
                              ),
                            ),
                          ),
                        ),
                        Container(
                          width: double.infinity,
                          height: height * 0.180,
                          child: Center(
                            child: RotatedBox(
                              quarterTurns: 3,
                              child: Text(
                                "Latest",
                                style:
                                TextStyle(fontSize: 17, color: Colors.black54),
                              ),
                            ),
                          ),
                        ),
                        Spacer(),
                        Container(
                          padding: EdgeInsets.only(bottom: 20),
                          //margin: EdgeInsets.only(top: 50),
                          child: Center(
                            child: Container(
                              //alignment: Alignment.bottomCenter,
                              padding: EdgeInsets.all(10),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15),
                                  color: Colors.white),
                              child: Image(
                                image: AssetImage("assets/store.png"),
                                width: 30,
                                height: 30,
                              ),
                            ),
                          ),
                        ),




                      ],
                    ),
                  ),
                ),

                Expanded(
                  flex: 3,
                    child: SingleChildScrollView(
                      child: Container(

                        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 60),
                        //margin: EdgeInsets.symmetric(horizontal: 20, vertical: 40),
                        child: Column(
                          children: [
                            Row(
                              children: [
                                Text(
                                  "Coffee",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold, fontSize: 30),
                                ),
                                Spacer(),
                                Image.asset("assets/search.png"),
                                SizedBox(width: 15),
                                Image.asset("assets/filter.png"),
                              ],
                            ),
                            MonthlyCoffeeWidget(),
                            SizedBox(height: 30,),
                            ProductWidget(
                              price: "5.2",
                              country: "Lembank",
                              name: "Pine Blend",
                              productImage: "assets/pocket 1.png",
                              heroTag: "pine",
                              shape: "assets/shapes1.png",
                            ),
                            SizedBox(height: 60,),
                            GestureDetector(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => DetailsPage(),
                                    ));
                              },
                              child: ProductWidget(
                                price: "6.8",
                                country: "Indonesia",
                                name: "Kapal Air",
                                shape: "assets/shapes2.png",
                                heroTag: "kapal",
                                productImage: "assets/pocket 2.png",
                              ),
                            ),
                            SizedBox(height: 60,),
                            ProductWidget(
                              price: "5.7",
                              country: "Japan",
                              name: "JCO Original",
                              shape: "assets/shapes3.png",
                              heroTag: "ico",
                              productImage: "assets/pocket 3.png",
                            ),
                            //SizedBox(height: 60,),
                          ],
                        ),
                      ),
                    ),
                )
              ],
            )
        )
    );
  }
}

