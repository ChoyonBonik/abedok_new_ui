import 'package:abedok_new_ui/pages/govt_job.dart';
import 'package:abedok_new_ui/pages/police_clear.dart';
import 'package:abedok_new_ui/pages/nid_clear.dart';
import 'package:abedok_new_ui/pages/passport.dart';
import 'package:abedok_new_ui/pages/general_diary.dart';
import 'package:abedok_new_ui/pages/admission.dart';
import 'package:flutter/material.dart';
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
      //BottomNavigationBar........................................................
      bottomNavigationBar: Padding(
        padding: EdgeInsets.only(
          right: 30,
          left: 30,
        ),
        child: Align(
          widthFactor: 0.0,
          heightFactor: 0.0,
          alignment: Alignment(1.0, 2.0),
          child: ClipRRect(
              borderRadius: BorderRadius.circular(30),
              child: GNav(
                onTabChange: (value) {
                  print(value);
                },
                tabBackgroundGradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [Color(0xffe90d65), Color(0xffac0087)],
                ),
                gap: 8,
                padding: EdgeInsets.all(10),
                tabMargin: EdgeInsets.all(10),
                backgroundColor: Colors.grey.shade200,
                color: Colors.grey.shade800,
                activeColor: Colors.white,
                tabBackgroundColor: Colors.grey.shade300,
                tabs: [
                  GButton(
                    icon: Icons.history,
                    text: 'History',
                  ),
                  GButton(
                    icon: Icons.home,
                    text: 'Home',
                  ),
                  GButton(
                    icon: Icons.settings,
                    text: 'Settings',
                  ),
                ],
              )),
        ),
      ),
      //AppBar................................................................
      appBar: AppBar(
        flexibleSpace: Container(
          decoration: BoxDecoration(
            gradient: const LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [Color(0xffe90d65), Color(0xffac0087)],
            ),
          ),
        ),
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(40.0),
          child: Container(
            padding: EdgeInsets.only(left: 20, bottom: 15),
            child: Row(
              children: [
                Stack(
                  children: [
                    CircleAvatar(
                      radius: 30,
                      backgroundColor: Colors.white,
                      backgroundImage:
                          AssetImage('images/appbar_circle_image.png'),
                    ),
                  ],
                ),
                Container(
                  margin: EdgeInsets.only(
                    left: 10,
                    top: 10,
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
                                '01746586222',
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
                                size: 30,
                                color: Colors.white,
                              )),
                          IconButton(
                              onPressed: () {},
                              icon: Icon(
                                Icons.notifications_none_rounded,
                                color: Colors.white,
                                size: 30,
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
            //Services...........................................................
            Container(
              margin: EdgeInsets.all(15),
              child: Column(
                children: [
                  Row(
                    children: [
                      Expanded(
                        child: InkWell(
                          child: Container(
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
                            child: Column(
                              children: [
                                Padding(
                                  padding: EdgeInsets.all(15.0),
                                  child: Image.asset(
                                    'images/govt.png',
                                    height: 80,
                                    width: 80,
                                  ),
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Text(
                                  'Government Job',
                                  maxLines: 2,
                                  textAlign: TextAlign.center,
                                )
                              ],
                            ),
                          ),
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => GovtJob()));
                          },
                        ),
                      ),
                      SizedBox(
                        width: 15,
                      ),
                      Expanded(
                        child: InkWell(
                          child: Container(
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
                            child: Column(
                              children: [
                                Padding(
                                  padding: EdgeInsets.all(15.0),
                                  child: Image.asset(
                                    'images/admission.png',
                                    height: 80,
                                    width: 80,
                                  ),
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Text(
                                  'University Admission',
                                  maxLines: 2,
                                  textAlign: TextAlign.center,
                                )
                              ],
                            ),
                          ),
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => PoliceClear()));
                          },
                        ),
                      ),
                      SizedBox(
                        width: 15,
                      ),
                      Expanded(
                        child: InkWell(
                          child: Container(
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
                            child: Column(
                              children: [
                                Padding(
                                  padding: EdgeInsets.all(15.0),
                                  child: Image.asset(
                                    'images/police.png',
                                    height: 80,
                                    width: 80,
                                  ),
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Text(
                                  'Police Clearence',
                                  maxLines: 2,
                                  textAlign: TextAlign.center,
                                )
                              ],
                            ),
                          ),
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => NidClear()));
                          },
                        ),
                      ),
                    ],
                  ),
                  //others pages..........
                  // Row(
                  //   children: [
                  //     Expanded(
                  //       child: InkWell(
                  //         child: Container(
                  //           width: 111,
                  //           height: 166,
                  //           decoration: BoxDecoration(
                  //             boxShadow: [
                  //               BoxShadow(
                  //                 blurRadius: 1.0,
                  //                 color: Colors.grey,
                  //               ),
                  //             ],
                  //             color: Colors.white,
                  //             borderRadius: BorderRadius.circular(10),
                  //           ),
                  //           child: Column(
                  //             children: [
                  //               Padding(
                  //                 padding: EdgeInsets.all(15.0),
                  //                 child: Image.asset(
                  //                   'images/passport.png',
                  //                   height: 80,
                  //                   width: 80,
                  //                 ),
                  //               ),
                  //               SizedBox(
                  //                 height: 20,
                  //               ),
                  //               Text('Passport')
                  //             ],
                  //           ),
                  //         ),
                  //         onTap: () {
                  //           Navigator.push(
                  //               context,
                  //               MaterialPageRoute(
                  //                   builder: (context) => Passport()));
                  //         },
                  //       ),
                  //     ),
                  //     SizedBox(
                  //       width: 15,
                  //     ),
                  //     Expanded(
                  //       child: InkWell(
                  //         child: Container(
                  //           width: 111,
                  //           height: 166,
                  //           decoration: BoxDecoration(
                  //             boxShadow: [
                  //               BoxShadow(
                  //                 blurRadius: 1.0,
                  //                 color: Colors.grey,
                  //               ),
                  //             ],
                  //             color: Colors.white,
                  //             borderRadius: BorderRadius.circular(10),
                  //           ),
                  //           child: Column(
                  //             children: [
                  //               Padding(
                  //                 padding: EdgeInsets.all(15.0),
                  //                 child: Image.asset(
                  //                   'images/police.png',
                  //                   height: 80,
                  //                   width: 80,
                  //                 ),
                  //               ),
                  //               SizedBox(
                  //                 height: 20,
                  //               ),
                  //               Text(
                  //                 'General Diary',
                  //                 maxLines: 2,
                  //                 textAlign: TextAlign.center,
                  //               )
                  //             ],
                  //           ),
                  //         ),
                  //         onTap: () {
                  //           Navigator.push(
                  //               context,
                  //               MaterialPageRoute(
                  //                   builder: (context) => GeneralDiary()));
                  //         },
                  //       ),
                  //     ),
                  //     SizedBox(
                  //       width: 15,
                  //     ),
                  //     Expanded(
                  //       child: InkWell(
                  //         child: Container(
                  //           width: 111,
                  //           height: 166,
                  //           decoration: BoxDecoration(
                  //             boxShadow: [
                  //               BoxShadow(
                  //                 blurRadius: 1.0,
                  //                 color: Colors.grey,
                  //               ),
                  //             ],
                  //             color: Colors.white,
                  //             borderRadius: BorderRadius.circular(10),
                  //           ),
                  //           child: Column(
                  //             children: [
                  //               Padding(
                  //                 padding: EdgeInsets.all(15.0),
                  //                 child: Image.asset(
                  //                   'images/admission.png',
                  //                   height: 80,
                  //                   width: 80,
                  //                 ),
                  //               ),
                  //               SizedBox(
                  //                 height: 20,
                  //               ),
                  //               Text('Admission')
                  //             ],
                  //           ),
                  //         ),
                  //         onTap: () {
                  //           Navigator.push(
                  //               context,
                  //               MaterialPageRoute(
                  //                   builder: (context) => admission()));
                  //         },
                  //       ),
                  //     ),
                  //   ],
                  // ),
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            //Whats New?.......................................................
            Padding(
              padding: EdgeInsets.only(right: 220),
              child: Text("Whats New?",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  )),
            ),
            SizedBox(
              height: 10,
            ),
            SizedBox(
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
                                image: AssetImage('images/whats_new1.jpg'),
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
                                image: AssetImage('images/whats_new2.jpg'),
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
                                image: AssetImage('images/whats_new3.jpg'),
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
                                image: AssetImage('images/whats_new4.jpg'),
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
            //invite friends...............
            // Padding(
            //   padding: EdgeInsets.only(right: 40),
            //   child: Text("Invite Friends & Get Discount",
            //       style: TextStyle(
            //         fontSize: 20,
            //         fontWeight: FontWeight.bold,
            //       )),
            // ),
            // SizedBox(
            //   height: 10,
            // ),
            // SizedBox(
            //     height: 400,
            //     child: SingleChildScrollView(
            //       scrollDirection: Axis.horizontal,
            //       child: Row(
            //         children: [
            //           InkWell(
            //             child: Container(
            //               margin: EdgeInsets.all(10),
            //               padding: EdgeInsets.all(10),
            //               height: 400,
            //               width: 250,
            //               decoration: BoxDecoration(
            //                 boxShadow: [
            //                   BoxShadow(
            //                     color: Colors.grey,
            //                     blurRadius: 1.0,
            //                   ),
            //                 ],
            //                 borderRadius: BorderRadius.circular(15),
            //                 color: Colors.white,
            //               ),
            //               child: Column(
            //                 children: [
            //                   Image(
            //                       image: AssetImage('images/invite.png'),
            //                       height: 80,
            //                       width: 80),
            //                   SizedBox(
            //                     height: 20,
            //                   ),
            //                   Text(
            //                     'Invite On Ride                ',
            //                     style: TextStyle(fontSize: 20),
            //                   ),
            //                   SizedBox(
            //                     height: 05,
            //                   ),
            //                   Text(
            //                     'Share this code with two of your friends & family members. They can...',
            //                     style: TextStyle(
            //                       fontSize: 15,
            //                     ),
            //                   ),
            //                   SizedBox(
            //                     height: 20,
            //                   ),
            //                   Text(
            //                     'Share this code             ',
            //                     style: TextStyle(
            //                       fontSize: 18,
            //                     ),
            //                   ),
            //                   SizedBox(
            //                     height: 10,
            //                   ),
            //                   Container(
            //                     padding: EdgeInsets.all(5),
            //                     height: 40,
            //                     decoration: BoxDecoration(
            //                       borderRadius: BorderRadius.circular(5),
            //                       color: Colors.grey.shade100,
            //                     ),
            //                     child: Row(
            //                       mainAxisAlignment:
            //                           MainAxisAlignment.spaceBetween,
            //                       children: [
            //                         Text('F03ERO',
            //                             style: TextStyle(
            //                                 fontWeight: FontWeight.bold)),
            //                         InkWell(
            //                           child: Icon(Icons.copy),
            //                           onTap: () {},
            //                         ),
            //                       ],
            //                     ),
            //                   ),
            //                   SizedBox(
            //                     height: 10,
            //                   ),
            //                   Row(
            //                     mainAxisAlignment:
            //                         MainAxisAlignment.spaceBetween,
            //                     children: [
            //                       ElevatedButton(
            //                           onPressed: () {},
            //                           style: ElevatedButton.styleFrom(
            //                               fixedSize: Size(100, 20),
            //                               primary: Colors.white,
            //                               onPrimary: Colors.pink,
            //                               side: BorderSide(
            //                                 color: Colors.pink,
            //                               )),
            //                           child: Text(
            //                             'Invite',
            //                             style: TextStyle(
            //                               color: Colors.pink,
            //                             ),
            //                           )),
            //                       ElevatedButton(
            //                           onPressed: () {},
            //                           style: ElevatedButton.styleFrom(
            //                             fixedSize: Size(100, 20),
            //                             primary: Colors.pink,
            //                             onPrimary: Colors.white,
            //                           ),
            //                           child: Text('Details')),
            //                     ],
            //                   )
            //                 ],
            //               ),
            //             ),
            //             onTap: () {},
            //           ),
            //           InkWell(
            //             child: Container(
            //               margin: EdgeInsets.all(10),
            //               padding: EdgeInsets.all(10),
            //               height: 400,
            //               width: 250,
            //               decoration: BoxDecoration(
            //                 boxShadow: [
            //                   BoxShadow(
            //                     color: Colors.grey,
            //                     blurRadius: 1.0,
            //                   ),
            //                 ],
            //                 borderRadius: BorderRadius.circular(15),
            //                 color: Colors.white,
            //
            //                 //image: DecorationImage(image: AssetImage('images/1.png'),),
            //               ),
            //               child: Column(
            //                 children: [
            //                   Image(
            //                       image: AssetImage('images/invite.png'),
            //                       height: 80,
            //                       width: 80),
            //                   SizedBox(
            //                     height: 20,
            //                   ),
            //                   Text(
            //                     'Invite On Ride                ',
            //                     style: TextStyle(fontSize: 20),
            //                   ),
            //                   SizedBox(
            //                     height: 05,
            //                   ),
            //                   Text(
            //                     'Share this code with two of your friends & family members. They can...',
            //                     style: TextStyle(
            //                       fontSize: 15,
            //                     ),
            //                   ),
            //                   SizedBox(
            //                     height: 20,
            //                   ),
            //                   Text(
            //                     'Share this code             ',
            //                     style: TextStyle(
            //                       fontSize: 18,
            //                     ),
            //                   ),
            //                   SizedBox(
            //                     height: 10,
            //                   ),
            //                   Container(
            //                     padding: EdgeInsets.all(5),
            //                     height: 40,
            //                     decoration: BoxDecoration(
            //                       borderRadius: BorderRadius.circular(5),
            //                       color: Colors.grey.shade100,
            //                     ),
            //                     child: Row(
            //                       mainAxisAlignment:
            //                           MainAxisAlignment.spaceBetween,
            //                       children: [
            //                         Text('F03ERO',
            //                             style: TextStyle(
            //                                 fontWeight: FontWeight.bold)),
            //                         InkWell(
            //                           child: Icon(Icons.copy),
            //                           onTap: () {},
            //                         ),
            //                       ],
            //                     ),
            //                   ),
            //                   SizedBox(
            //                     height: 10,
            //                   ),
            //                   Row(
            //                     mainAxisAlignment:
            //                         MainAxisAlignment.spaceBetween,
            //                     children: [
            //                       ElevatedButton(
            //                           onPressed: () {},
            //                           style: ElevatedButton.styleFrom(
            //                               fixedSize: Size(100, 20),
            //                               primary: Colors.white,
            //                               onPrimary: Colors.pink,
            //                               side: BorderSide(
            //                                 color: Colors.pink,
            //                               )),
            //                           child: Text(
            //                             'Invite',
            //                             style: TextStyle(
            //                               color: Colors.pink,
            //                             ),
            //                           )),
            //                       ElevatedButton(
            //                           onPressed: () {},
            //                           style: ElevatedButton.styleFrom(
            //                             fixedSize: Size(100, 20),
            //                             primary: Colors.pink,
            //                             onPrimary: Colors.white,
            //                           ),
            //                           child: Text('Details')),
            //                     ],
            //                   )
            //                 ],
            //               ),
            //             ),
            //             onTap: () {},
            //           ),
            //           InkWell(
            //             child: Container(
            //               margin: EdgeInsets.all(10),
            //               padding: EdgeInsets.all(10),
            //               height: 400,
            //               width: 250,
            //               decoration: BoxDecoration(
            //                 boxShadow: [
            //                   BoxShadow(
            //                     color: Colors.grey,
            //                     blurRadius: 1.0,
            //                   ),
            //                 ],
            //                 borderRadius: BorderRadius.circular(15),
            //                 color: Colors.white,
            //
            //                 //image: DecorationImage(image: AssetImage('images/1.png'),),
            //               ),
            //               child: Column(
            //                 children: [
            //                   Image(
            //                       image: AssetImage('images/invite.png'),
            //                       height: 80,
            //                       width: 80),
            //                   SizedBox(
            //                     height: 20,
            //                   ),
            //                   Text(
            //                     'Invite On Ride                ',
            //                     style: TextStyle(fontSize: 20),
            //                   ),
            //                   SizedBox(
            //                     height: 05,
            //                   ),
            //                   Text(
            //                     'Share this code with two of your friends & family members. They can...',
            //                     style: TextStyle(
            //                       fontSize: 15,
            //                     ),
            //                   ),
            //                   SizedBox(
            //                     height: 20,
            //                   ),
            //                   Text(
            //                     'Share this code             ',
            //                     style: TextStyle(
            //                       fontSize: 18,
            //                     ),
            //                   ),
            //                   SizedBox(
            //                     height: 10,
            //                   ),
            //                   Container(
            //                     padding: EdgeInsets.all(5),
            //                     height: 40,
            //                     decoration: BoxDecoration(
            //                       borderRadius: BorderRadius.circular(5),
            //                       color: Colors.grey.shade100,
            //                     ),
            //                     child: Row(
            //                       mainAxisAlignment:
            //                           MainAxisAlignment.spaceBetween,
            //                       children: [
            //                         Text('F03ERO',
            //                             style: TextStyle(
            //                                 fontWeight: FontWeight.bold)),
            //                         InkWell(
            //                           child: Icon(Icons.copy),
            //                           onTap: () {},
            //                         ),
            //                       ],
            //                     ),
            //                   ),
            //                   SizedBox(
            //                     height: 10,
            //                   ),
            //                   Row(
            //                     mainAxisAlignment:
            //                         MainAxisAlignment.spaceBetween,
            //                     children: [
            //                       ElevatedButton(
            //                           onPressed: () {},
            //                           style: ElevatedButton.styleFrom(
            //                               fixedSize: Size(100, 20),
            //                               primary: Colors.white,
            //                               onPrimary: Colors.pink,
            //                               side: BorderSide(
            //                                 color: Colors.pink,
            //                               )),
            //                           child: Text(
            //                             'Invite',
            //                             style: TextStyle(
            //                               color: Colors.pink,
            //                             ),
            //                           )),
            //                       ElevatedButton(
            //                           onPressed: () {},
            //                           style: ElevatedButton.styleFrom(
            //                             fixedSize: Size(100, 20),
            //                             primary: Colors.pink,
            //                             onPrimary: Colors.white,
            //                           ),
            //                           child: Text('Details')),
            //                     ],
            //                   )
            //                 ],
            //               ),
            //             ),
            //             onTap: () {},
            //           ),
            //         ],
            //       ),
            //     )),
            // SizedBox(
            //   height: 10,
            // ),
            //Explore.........................................................
            //Explore.........................................................
            Padding(
              padding: EdgeInsets.only(right: 270),
              child: Text("Explore >",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  )),
            ),
            Padding(
              padding: EdgeInsets.all(10.0),
              child: Container(
                height: 260,
                width: double.infinity,
                color: Colors.transparent,
                child: Padding(
                  padding: EdgeInsets.all(20.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          InkWell(
                            onTap: () {},
                            child: Column(
                              children: [
                                Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(40),
                                    gradient: const LinearGradient(
                                      begin: Alignment.topCenter,
                                      end: Alignment.bottomCenter,
                                      colors: [
                                        Color(0xffe90d65),
                                        Color(0xffac0087)
                                      ],
                                    ),
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
                          ),
                          SizedBox(
                            width: 50,
                          ),
                          InkWell(
                            onTap: () {},
                            child: Column(
                              children: [
                                Container(
                                  child: Icon(
                                    FontAwesomeIcons.flag,
                                    color: Colors.white,
                                    size: 30,
                                  ),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(40),
                                    gradient: const LinearGradient(
                                      begin: Alignment.topCenter,
                                      end: Alignment.bottomCenter,
                                      colors: [
                                        Color(0xffe90d65),
                                        Color(0xffac0087)
                                      ],
                                    ),
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
                          ),
                          SizedBox(
                            width: 50,
                          ),
                          InkWell(
                            onTap: () {},
                            child: Column(
                              children: [
                                Container(
                                  child: Icon(
                                    FontAwesomeIcons.userGroup,
                                    color: Colors.white,
                                    size: 25,
                                  ),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(40),
                                    gradient: const LinearGradient(
                                      begin: Alignment.topCenter,
                                      end: Alignment.bottomCenter,
                                      colors: [
                                        Color(0xffe90d65),
                                        Color(0xffac0087)
                                      ],
                                    ),
                                  ),
                                  height: 70,
                                  width: 70,
                                  //color: Colors.red,
                                ),
                                SizedBox(
                                  height: 05,
                                ),
                                Text('Group')
                              ],
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          InkWell(
                            onTap: () {},
                            child: Column(
                              children: [
                                Container(
                                  child: Icon(FontAwesomeIcons.youtube,
                                      size: 30, color: Colors.white),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(50),
                                    gradient: const LinearGradient(
                                      begin: Alignment.topCenter,
                                      end: Alignment.bottomCenter,
                                      colors: [
                                        Color(0xffe90d65),
                                        Color(0xffac0087)
                                      ],
                                    ),
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
                          ),
                          SizedBox(
                            width: 50,
                          ),
                          InkWell(
                            onTap: () {},
                            child: Column(
                              children: [
                                Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(50),
                                    gradient: const LinearGradient(
                                      begin: Alignment.topCenter,
                                      end: Alignment.bottomCenter,
                                      colors: [
                                        Color(0xffe90d65),
                                        Color(0xffac0087)
                                      ],
                                    ),
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
                          ),
                          SizedBox(
                            width: 50,
                          ),
                          InkWell(
                            onTap: () {},
                            child: Column(
                              children: [
                                Container(
                                  child: Icon(FontAwesomeIcons.instagram,
                                      color: Colors.white, size: 30),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(50),
                                    gradient: const LinearGradient(
                                      begin: Alignment.topCenter,
                                      end: Alignment.bottomCenter,
                                      colors: [
                                        Color(0xffe90d65),
                                        Color(0xffac0087)
                                      ],
                                    ),
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
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
            //Services provide..................................................
            Padding(
              padding: EdgeInsets.only(right: 100),
              child: Text("Service you have Taken",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  )),
            ),
            SizedBox(
              height: 10,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Padding(
                padding: EdgeInsets.all(10.0),
                child: Row(
                  children: [
                    Container(
                      width: 320,
                      // height: 200.h,
                      margin: EdgeInsets.only(bottom: 20),
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Color(0xFFF4CDE4),
                          width: 1,
                        ),
                        borderRadius: BorderRadius.all(Radius.circular(8)),
                      ),
                      child: InkWell(
                        splashColor: const Color(0xffffd6e8),
                        onTap: () {},
                        child: Padding(
                          padding: EdgeInsets.symmetric(
                              horizontal: 10, vertical: 14),
                          child: Column(
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  SizedBox(
                                    width: 75,
                                    height: 36,
                                    child: TextButton.icon(
                                      icon: Image.asset('images/ic_person.png',
                                          height: 16, width: 16),
                                      label: Text(
                                        '01',
                                        style: TextStyle(fontSize: 13),
                                      ), //vacancy
                                      style: TextButton.styleFrom(
                                        primary: const Color(0xFFC80677),
                                        backgroundColor: const Color(
                                            0xFFFAE6F1), // foreground
                                      ),
                                      onPressed: () {},
                                    ),
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  CircleAvatar(
                                    backgroundColor: Colors.grey.shade50,
                                    radius: 30,
                                    backgroundImage:
                                        AssetImage('images/govt.png'),
                                  ),
                                  SizedBox(width: 12),
                                  Column(
                                    children: [
                                      SizedBox(
                                        width:
                                            MediaQuery.of(context).size.width -
                                                200,
                                        child: Text(
                                          'Generator Operator',
                                          maxLines: 2,
                                          overflow: TextOverflow.ellipsis,
                                          style: TextStyle(
                                            fontWeight: FontWeight.w500,
                                            color: Colors.black,
                                            fontSize: 15,
                                          ),
                                        ),
                                      ),
                                      Container(
                                        margin: const EdgeInsets.only(top: 4),
                                        width:
                                            MediaQuery.of(context).size.width -
                                                200,
                                        child: Text(
                                          "Karnaphuli Gas Distribution Company Limited",
                                          maxLines: 2,
                                          overflow: TextOverflow.ellipsis,
                                          style: TextStyle(
                                            fontWeight: FontWeight.normal,
                                            color: Colors.black,
                                            fontSize: 12,
                                          ),
                                        ),
                                      ),
                                    ],
                                  )
                                ],
                              ),
                              SizedBox(height: 10),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Text(
                                    "Grade 5",
                                    style: TextStyle(
                                        fontWeight: FontWeight.normal,
                                        color: Colors.black,
                                        fontSize: 16),
                                  ),
                                  Text(
                                    '৳ 100',
                                    style: TextStyle(
                                        fontWeight: FontWeight.normal,
                                        color: Colors.black,
                                        fontSize: 16),
                                  ),
                                  Container(
                                    width: 85,
                                    height: 36,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(6),
                                      gradient: const LinearGradient(
                                        begin: Alignment.topCenter,
                                        end: Alignment.bottomCenter,
                                        colors: [
                                          Color(0xffe90d65),
                                          Color(0xffac0087)
                                        ],
                                      ),
                                      boxShadow: [
                                        BoxShadow(
                                          color: Colors.grey,
                                          offset:
                                              const Offset(0.0, 1.0), //(x,y)
                                          blurRadius: 4.0,
                                        ),
                                      ],
                                    ),
                                    child: Material(
                                      color: Colors.transparent,
                                      child: InkWell(
                                        onTap: () {},
                                        child: Center(
                                          child: Text(
                                            'Apply',
                                            style: TextStyle(
                                                fontSize: 14,
                                                color: Colors.white,
                                                fontWeight: FontWeight.w600),
                                          ),
                                        ),
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    Container(
                      width: 320,
                      // height: 200.h,
                      margin: EdgeInsets.only(bottom: 20),
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Color(0xFFF4CDE4),
                          width: 1,
                        ),
                        borderRadius: BorderRadius.all(Radius.circular(8)),
                      ),
                      child: InkWell(
                        splashColor: const Color(0xffffd6e8),
                        onTap: () {},
                        child: Padding(
                          padding: EdgeInsets.symmetric(
                              horizontal: 10, vertical: 14),
                          child: Column(
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  SizedBox(
                                    width: 75,
                                    height: 36,
                                    child: TextButton.icon(
                                      icon: Image.asset('images/ic_person.png',
                                          height: 16, width: 16),
                                      label: Text(
                                        '01',
                                        style: TextStyle(fontSize: 13),
                                      ), //vacancy
                                      style: TextButton.styleFrom(
                                        primary: const Color(0xFFC80677),
                                        backgroundColor: const Color(
                                            0xFFFAE6F1), // foreground
                                      ),
                                      onPressed: () {},
                                    ),
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  CircleAvatar(
                                    backgroundColor: Colors.grey.shade50,
                                    radius: 30,
                                    backgroundImage:
                                        AssetImage('images/govt.png'),
                                  ),
                                  SizedBox(width: 12),
                                  Column(
                                    children: [
                                      SizedBox(
                                        width:
                                            MediaQuery.of(context).size.width -
                                                200,
                                        child: Text(
                                          'Generator Operator',
                                          maxLines: 2,
                                          overflow: TextOverflow.ellipsis,
                                          style: TextStyle(
                                            fontWeight: FontWeight.w500,
                                            color: Colors.black,
                                            fontSize: 15,
                                          ),
                                        ),
                                      ),
                                      Container(
                                        margin: const EdgeInsets.only(top: 4),
                                        width:
                                            MediaQuery.of(context).size.width -
                                                200,
                                        child: Text(
                                          "Karnaphuli Gas Distribution Company Limited",
                                          maxLines: 2,
                                          overflow: TextOverflow.ellipsis,
                                          style: TextStyle(
                                            fontWeight: FontWeight.normal,
                                            color: Colors.black,
                                            fontSize: 12,
                                          ),
                                        ),
                                      ),
                                    ],
                                  )
                                ],
                              ),
                              SizedBox(height: 10),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Text(
                                    "Grade 5",
                                    style: TextStyle(
                                        fontWeight: FontWeight.normal,
                                        color: Colors.black,
                                        fontSize: 16),
                                  ),
                                  Text(
                                    '৳ 100',
                                    style: TextStyle(
                                        fontWeight: FontWeight.normal,
                                        color: Colors.black,
                                        fontSize: 16),
                                  ),
                                  Container(
                                    width: 85,
                                    height: 36,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(6),
                                      gradient: const LinearGradient(
                                        begin: Alignment.topCenter,
                                        end: Alignment.bottomCenter,
                                        colors: [
                                          Color(0xffe90d65),
                                          Color(0xffac0087)
                                        ],
                                      ),
                                      boxShadow: [
                                        BoxShadow(
                                          color: Colors.grey,
                                          offset:
                                              const Offset(0.0, 1.0), //(x,y)
                                          blurRadius: 4.0,
                                        ),
                                      ],
                                    ),
                                    child: Material(
                                      color: Colors.transparent,
                                      child: InkWell(
                                        onTap: () {},
                                        child: Center(
                                          child: Text(
                                            'Apply',
                                            style: TextStyle(
                                                fontSize: 14,
                                                color: Colors.white,
                                                fontWeight: FontWeight.w600),
                                          ),
                                        ),
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    Container(
                      width: 320,
                      // height: 200.h,
                      margin: EdgeInsets.only(bottom: 20),
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Color(0xFFF4CDE4),
                          width: 1,
                        ),
                        borderRadius: BorderRadius.all(Radius.circular(8)),
                      ),
                      child: InkWell(
                        splashColor: const Color(0xffffd6e8),
                        onTap: () {},
                        child: Padding(
                          padding: EdgeInsets.symmetric(
                              horizontal: 10, vertical: 14),
                          child: Column(
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  SizedBox(
                                    width: 75,
                                    height: 36,
                                    child: TextButton.icon(
                                      icon: Image.asset('images/ic_person.png',
                                          height: 16, width: 16),
                                      label: Text(
                                        '01',
                                        style: TextStyle(fontSize: 13),
                                      ), //vacancy
                                      style: TextButton.styleFrom(
                                        primary: const Color(0xFFC80677),
                                        backgroundColor: const Color(
                                            0xFFFAE6F1), // foreground
                                      ),
                                      onPressed: () {},
                                    ),
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  CircleAvatar(
                                    backgroundColor: Colors.grey.shade50,
                                    radius: 30,
                                    backgroundImage:
                                        AssetImage('images/govt.png'),
                                  ),
                                  SizedBox(width: 12),
                                  Column(
                                    children: [
                                      SizedBox(
                                        width:
                                            MediaQuery.of(context).size.width -
                                                200,
                                        child: Text(
                                          'Generator Operator',
                                          maxLines: 2,
                                          overflow: TextOverflow.ellipsis,
                                          style: TextStyle(
                                            fontWeight: FontWeight.w500,
                                            color: Colors.black,
                                            fontSize: 15,
                                          ),
                                        ),
                                      ),
                                      Container(
                                        margin: const EdgeInsets.only(top: 4),
                                        width:
                                            MediaQuery.of(context).size.width -
                                                200,
                                        child: Text(
                                          "Karnaphuli Gas Distribution Company Limited",
                                          maxLines: 2,
                                          overflow: TextOverflow.ellipsis,
                                          style: TextStyle(
                                            fontWeight: FontWeight.normal,
                                            color: Colors.black,
                                            fontSize: 12,
                                          ),
                                        ),
                                      ),
                                    ],
                                  )
                                ],
                              ),
                              SizedBox(height: 10),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Text(
                                    "Grade 5",
                                    style: TextStyle(
                                        fontWeight: FontWeight.normal,
                                        color: Colors.black,
                                        fontSize: 16),
                                  ),
                                  Text(
                                    '৳ 100',
                                    style: TextStyle(
                                        fontWeight: FontWeight.normal,
                                        color: Colors.black,
                                        fontSize: 16),
                                  ),
                                  Container(
                                    width: 85,
                                    height: 36,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(6),
                                      gradient: const LinearGradient(
                                        begin: Alignment.topCenter,
                                        end: Alignment.bottomCenter,
                                        colors: [
                                          Color(0xffe90d65),
                                          Color(0xffac0087)
                                        ],
                                      ),
                                      boxShadow: [
                                        BoxShadow(
                                          color: Colors.grey,
                                          offset:
                                              const Offset(0.0, 1.0), //(x,y)
                                          blurRadius: 4.0,
                                        ),
                                      ],
                                    ),
                                    child: Material(
                                      color: Colors.transparent,
                                      child: InkWell(
                                        onTap: () {},
                                        child: Center(
                                          child: Text(
                                            'Apply',
                                            style: TextStyle(
                                                fontSize: 14,
                                                color: Colors.white,
                                                fontWeight: FontWeight.w600),
                                          ),
                                        ),
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 100,
            ),
          ],
        ),
      ),
    );
  }
}
