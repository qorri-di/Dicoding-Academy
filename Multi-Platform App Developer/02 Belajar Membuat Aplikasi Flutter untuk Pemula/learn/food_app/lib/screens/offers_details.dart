import 'package:flutter/material.dart';
import 'package:food_app/screens/home.dart';

class OffersDetailedScreen extends StatefulWidget {
  @override
  _OffersDetailedScreenState createState() => _OffersDetailedScreenState();
}

class _OffersDetailedScreenState extends State<OffersDetailedScreen> {
  String text =
      '''consectetur adipiscing elit,sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Ut enim ad minim veniam''';

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      // floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
      // floatingActionButton: FloatingActionButton(
      //   backgroundColor: Colors.green,
      //   child: Icon(
      //     Icons.shopping_cart,
      //     color: Colors.black,
      //   ),
      // ),
      // bottomNavigationBar: Material(
      //   elevation: 2,
      //   borderRadius: BorderRadius.only(
      //     topRight: Radius.circular(40),
      //     topLeft: Radius.circular(40),
      //   ),
      //   child: Container(
      //     width: screenWidth,
      //     height: 80,
      //     decoration: BoxDecoration(
      //       color: Colors.white70,
      //       borderRadius: BorderRadius.only(
      //         topRight: Radius.circular(40),
      //         topLeft: Radius.circular(40),
      //       ),
      //     ),
      //     child: Padding(
      //       padding: const EdgeInsets.all(20.0),
      //       child: Row(
      //         mainAxisAlignment: MainAxisAlignment.spaceBetween,
      //         children: <Widget>[
      //           Text(
      //             'Total ₦5000',
      //             style: TextStyle(fontSize: 30),
      //           ),
      //           Material(
      //             elevation: 3,
      //             color: Colors.green,
      //             borderRadius: BorderRadius.all(Radius.circular(30)),
      //             child: Center(
      //               child: Padding(
      //                 padding: const EdgeInsets.all(10.0),
      //                 child: Row(
      //                   children: <Widget>[
      //                     Text(
      //                       "Add to Cart",
      //                       style: TextStyle(color: Colors.black87),
      //                     ),
      //                     SizedBox(
      //                       width: 5,
      //                     ),
      //                     Icon(Icons.add_shopping_cart)
      //                   ],
      //                 ),
      //               ),
      //             ),
      //           ),
      //         ],
      //       ),
      //     ),
      //   ),
      // ),
      backgroundColor: Colors.grey[200],
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        mainAxisSize: MainAxisSize.max,
        children: <Widget>[
          Container(
            decoration: BoxDecoration(
              color: Colors.green,
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(10),
                  bottomRight: Radius.circular(10)),
            ),
            height: screenHeight * 0.4,
            width: screenWidth,
            child: Stack(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(0),
                  child: Container(
                    width: screenWidth,
                    height: (screenHeight * 0.4),
                    child: ClipRRect(
                      borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(10),
                          bottomRight: Radius.circular(10)),
                      child: Image.asset(
                        'images/offer1.jpg',
                        // height: screenHeight * 0.40,
                        // width: screenWidth,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
                Positioned(
                  top: 10,
                  left: 10,
                  child: SafeArea(
                      child: InkWell(
                          onTap: () {
                            Navigator.push(
                                context,
                                PageRouteBuilder(
                                    transitionDuration:
                                        const Duration(milliseconds: 3500),
                                    pageBuilder: (context, _, __) =>
                                        HomePage()));
                          },
                          child: Icon(Icons.arrow_back_ios))),
                ),
                Positioned(
                  right: 10,
                  bottom: 10,
                  child: Container(
                      decoration: BoxDecoration(
                          color: Colors.black,
                          borderRadius: BorderRadius.all(Radius.circular(30))),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Icon(Icons.favorite_border,
                            size: 35, color: Colors.white),
                      )),
                ),
              ],
            ),
          ),
          SafeArea(
            child: Container(
              height: screenHeight * 0.5,
              child: ListView(
                scrollDirection: Axis.vertical,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10.0),
                    child: Column(
                      children: <Widget>[
                        RichText(
                          text: TextSpan(children: [
                            TextSpan(
                                text: "MEGA JUMBO Rice and Beans Pack",
                                style: TextStyle(
                                    fontSize: 24,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black)),
                            // TextSpan(text: "\nWorld", style: TextStyle(fontSize: 20))
                          ]),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 20.0, vertical: 5),
                    child: RichText(
                      text: TextSpan(children: [
                        TextSpan(
                            text: "₦5,000",
                            style: TextStyle(
                                fontSize: 16,
                                color: Colors.green,
                                fontWeight: FontWeight.bold)),
                        TextSpan(text: "    "),
                        TextSpan(
                            text: "₦6,300",
                            style: TextStyle(
                                fontSize: 13,
                                color: Colors.black54,
                                // fontStyle: FontStyle.italic,
                                decoration: TextDecoration.lineThrough,
                                decorationThickness: 2.8,
                                decorationStyle: TextDecorationStyle.solid,
                                decorationColor: Colors.black26,
                                fontWeight: FontWeight.normal))
                      ]),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 15.0, vertical: 7),
                    child: Column(
                      children: <Widget>[
                        RichText(
                          text: TextSpan(children: [
                            TextSpan(
                                text: text,
                                style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.normal,
                                    color: Colors.black)),
                            // TextSpan(text: "\nWorld", style: TextStyle(fontSize: 20))
                          ]),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 20.0, vertical: 5),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        CircleAvatar(
                          radius: 20,
                          child: ClipRRect(
                            borderRadius: BorderRadius.all(Radius.circular(30)),
                            child: Image.asset(
                              "images/oil.jpg",
                              fit: BoxFit.contain,
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 6,
                        ),
                        Expanded(
                          child: RichText(
                            text: TextSpan(children: [
                              TextSpan(
                                  text: "Groundnut Oil",
                                  style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w800,
                                      color: Colors.black)),
                              TextSpan(
                                  text: "  (1 Gallon)",
                                  style: TextStyle(
                                      fontSize: 13, color: Colors.black54))
                            ]),
                          ),
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Column(
                          children: <Widget>[
                            Row(
                              children: <Widget>[
                                Text(
                                  "₦2500",
                                  style: TextStyle(
                                      fontSize: 14,
                                      color: Colors.green,
                                      fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                            Column(
                              children: <Widget>[
                                Text("₦3000",
                                    style: TextStyle(
                                        fontSize: 13,
                                        color: Colors.black54,
                                        // fontStyle: FontStyle.italic,
                                        decoration: TextDecoration.lineThrough,
                                        decorationThickness: 2.8,
                                        decorationStyle:
                                            TextDecorationStyle.solid,
                                        decorationColor: Colors.black26,
                                        fontWeight: FontWeight.normal)),
                              ],
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 20.0, vertical: 5),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        CircleAvatar(
                          radius: 20,
                          child: ClipRRect(
                            borderRadius: BorderRadius.all(Radius.circular(30)),
                            child: Image.asset(
                              "images/oil.jpg",
                              fit: BoxFit.contain,
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 6,
                        ),
                        Expanded(
                          child: RichText(
                            text: TextSpan(children: [
                              TextSpan(
                                  text: "Beans",
                                  style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w800,
                                      color: Colors.black)),
                              TextSpan(
                                  text: "  (1 Paint)",
                                  style: TextStyle(
                                      fontSize: 13, color: Colors.black54))
                            ]),
                          ),
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Column(
                          children: <Widget>[
                            Row(
                              children: <Widget>[
                                Text(
                                  "₦300",
                                  style: TextStyle(
                                      fontSize: 14,
                                      color: Colors.green,
                                      fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                            Column(
                              children: <Widget>[
                                Text("₦500",
                                    style: TextStyle(
                                        fontSize: 13,
                                        color: Colors.black54,
                                        // fontStyle: FontStyle.italic,
                                        decoration: TextDecoration.lineThrough,
                                        decorationThickness: 2.8,
                                        decorationStyle:
                                            TextDecorationStyle.solid,
                                        decorationColor: Colors.black26,
                                        fontWeight: FontWeight.normal)),
                              ],
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 20.0, vertical: 5),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        CircleAvatar(
                          radius: 20,
                          child: ClipRRect(
                            borderRadius: BorderRadius.all(Radius.circular(30)),
                            child: Image.asset(
                              "images/oil.jpg",
                              fit: BoxFit.contain,
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 6,
                        ),
                        Expanded(
                          child: RichText(
                            text: TextSpan(children: [
                              TextSpan(
                                  text: "Rice",
                                  style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w800,
                                      color: Colors.black)),
                              TextSpan(
                                  text: "  (4 Derica)",
                                  style: TextStyle(
                                      fontSize: 13, color: Colors.black54))
                            ]),
                          ),
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Column(
                          children: <Widget>[
                            Row(
                              children: <Widget>[
                                Text(
                                  "₦1500",
                                  style: TextStyle(
                                      fontSize: 14,
                                      color: Colors.green,
                                      fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                            Column(
                              children: <Widget>[
                                Text("₦2000",
                                    style: TextStyle(
                                        fontSize: 13,
                                        color: Colors.black54,
                                        // fontStyle: FontStyle.italic,
                                        decoration: TextDecoration.lineThrough,
                                        decorationThickness: 2.8,
                                        decorationStyle:
                                            TextDecorationStyle.solid,
                                        decorationColor: Colors.black26,
                                        fontWeight: FontWeight.normal)),
                              ],
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Material(
                      // elevation: 3,
                      color: Colors.green,
                      borderRadius: BorderRadius.all(Radius.circular(30)),
                      child: Center(
                        child: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Text(
                                "Add to Cart",
                                style: TextStyle(color: Colors.black87),
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Icon(Icons.add_shopping_cart)
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}

// TextSpan(
//     text: "N2000",
//     style: TextStyle(
//         fontSize: 24,
//         color: Colors.redAccent,
//         fontStyle: FontStyle.italic,
//         decoration: TextDecoration
//             .lineThrough,
//         decorationThickness: 2.8,
//         decorationStyle:
//             TextDecorationStyle
//                 .solid,
//         decorationColor:
//             Colors.black,
//         fontWeight:
//             FontWeight.bold)),
