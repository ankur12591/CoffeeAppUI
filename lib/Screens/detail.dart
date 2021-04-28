import 'package:coffee_app/Widgets/overview.dart';
import 'package:coffee_app/Widgets/title_widget.dart';
import 'package:flutter/material.dart';

class DetailsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                //color: Colors.orange,
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height - 170,
                child: Stack(
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Expanded(
                          flex: 3,
                          child: Container(
                            width: 260,
                            height: 390,
                            decoration: BoxDecoration(
                                color: Color(0xffF5F0E6),
                                image: DecorationImage(
                                    image: AssetImage("assets/lines.png"))),
                          ),
                        ),
                        Expanded(
                          flex: 1,
                          child: Container(
                            padding: const EdgeInsets.symmetric(
                                vertical: 50, horizontal: 30),
                            //color: Colors.orange,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Icon(Icons.share_outlined),
                                SizedBox(height: 30),
                                Icon(Icons.favorite_border_rounded),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                    Positioned(
                      child: Container(
                        padding: const EdgeInsets.fromLTRB(30, 40, 0, 0),
                        height: MediaQuery.of(context).size.height - 300,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            GestureDetector(
                                onTap: () {
                                  Navigator.pop(context);
                                },
                                child: Icon(Icons.arrow_back_ios_rounded)),
                            SizedBox(
                              height: 20,
                            ),
                            Text(
                              "Indonesia",
                              style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.w400,
                                fontSize: 22,
                              ),
                            ),
                            SizedBox(
                              height: 8,
                            ),
                            Text(
                              "Kapal Air ",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 30),
                            ),
                            SizedBox(
                              height: 14,
                            ),
                            Container(
                              padding: EdgeInsets.all(8),
                              decoration: BoxDecoration(
                                  color: Color(0xffF5C168),
                                  borderRadius: BorderRadius.circular(5)),
                              child: Text(
                                "Robusta Gold",
                                style: TextStyle(color: Colors.white),
                              ),
                            ),
                            SizedBox(height: 25),
                            Text(
                              "Price",
                              style: TextStyle(
                                color: Colors.black45,
                                fontWeight: FontWeight.bold,
                                fontSize: 22,
                              ),
                            ),
                            SizedBox(
                              height: 7,
                            ),
                            Text(
                              "\$6.5",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 30),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Positioned(
                      child: Container(
                          height: 250,
                          width: 300,
                          child: Image.asset("assets/pocket-kapal.png")),
                      bottom: 0,
                      right: -40,
                    ),
                    Positioned(
                      child: Container(
                        padding:
                            EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                        decoration: BoxDecoration(
                            color: Color(0xffEC5E4F),
                            borderRadius: BorderRadius.circular(15)),
                        child: Row(
                          children: [
                            Text(
                              "Add",
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                              ),
                            ),
                            SizedBox(width: 15),
                            Image.asset("assets/add-to-cart.png"),
                          ],
                        ),
                      ),
                      bottom: 55,
                      left: 30,
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(30, 30, 40, 30),
                child: Column(
                  children: [
                    TitleWidget(
                      title: "Overview",
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      children: [
                        OverviewWidget(
                          title: "1100-1650m",
                          subtitle: "Altitude",
                          imagePath: "assets/subject1.png",
                        ),
                        SizedBox(
                          width: 33,
                        ),
                        OverviewWidget(
                          title: "Washed",
                          subtitle: "Processing",
                          imagePath: "assets/subject2.png",
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Row(
                      children: [
                        OverviewWidget(
                          title: "Parongpong",
                          subtitle: "Location",
                          imagePath: "assets/subject3.png",
                        ),
                        //
                        SizedBox(
                          width: 38,
                        ),
                        OverviewWidget(
                          title: "SLN9",
                          subtitle: "Varietal",
                          imagePath: "assets/subject5.png",
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 50,
                    ),
                    TitleWidget(
                      title: "Description",
                    ),
                    SizedBox(height: 20),
                    Text(
                      "This whole choffee bean has hazelnut, honey, and grapes taste siap lah kumaha maneh weh nya nu penting ieu kaeusian paragraphna contoh aja biar kalo panjang keliatan.",
                      textAlign: TextAlign.justify,
                      style: TextStyle(
                        fontSize: 16,
                        height: 1.6,
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
