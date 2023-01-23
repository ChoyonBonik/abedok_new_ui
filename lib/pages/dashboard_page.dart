import 'dart:async';

import 'package:abedok_new_ui/pages/page_1.dart';
import 'package:abedok_new_ui/pages/page_2.dart';
import 'package:abedok_new_ui/pages/page_3.dart';
import 'package:abedok_new_ui/pages/page_4.dart';
import 'package:abedok_new_ui/pages/page_5.dart';
import 'package:abedok_new_ui/pages/page_6.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class DashboardPage extends StatefulWidget {
  const DashboardPage({Key? key}) : super(key: key);

  @override
  State<DashboardPage> createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {
  // late final PageController pageController;
  // ScrollController _scrollController = ScrollController();
  // int pageNo = 0;
  //
  // Timer? carasouelTmer;
  //
  // Timer getTimer() {
  //   return Timer.periodic(const Duration(seconds: 3), (timer) {
  //     if (pageNo == 4) {
  //       pageNo = 0;
  //     }
  //     pageController.animateToPage(
  //       pageNo,
  //       duration: const Duration(seconds: 1),
  //       curve: Curves.easeInOutCirc,
  //     );
  //     pageNo++;
  //   });
  // }
  // @override
  // void initState() {
  //   pageController = PageController(initialPage: 0, viewportFraction: 0.85);
  //   carasouelTmer = getTimer();
  //   _scrollController.addListener(() {
  //     if (_scrollController.position.userScrollDirection ==
  //         ScrollDirection.reverse) {
  //       showBtmAppBr = false;
  //       setState(() {});
  //     } else {
  //       showBtmAppBr = true;
  //       setState(() {});
  //     }
  //   });
  //   super.initState();
  // }
  // bool showBtmAppBr = true;
  // @override
  // void dispose() {
  //   pageController.dispose();
  //   super.dispose();
  // }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.pinkAccent,
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(50.0),
          child: Container(
            padding: EdgeInsets.only(left: 20, bottom: 20),
            child: Row(
              children: [
                Stack(
                  children: [
                    CircleAvatar(
                      radius: 30,
                      backgroundColor: Colors.white,
                      // child: Icon(Icons.person_outline_rounded),
                    ),
                    // Container(
                    //   height: 30,
                    //   width: 30,
                    //   decoration: const BoxDecoration(
                    //       color: Colors.amber,
                    //       borderRadius: BorderRadius.all(Radius.circular(20))),
                    //   child: const Icon(
                    //     Icons.edit,
                    //     color: Colors.deepPurple,
                    //     size: 20,
                    //   ),
                    // )
                  ],
                ),
                Container(
                  margin: EdgeInsets.only(
                    left: 10,
                    top: 15,
                  ),
                  child: Row(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Khairul Islam',
                            style: TextStyle(
                                fontFamily: 'Poppins',
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                                color: Colors.white),
                          ),
                          Row(
                            children: [
                              Text(
                                '00000000000',
                                style: TextStyle(
                                  fontFamily: 'Poppins',
                                  fontSize: 12,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              IconButton(
                                  onPressed: () {},
                                  icon: Icon(
                                    Icons.keyboard_arrow_down_sharp,
                                    color: Colors.white,
                                    size: 30,
                                  ))
                            ],
                          ),
                        ],
                      ),
                      SizedBox(
                        width: 50,
                      ),
                      Row(
                        children: [
                          IconButton(
                              onPressed: () {},
                              icon: Icon(
                                Icons.search,
                                size: 35,
                                color: Colors.white,
                              )),
                          IconButton(
                              onPressed: () {},
                              icon: Icon(
                                Icons.notifications_none_rounded,
                                color: Colors.white,
                                size: 35,
                              )),
                        ],
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.all(15),
              //padding: EdgeInsets.all(),
              child: Column(
                children: [
                  Row(
                    children: [
                      Expanded(
                        child: InkWell(
                          child: Container(
                            child: Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(15.0),
                                  child: Image.asset(
                                    'images/govt.png',
                                    height: 80,
                                    width: 80,
                                  ),
                                ),
                                SizedBox(
                                  height: 20,
                                ),
                                Text('Govt Job')
                              ],
                            ),
                            width: 111,
                            height: 166,
                            decoration: BoxDecoration(
                              boxShadow: [
                                BoxShadow(
                                  blurRadius: 1.0,
                                  color: Colors.grey,
                                ),
                              ],
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Page1()));
                          },
                        ),
                      ),
                      SizedBox(
                        width: 15,
                      ),
                      Expanded(
                        child: InkWell(
                          child: Container(
                            child: Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(15.0),
                                  child: Image.asset(
                                    'images/govt.png',
                                    height: 80,
                                    width: 80,
                                  ),
                                ),
                                SizedBox(
                                  height: 20,
                                ),
                                Text('Govt Job')
                              ],
                            ),
                            width: 111,
                            height: 166,
                            decoration: BoxDecoration(
                              boxShadow: [
                                BoxShadow(
                                  blurRadius: 1.0,
                                  color: Colors.grey,
                                ),
                              ],
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Page2()));
                          },
                        ),
                      ),
                      SizedBox(
                        width: 15,
                      ),
                      Expanded(
                        child: InkWell(
                          child: Container(
                            child: Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(15.0),
                                  child: Image.asset(
                                    'images/nid.png',
                                    height: 80,
                                    width: 80,
                                  ),
                                ),
                                SizedBox(
                                  height: 20,
                                ),
                                Text('Nid')
                              ],
                            ),
                            width: 111,
                            height: 166,
                            decoration: BoxDecoration(
                              boxShadow: [
                                BoxShadow(
                                  blurRadius: 1.0,
                                  color: Colors.grey,
                                ),
                              ],
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Page3()));
                          },
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: InkWell(
                          child: Container(
                            child: Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(15.0),
                                  child: Image.asset(
                                    'images/passport.png',
                                    height: 80,
                                    width: 80,
                                  ),
                                ),
                                SizedBox(
                                  height: 20,
                                ),
                                Text('Passport')
                              ],
                            ),
                            width: 111,
                            height: 166,
                            decoration: BoxDecoration(
                              boxShadow: [
                                BoxShadow(
                                  blurRadius: 1.0,
                                  color: Colors.grey,
                                ),
                              ],
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Page4()));
                          },
                        ),
                      ),
                      SizedBox(
                        width: 15,
                      ),
                      Expanded(
                        child: InkWell(
                          child: Container(
                            child: Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(15.0),
                                  child: Image.asset(
                                    'images/police.png',
                                    height: 80,
                                    width: 80,
                                  ),
                                ),
                                SizedBox(
                                  height: 20,
                                ),
                                Text('Police')
                              ],
                            ),
                            width: 111,
                            height: 166,
                            decoration: BoxDecoration(
                              boxShadow: [
                                BoxShadow(
                                  blurRadius: 1.0,
                                  color: Colors.grey,
                                ),
                              ],
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Page5()));
                          },
                        ),
                      ),
                      SizedBox(
                        width: 15,
                      ),
                      Expanded(
                        child: InkWell(
                          child: Container(
                            child: Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(15.0),
                                  child: Image.asset(
                                    'images/govt.png',
                                    height: 80,
                                    width: 80,
                                  ),
                                ),
                                SizedBox(
                                  height: 20,
                                ),
                                Text('Govt Job')
                              ],
                            ),
                            width: 111,
                            height: 166,
                            decoration: BoxDecoration(
                              boxShadow: [
                                BoxShadow(
                                  blurRadius: 1.0,
                                  color: Colors.grey,
                                ),
                              ],
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Page6()));
                          },
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            // SizedBox(
            //   height: 200,
            //   child: PageView.builder(
            //     controller: pageController,
            //     onPageChanged: (index) {
            //       pageNo = index;
            //       setState(() {});
            //     },
            //     itemBuilder: (_, index) {
            //       return AnimatedBuilder(
            //         animation: pageController,
            //         builder: (ctx, child) {
            //           return child!;
            //         },
            //         child: GestureDetector(
            //           onTap: () {
            //             ScaffoldMessenger.of(context).showSnackBar(
            //               SnackBar(
            //                 content:
            //                 Text("Hello you tapped at ${index + 1} "),
            //               ),
            //             );
            //           },
            //           onPanDown: (d) {
            //             carasouelTmer?.cancel();
            //             carasouelTmer = null;
            //           },
            //           onPanCancel: () {
            //             carasouelTmer = getTimer();
            //           },
            //           child: Container(
            //             margin: const EdgeInsets.only(
            //                 right: 8, left: 8, top: 24, bottom: 12),
            //             decoration: BoxDecoration(
            //               borderRadius: BorderRadius.circular(24.0),
            //               color: Colors.amberAccent,
            //             ),
            //           ),
            //         ),
            //       );
            //     },
            //     itemCount: 2,
            //   ),
            // ),,
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.only(right: 220),
              child: Text("Whats New?",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  )),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
                //margin: EdgeInsets.all(10),
                height: 200,
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      InkWell(
                        child: Container(
                          margin: EdgeInsets.all(10),
                          height: 200,
                          width: 300,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.blue,
                            image: DecorationImage(
                                image: AssetImage('images/1.png'),
                                fit: BoxFit.cover),
                          ),
                        ),
                        onTap: () {},
                      ),
                      InkWell(
                        child: Container(
                          margin: EdgeInsets.all(10),
                          height: 200,
                          width: 300,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.blue,
                            image: DecorationImage(
                                image: AssetImage('images/Work1.png'),
                                fit: BoxFit.cover),
                          ),
                        ),
                        onTap: () {},
                      ),
                      InkWell(
                        child: Container(
                          margin: EdgeInsets.all(10),
                          height: 200,
                          width: 300,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.blue,
                            image: DecorationImage(
                                image: AssetImage('images/1.png'),
                                fit: BoxFit.cover),
                          ),
                        ),
                        onTap: () {},
                      ),
                      InkWell(
                        child: Container(
                          margin: EdgeInsets.all(10),
                          height: 200,
                          width: 300,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.blue,
                            image: DecorationImage(
                                image: AssetImage('images/Work1.png'),
                                fit: BoxFit.cover),
                          ),
                        ),
                        onTap: () {},
                      ),
                    ],
                  ),
                )),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.only(right: 40),
              child: Text("Invite Friends & Get Discount",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  )),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
                //margin: EdgeInsets.all(10),
                height: 400,
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      InkWell(
                        child: Container(
                          margin: EdgeInsets.all(10),
                          padding: EdgeInsets.all(10),
                          //alignment: Alignment.topLeft,
                          height: 400,
                          width: 250,
                          child: Column(
                            children: [
                              Image(
                                  image: AssetImage('images/invite.png'),
                                  height: 80,
                                  width: 80),
                              SizedBox(
                                height: 20,
                              ),
                              Text(
                                'Invite On Ride                ',
                                style: TextStyle(fontSize: 20),
                              ),
                              SizedBox(
                                height: 05,
                              ),
                              Text(
                                'Share this code with two of your friends & family members. They can...',
                                style: TextStyle(
                                  fontSize: 15,
                                ),
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              Text(
                                'Share this code             ',
                                style: TextStyle(
                                  fontSize: 18,
                                ),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Container(
                                padding: EdgeInsets.all(5),
                                height: 40,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5),
                                  color: Colors.grey.shade100,
                                ),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text('F03ERO'),
                                    InkWell(
                                      child: Icon(Icons.copy),
                                      onTap: () {},
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  ElevatedButton(
                                      onPressed: () {},
                                      style: ElevatedButton.styleFrom(
                                          fixedSize: Size(100, 20),
                                          primary: Colors.white,
                                          onPrimary: Colors.pink,
                                          side: BorderSide(
                                            color: Colors.pink,
                                          )),
                                      child: Text(
                                        'Invite',
                                        style: TextStyle(
                                          color: Colors.pink,
                                        ),
                                      )),
                                  ElevatedButton(
                                      onPressed: () {},
                                      style: ElevatedButton.styleFrom(
                                        fixedSize: Size(100, 20),
                                        primary: Colors.pink,
                                        onPrimary: Colors.white,
                                      ),
                                      child: Text('Details')),
                                ],
                              )
                            ],
                          ),
                          decoration: BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey,
                                blurRadius: 1.0,
                              ),
                            ],
                            borderRadius: BorderRadius.circular(15),
                            color: Colors.white,

                            //image: DecorationImage(image: AssetImage('images/1.png'),),
                          ),
                        ),
                        onTap: () {},
                      ),
                      InkWell(
                        child: Container(
                          margin: EdgeInsets.all(10),
                          height: 400,
                          width: 250,
                          decoration: BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey,
                                blurRadius: 1.0,
                              ),
                            ],
                            borderRadius: BorderRadius.circular(15),
                            color: Colors.white,
                            //image: DecorationImage(image: AssetImage('images/Work1.png'),),
                          ),
                        ),
                        onTap: () {},
                      ),
                      InkWell(
                        child: Container(
                          margin: EdgeInsets.all(10),
                          height: 400,
                          width: 250,
                          decoration: BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey,
                                blurRadius: 1.0,
                              ),
                            ],
                            borderRadius: BorderRadius.circular(15),
                            color: Colors.white,
                            //image: DecorationImage(image: AssetImage('images/1.png'),),
                          ),
                        ),
                        onTap: () {},
                      ),
                      InkWell(
                        child: Container(
                          margin: EdgeInsets.all(10),
                          height: 400,
                          width: 250,
                          decoration: BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey,
                                blurRadius: 1.0,
                              ),
                            ],
                            borderRadius: BorderRadius.circular(15),
                            color: Colors.white,
                            //image: DecorationImage(image: AssetImage('images/Work1.png'),),
                          ),
                        ),
                        onTap: () {},
                      ),
                    ],
                  ),
                )),
          ],
        ),
      ),
    );
  }
}
