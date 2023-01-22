import 'package:abedok_new_ui/pages/page_1.dart';
import 'package:abedok_new_ui/pages/page_2.dart';
import 'package:abedok_new_ui/pages/page_3.dart';
import 'package:abedok_new_ui/pages/page_4.dart';
import 'package:abedok_new_ui/pages/page_5.dart';
import 'package:abedok_new_ui/pages/page_6.dart';
import 'package:flutter/material.dart';

class DashboardPage extends StatefulWidget {
  const DashboardPage({Key? key}) : super(key: key);

  @override
  State<DashboardPage> createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {
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
        child: Container(
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
                              child: Image.asset('images/govt.png', height: 80, width: 80,),
                            ),
                            SizedBox(height: 20,),
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
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => Page1()));
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
                              child: Image.asset('images/govt.png', height: 80, width: 80,),
                            ),
                            SizedBox(height: 20,),
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
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => Page2()));
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
                              child: Image.asset('images/nid.png', height: 80, width: 80,),
                            ),
                            SizedBox(height: 20,),
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
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => Page3()));
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
                              child: Image.asset('images/passport.png', height: 80, width: 80,),
                            ),
                            SizedBox(height: 20,),
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
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => Page4()));
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
                              child: Image.asset('images/police.png', height: 80, width: 80,),
                            ),
                            SizedBox(height: 20,),
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
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => Page5()));
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
                              child: Image.asset('images/govt.png', height: 80, width: 80,),
                            ),
                            SizedBox(height: 20,),
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
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => Page6()));
                      },
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
