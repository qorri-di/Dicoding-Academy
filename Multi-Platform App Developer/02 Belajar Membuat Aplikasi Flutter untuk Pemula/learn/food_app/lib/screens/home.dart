import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:food_app/screens/offers_details.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.grey[200],
      // floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      // floatingActionButton: FloatingActionButton(
      //   backgroundColor: Colors.greenAccent,
      //   child: Icon(Icons.shopping_cart),
      // ),
      bottomNavigationBar: Stack(
        children: <Widget>[
          Material(
            elevation: 2,
            borderRadius: BorderRadius.only(
              topRight: Radius.circular(40),
              topLeft: Radius.circular(40),
            ),
            child: new Container(
              width: screenWidth,
              height: 70,
              decoration: BoxDecoration(
                color: Colors.white70,
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(40),
                  topLeft: Radius.circular(40),
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.only(bottom: 15, top: 5),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  mainAxisSize: MainAxisSize.max,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Column(
                      children: <Widget>[
                        Container(
                          height: 30,
                          // color: Colors.blue,
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.end,
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: <Widget>[
                              IconButton(
                                icon: Icon(
                                  Icons.home,
                                  color: Colors.green,
                                  size: 22,
                                ),
                                onPressed: () {},
                              ),
                            ],
                          ),
                        ),
                        Container(
                          // color: Colors.yellow,
                          child: Row(
                            children: <Widget>[
                              Text(
                                'HOME',
                                style: TextStyle(
                                    fontSize: 12,
                                    color: Colors.green,
                                    fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    Column(
                      children: <Widget>[
                        Container(
                          height: 30,
                          // color: Colors.blue,
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.end,
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: <Widget>[
                              IconButton(
                                icon: Icon(
                                  Icons.format_list_bulleted,
                                  color: Colors.blueGrey,
                                  size: 20,
                                ),
                                onPressed: () {},
                              ),
                            ],
                          ),
                        ),
                        Container(
                          // color: Colors.yellow,
                          child: Row(
                            children: <Widget>[
                              Text(
                                'ORDERS',
                                style: TextStyle(
                                    fontSize: 10,
                                    color: Colors.blueGrey,
                                    fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Column(
                      children: <Widget>[
                        Container(
                          height: 30,
                          // color: Colors.blue,
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.end,
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: <Widget>[
                              IconButton(
                                icon: Icon(
                                  Icons.search,
                                  color: Colors.blueGrey,
                                  size: 20,
                                ),
                                onPressed: () {},
                              ),
                            ],
                          ),
                        ),
                        Container(
                          // color: Colors.yellow,
                          child: Row(
                            children: <Widget>[
                              Text(
                                'SEARCH',
                                style: TextStyle(
                                    fontSize: 10,
                                    color: Colors.blueGrey,
                                    fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    Column(
                      children: <Widget>[
                        Container(
                          height: 30,
                          // color: Colors.blue,
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Icon(
                                Icons.person,
                                color: Colors.blueGrey,
                                size: 20,
                              ),
                            ],
                          ),
                        ),
                        Container(
                          // color: Colors.yellow,
                          child: Row(
                            children: <Widget>[
                              Text(
                                'PROFILE',
                                style: TextStyle(
                                    fontSize: 10,
                                    color: Colors.blueGrey,
                                    fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
          Center(
              heightFactor: 0.3,
              child: GestureDetector(
                onTap: () {},
                child: Material(
                  elevation: 3,
                  borderRadius: new BorderRadius.circular(30.0),
                  child: ClipOval(
                    child: Container(
                      color: Colors.green,
                      height: 60.0, // height of the button
                      width: 60.0, // width of the button
                      child: Center(
                          child: Icon(
                        Icons.shopping_cart,
                        color: Colors.white,
                      )),
                    ),
                  ),
                ),
              )),
        ],
      ),
      body: new Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Row(
            children: <Widget>[
              Container(
                width: screenWidth,
                height: screenHeight * 0.4,
                decoration: BoxDecoration(
                  color: Colors.green,
                  borderRadius:
                      BorderRadius.only(bottomRight: Radius.circular(110)),
                ),
                child: Stack(
                  children: <Widget>[
                    Container(
                      width: screenWidth - 5,
                      height: (screenHeight * 0.4) - 5,
                      child: ClipRRect(
                        borderRadius: BorderRadius.only(
                            bottomRight: Radius.circular(110)),
                        child: Image.asset(
                          'images/download3.jpg',
                          // height: screenHeight * 0.40,
                          // width: screenWidth,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    SafeArea(
                      child: Padding(
                        padding: const EdgeInsets.only(
                            top: 50.0, left: 10, right: 10),
                        child: Container(
                          decoration: BoxDecoration(
                            color: Colors.blueGrey[50],
                            borderRadius: BorderRadius.all(
                              Radius.circular(5.0),
                            ),
                          ),
                          child: TextField(
                            cursorColor: Colors.greenAccent,
                            style: TextStyle(
                              fontSize: 15.0,
                              color: Colors.blueGrey[300],
                            ),
                            decoration: InputDecoration(
                              contentPadding: EdgeInsets.all(10.0),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(5.0),
                                borderSide: BorderSide(
                                  color: Colors.white,
                                ),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderSide:
                                    BorderSide(color: Colors.greenAccent),
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: Colors.white,
                                ),
                                borderRadius: BorderRadius.circular(5.0),
                              ),
                              hintText: "E.g: Rice, Tomates, Green Peas",
                              prefixIcon: Icon(
                                Icons.search,
                                color: Colors.blueGrey[300],
                              ),
                              hintStyle: TextStyle(
                                fontSize: 15.0,
                                color: Colors.blueGrey[300],
                              ),
                            ),
                            maxLines: 1,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
                height: 80,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  primary: false,
                  shrinkWrap: true,
                  itemBuilder: (context, counter) {
                    return Padding(
                      padding: EdgeInsets.all(2),
                      child: Padding(
                        padding: EdgeInsets.only(right: 30),
                        child: Material(
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                          elevation: 6,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: Container(
                                width: 80,
                                child: Column(
                                  children: <Widget>[
                                    Container(
                                      height: 50,
                                      child: Row(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        mainAxisSize: MainAxisSize.max,
                                        children: <Widget>[
                                          Image.asset(
                                            "images/bread.jpg",
                                            fit: BoxFit.fill,
                                          )
                                          // Icon(
                                          //   Icons.grain,
                                          //   color: Colors.greenAccent,
                                          // )
                                        ],
                                      ),
                                    ),
                                    Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      mainAxisSize: MainAxisSize.max,
                                      children: <Widget>[Text('Bread')],
                                    ),
                                  ],
                                )
                                //  Image.asset(
                                //   "images/download.jpeg",
                                //   height: 60,
                                //   width: 80,
                                //   fit: BoxFit.cover,
                                // ),
                                ),
                          ),
                        ),
                      ),
                    );
                  },
                  itemCount: 6,
                )),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              mainAxisSize: MainAxisSize.max,
              children: <Widget>[
                Text("Best Offers",
                    style: TextStyle(
                        fontSize: 22,
                        color: Colors.black,
                        fontWeight: FontWeight.bold)),
                // Text("22",
                //     style: TextStyle(
                //         fontSize: 12,
                //         color: Colors.greenAccent,
                //         fontWeight: FontWeight.bold))
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
                height: screenHeight * 0.45 - 80 - 70,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  primary: false,
                  shrinkWrap: true,
                  itemBuilder: (context, counter) {
                    return Padding(
                      padding: EdgeInsets.all(2),
                      child: Padding(
                        padding: EdgeInsets.only(right: 10),
                        child: Material(
                          borderRadius: BorderRadius.all(Radius.circular(20)),
                          elevation: 6,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(20),
                            child: Container(
                              width: 250,
                              height: screenHeight * 0.6 - 70 - 80,
                              child: Stack(
                                fit: StackFit.loose,
                                children: <Widget>[
                                  Container(
                                    // width: screenWidth - 5,
                                    height: screenHeight * 0.6 - 70 - 80,
                                    child: ClipRRect(
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(20)),
                                      child: Image.asset(
                                        'images/offer1.jpg',
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                  Container(
                                    color: Colors.black.withOpacity(0.5),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(10.0),
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisSize: MainAxisSize.max,
                                      children: <Widget>[
                                        SizedBox(
                                          height: 10,
                                        ),
                                        RichText(
                                          text: TextSpan(children: [
                                            TextSpan(
                                                text:
                                                    "A pack of Rice, Beans, Groundnut Oil",
                                                style: TextStyle(
                                                    fontSize: 20,
                                                    fontWeight:
                                                        FontWeight.normal)),
                                            // TextSpan(text: "\nWorld", style: TextStyle(fontSize: 20))
                                          ]),
                                        ),
                                        SizedBox(
                                          height: 10,
                                        ),
                                        RichText(
                                          text: TextSpan(children: [
                                            TextSpan(
                                                text: "₦1500",
                                                style: TextStyle(
                                                    fontSize: 22,
                                                    color: Colors.white,
                                                    fontWeight:
                                                        FontWeight.normal)),
                                          ]),
                                        ),
                                        SizedBox(
                                          height: 10,
                                        ),
                                        Align(
                                          alignment: Alignment.bottomLeft,
                                          child: Container(
                                            width: 110,
                                            child: InkWell(
                                              onTap: () {
                                                Navigator.push(
                                                    context,
                                                    PageRouteBuilder(
                                                        transitionDuration:
                                                            const Duration(
                                                                milliseconds:
                                                                    3500),
                                                        pageBuilder: (context,
                                                                _, __) =>
                                                            OffersDetailedScreen()));
                                              },
                                              child: Material(
                                                elevation: 3,
                                                color: Colors.white,
                                                borderRadius: BorderRadius.all(
                                                    Radius.circular(30)),
                                                child: Center(
                                                  child: Padding(
                                                    padding:
                                                        const EdgeInsets.all(
                                                            5.0),
                                                    child: Text(
                                                      "View More",
                                                      style: TextStyle(
                                                          color:
                                                              Colors.black87),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                        )
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                    );
                  },
                  itemCount: 6,
                )),
          ),
        ],
      ),
    );
  }
}
