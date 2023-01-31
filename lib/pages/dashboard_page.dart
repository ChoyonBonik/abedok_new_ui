import 'package:abedok_new_ui/pages/page_1.dart';
import 'package:abedok_new_ui/pages/page_2.dart';
import 'package:abedok_new_ui/pages/page_3.dart';
import 'package:abedok_new_ui/pages/page_4.dart';
import 'package:abedok_new_ui/pages/page_5.dart';
import 'package:abedok_new_ui/pages/page_6.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/services.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class DashboardPage extends StatefulWidget {
  const DashboardPage({Key? key}) : super(key: key);

  @override
  State<DashboardPage> createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.only(
          right: 20,
          left: 20,
        ),
        child: Align(
          heightFactor: 0.1,
          widthFactor: 0.1,
          alignment: Alignment(0.0, 2.0),
          child: ClipRRect(
              borderRadius: BorderRadius.circular(30),
              child:
              // BottomNavigationBar(
              //     items: [
              //       BottomNavigationBarItem(icon: Icon(Icons.home), label: 'home'),
              //       BottomNavigationBarItem(icon: Icon(Icons.home), label: 'home'),
              //       BottomNavigationBarItem(icon: Icon(Icons.home), label: 'home'),
              //     ],
              //   selectedItemColor: Colors.white,
              //   unselectedItemColor: Colors.grey,
              //   showSelectedLabels: true,
              //   showUnselectedLabels: false,
              //   backgroundColor: Colors.black,
              //   currentIndex: _pageIndex,
              //   onTap: (int index){
              //       setState(() {
              //         _pageIndex = index;
              //       });
              //   },
              // ),
              GNav(
                // tabShadow: [BoxShadow(
                //   color: Colors.grey
                // )],
                gap: 8,
                padding: EdgeInsets.all(10),
                tabMargin: EdgeInsets.all(10),
                backgroundColor: Colors.white,
                color: Colors.black,
                activeColor: Colors.black,
                tabBackgroundColor: Colors.grey.shade300,
                tabs: [
                  GButton(
                    icon: Icons.home,
                    text: 'home',
                  ),
                  GButton(
                    icon: Icons.home,
                    text: 'home',
                  ),
                  GButton(
                    icon: Icons.home,
                    text: 'home',
                  ),
                ],
              )
          ),
        ),
      ),
      // bottomNavigationBar: Padding(
      //   padding: EdgeInsets.only(
      //     bottom: 0,
      //     right: 20,
      //     left: 20,
      //   ),
      //   child: Align(
      //     heightFactor: 0.0,
      //     widthFactor: 0.0,
      //     alignment: Alignment(0.0, 2.0),
      //     child: ClipRRect(
      //         borderRadius: BorderRadius.circular(30),
      //         child:
      //         // BottomNavigationBar(
      //         //     items: [
      //         //       BottomNavigationBarItem(icon: Icon(Icons.home), label: 'home'),
      //         //       BottomNavigationBarItem(icon: Icon(Icons.home), label: 'home'),
      //         //       BottomNavigationBarItem(icon: Icon(Icons.home), label: 'home'),
      //         //     ],
      //         //   selectedItemColor: Colors.white,
      //         //   unselectedItemColor: Colors.grey,
      //         //   showSelectedLabels: true,
      //         //   showUnselectedLabels: false,
      //         //   backgroundColor: Colors.black,
      //         //   currentIndex: _pageIndex,
      //         //   onTap: (int index){
      //         //       setState(() {
      //         //         _pageIndex = index;
      //         //       });
      //         //   },
      //         // ),
      //         GNav(
      //           // tabShadow: [BoxShadow(
      //           //   color: Colors.grey
      //           // )],
      //           gap: 8,
      //           padding: EdgeInsets.all(10),
      //           tabMargin: EdgeInsets.all(10),
      //           backgroundColor: Colors.black,
      //           color: Colors.white,
      //           activeColor: Colors.black,
      //           tabBackgroundColor: Colors.grey.shade300,
      //           tabs: [
      //             GButton(
      //               icon: Icons.home,
      //               text: 'home',
      //             ),
      //             GButton(
      //               icon: Icons.home,
      //               text: 'home',
      //             ),
      //             GButton(
      //               icon: Icons.home,
      //               text: 'home',
      //             ),
      //           ],
      //         )
      //     ),
      //   ),
      // ),
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
              margin: EdgeInsets.all(10),
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
                                image: AssetImage('images/govt.png'),
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
                                image: AssetImage('images/nid.png'),
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
                                image: AssetImage('images/nid.png'),
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
                                image: AssetImage('images/nid.png'),
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
                                  image: AssetImage('images/police.png'),
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
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.only(right: 270),
              child: Text("Explore >",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.pink,
                  )),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Container(
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Column(
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(40),
                                  gradient: LinearGradient(colors: [
                                    Color(hexColor('#E90D65')),
                                    Color(hexColor('#AC0087')),
                                  ]),
                                ),
                                child: Icon(
                                  FontAwesomeIcons.globe,
                                  color: Colors.white,
                                  size: 30,
                                ),
                                height: 70,
                                width: 70,
                                //color: Colors.red,
                              ),
                              SizedBox(
                                height: 05,
                              ),
                              Text('Web')
                            ],
                          ),
                          SizedBox(
                            width: 50,
                          ),
                          Column(
                            children: [
                              Container(
                                child: Icon(
                                  FontAwesomeIcons.flag,
                                  color: Colors.white,
                                  size: 30,
                                ),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(40),
                                  gradient: LinearGradient(colors: [
                                    Color(hexColor('#E90D65')),
                                    Color(hexColor('#AC0087')),
                                  ]),
                                ),
                                height: 70,
                                width: 70,
                                //color: Colors.red,
                              ),
                              SizedBox(
                                height: 05,
                              ),
                              Text('Page')
                            ],
                          ),
                          SizedBox(
                            width: 50,
                          ),
                          Column(
                            children: [
                              Container(
                                child: Icon(
                                  FontAwesomeIcons.facebook,
                                  color: Colors.white,
                                  size: 30,
                                ),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(40),
                                  gradient: LinearGradient(colors: [
                                    Color(hexColor('#E90D65')),
                                    Color(hexColor('#AC0087')),
                                  ]),
                                ),
                                height: 70,
                                width: 70,
                                //color: Colors.red,
                              ),
                              SizedBox(
                                height: 05,
                              ),
                              Text('Facebook')
                            ],
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Column(
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(50),
                                  gradient: LinearGradient(colors: [
                                    Color(hexColor('#E90D65')),
                                    Color(hexColor('#AC0087')),
                                  ]),
                                ),
                                height: 70,
                                width: 70,
                                //color: Colors.red,
                                child: Icon(FontAwesomeIcons.linkedin,
                                    color: Colors.white, size: 30),
                              ),
                              SizedBox(
                                height: 05,
                              ),
                              Text('Linkedin')
                            ],
                          ),
                          SizedBox(
                            width: 50,
                          ),
                          Column(
                            children: [
                              Container(
                                child: Icon(FontAwesomeIcons.youtube,
                                    size: 30, color: Colors.white),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(50),
                                  gradient: LinearGradient(colors: [
                                    Color(hexColor('#E90D65')),
                                    Color(hexColor('#AC0087')),
                                  ]),
                                ),
                                height: 70,
                                width: 70,
                                //color: Colors.red,
                              ),
                              SizedBox(
                                height: 05,
                              ),
                              Text('YouTube')
                            ],
                          ),
                          SizedBox(
                            width: 50,
                          ),
                          Column(
                            children: [
                              Container(
                                child: Icon(FontAwesomeIcons.instagram,
                                    color: Colors.white, size: 30),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(50),
                                  gradient: LinearGradient(colors: [
                                    Color(hexColor('#E90D65')),
                                    Color(hexColor('#AC0087')),
                                  ]),
                                ),
                                height: 70,
                                width: 70,
                                //color: Colors.red,
                              ),
                              SizedBox(
                                height: 05,
                              ),
                              Text('Instagram')
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                // Column(
                //   children: [
                //     Row(
                //       children: [
                //         CircleAvatar(
                //           backgroundColor: Colors.red,
                //           radius: 30,
                //         ),
                //         CircleAvatar(
                //           backgroundColor: Colors.red,
                //           radius: 30,
                //         ),
                //         CircleAvatar(
                //           backgroundColor: Colors.red,
                //           radius: 30,
                //         ),
                //       ],
                //     ),
                //     Row(
                //       children: [
                //         CircleAvatar(
                //           backgroundColor: Colors.red,
                //           radius: 30,
                //         ),
                //         CircleAvatar(
                //           backgroundColor: Colors.red,
                //           radius: 30,
                //         ),
                //         CircleAvatar(
                //           backgroundColor: Colors.red,
                //           radius: 30,
                //         ),
                //       ],
                //     ),
                //   ],
                // ),
                height: 260,
                width: double.infinity,
                color: Colors.transparent,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 100),
              child: Text("Service you have Taken",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  )),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Row(
                    children: [
                      Container(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left: 180),
                                child: Text('10-12-2000'),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 25),
                                child: Row(
                                  children: [
                                    Image.asset(
                                      'images/police.png',
                                      cacheHeight: 60,
                                      cacheWidth: 60,
                                      alignment: Alignment.centerLeft,
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Text('Assistent Director',
                                              style: TextStyle(fontSize: 12)),
                                          Text('Minuestry of Railway',
                                              style: TextStyle(fontSize: 12)),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 25),
                                child: Row(
                                  //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(left: 05),
                                      child: Text('Grade-5'),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(left: 47),
                                      child: Text('500'),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(left: 47),
                                      child: ElevatedButton(
                                          onPressed: () {},
                                          child: Text('Applied')),
                                    )
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.white,
                          border: Border.all(color: Colors.grey.shade300),
                        ),
                        height: 200,
                        width: 300,
                      ),
                      SizedBox(
                        width: 15,
                      ),
                      Container(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left: 180),
                                child: Text('10-12-2000'),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 25),
                                child: Row(
                                  children: [
                                    Image.asset(
                                      'images/police.png',
                                      cacheHeight: 60,
                                      cacheWidth: 60,
                                      alignment: Alignment.centerLeft,
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Text('Assistent Director',
                                              style: TextStyle(fontSize: 12)),
                                          Text('Minuestry of Railway',
                                              style: TextStyle(fontSize: 12)),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 25),
                                child: Row(
                                  //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(left: 05),
                                      child: Text('Grade-5'),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(left: 47),
                                      child: Text('500'),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(left: 47),
                                      child: ElevatedButton(
                                          onPressed: () {},
                                          child: Text('Applied')),
                                    )
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.white,
                          border: Border.all(color: Colors.grey.shade300),
                        ),
                        height: 200,
                        width: 300,
                      ),
                      SizedBox(
                        width: 15,
                      ),
                      Container(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left: 180),
                                child: Text('10-12-2000'),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 25),
                                child: Row(
                                  children: [
                                    Image.asset(
                                      'images/police.png',
                                      cacheHeight: 60,
                                      cacheWidth: 60,
                                      alignment: Alignment.centerLeft,
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Text('Assistent Director',
                                              style: TextStyle(fontSize: 12)),
                                          Text('Minuestry of Railway',
                                              style: TextStyle(fontSize: 12)),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 25),
                                child: Row(
                                  //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(left: 05),
                                      child: Text('Grade-5'),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(left: 47),
                                      child: Text('500'),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(left: 47),
                                      child: ElevatedButton(
                                          onPressed: () {},
                                          child: Text('Applied')),
                                    )
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.white,
                          border: Border.all(color: Colors.grey.shade300),
                        ),
                        height: 200,
                        width: 300,
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Container(
              height: 100,
              width: double.infinity,
              color: Colors.transparent,
            )
          ],
        ),
      ),
    );
  }

  // List<IconData> listOfIcons = [
  //   Icons.home_rounded,
  //   Icons.favorite_rounded,
  //   Icons.settings_rounded,
  //   Icons.person_rounded,
  // ];
  //
  // List<String> listOfStrings = [
  //   'Home',
  //   'Favorite',
  //   'Settings',
  //   'Account',
  // ];
  int hexColor(String color) {
    String newColor = '0xff' + color;
    newColor = newColor.replaceAll('#', '');
    int finalColor = int.parse(newColor);
    return finalColor;
  }
}
