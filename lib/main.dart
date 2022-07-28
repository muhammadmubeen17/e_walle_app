// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:e_walle/constants.dart';
import 'package:e_walle/add_button.dart';
import 'package:e_walle/headings.dart';
import 'package:e_walle/cards.dart';
import 'package:e_walle/servies.dart';
// import 'package:get/get.dart';

void main() {
  runApp(
    const ewalle(),
  );
}

class ewalle extends StatefulWidget {
  const ewalle({Key? key}) : super(key: key);

  @override
  State<ewalle> createState() => _ewalleState();
}

class _ewalleState extends State<ewalle> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: theme,
      home: Scaffold(
        appBar: AppBar(
          leading: Container(
            margin: EdgeInsets.only(left: 20),
            child: Image(
              image: AssetImage("images/e walle.png"),
            ),
          ),
          title: Text("e Walle"),
          actions: [
            IconButton(
              icon: Icon(Icons.lightbulb),
              onPressed: () {
                // Get.isDarkMode
                //     ? Get.changeTheme(
                //         ThemeData.light().copyWith(
                //           scaffoldBackgroundColor: white,
                //           appBarTheme: AppBarTheme(
                //             backgroundColor: white,
                //             foregroundColor: black,
                //             elevation: 0,
                //           ),
                //           textTheme: TextTheme(
                //             headline1: TextStyle(color: black),
                //             headline2: TextStyle(color: black),
                //             bodyText2: TextStyle(color: black),
                //             subtitle1: TextStyle(color: black),
                //           ),
                //           iconTheme: IconThemeData(
                //             color: Colors.black,
                //           ),
                //         ),
                //       )
                //     : Get.changeTheme(
                //         ThemeData.dark().copyWith(
                //           scaffoldBackgroundColor: dark_gray,
                //           textTheme: TextTheme(
                //             headline1: TextStyle(color: white),
                //             headline2: TextStyle(color: white),
                //             bodyText2: TextStyle(color: white),
                //             subtitle1: TextStyle(color: white),
                //           ),
                //           appBarTheme: AppBarTheme(
                //             backgroundColor: dark_gray,
                //             foregroundColor: white,
                //             elevation: 0,
                //           ),
                //           iconTheme: IconThemeData(
                //             color: Colors.white54,
                //           ),
                //         ),
                //       );
                setState(() {
                  if (theme == darktheme) {
                    theme = lighttheme;
                    light_gray = Color.fromARGB(255, 243, 244, 248);
                  } else {
                    theme = darktheme;
                    light_gray = Color.fromARGB(255, 35, 34, 49);
                  }
                });
                ;
              },
            ),
            Padding(
              padding: EdgeInsets.only(right: 20.0),
              child: GestureDetector(
                onTap: () {},
                child: Icon(
                  Icons.more_vert,
                  size: 26.0,
                ),
              ),
            ),
          ],
        ),
        body: Container(
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              children: [
                headings(
                  heading: 'Account Overview',
                ),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 20),
                  decoration: BoxDecoration(
                    color: light_gray,
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 20, vertical: 25),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "20,600",
                              style: TextStyle(
                                fontSize: 26,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            SizedBox(
                              height: 12,
                            ),
                            Text(
                              "Current Balance",
                              style: TextStyle(
                                fontSize: 16,
                              ),
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            Addicon(),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                headings(
                  heading: 'Send Money',
                  headicon: Icons.qr_code_scanner_outlined,
                ),
                Container(
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Padding(
                      padding: EdgeInsets.only(left: 20),
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 15),
                            child: Addicon(),
                          ),
                          cards(
                            cardicon: 'images/male-60.png',
                            label: 'Mike',
                          ),
                          cards(
                            cardicon: 'images/female-64.png',
                            label: 'Joshpeh',
                          ),
                          cards(
                            cardicon: 'images/male-60.png',
                            label: 'Mike',
                          ),
                          cards(
                            cardicon: 'images/female-64.png',
                            label: 'Joshpeh',
                          ),
                          cards(
                            cardicon: 'images/male-60.png',
                            label: 'Mike',
                          ),
                          SizedBox(
                            width: 15,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                headings(
                  heading: 'Services',
                  headicon: Icons.display_settings,
                ),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 20),
                  padding: EdgeInsets.fromLTRB(0, 0, 0, 15),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      services(
                        cardicon: Icons.attach_money,
                        label: 'Send Money',
                      ),
                      services(
                        cardicon: Icons.paid,
                        label: 'Recieve Money',
                      ),
                      services(
                        cardicon: Icons.phone_android,
                        label: 'Mobile Prepaid',
                      ),
                      services(
                        cardicon: Icons.bolt,
                        label: 'Electricity Bills',
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      services(
                        cardicon: Icons.local_offer,
                        label: 'Cashback Offer',
                      ),
                      services(
                        cardicon: Icons.movie_creation,
                        label: 'Movie Tickets',
                      ),
                      services(
                        cardicon: Icons.flight,
                        label: 'Flight Tickets',
                      ),
                      services(
                        cardicon: Icons.more_horiz,
                        label: 'More Options',
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 40,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
