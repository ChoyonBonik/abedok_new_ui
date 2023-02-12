import 'package:abedok_new_ui/pages/govt_job.dart';
import 'package:abedok_new_ui/pages/police_clear.dart';
import 'package:abedok_new_ui/pages/admission.dart';
import 'package:abedok_new_ui/utils/constants.dart';
import 'package:auto_size_text/auto_size_text.dart';
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
      //AppBar................................................................
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(70),
        child: AppBar(
          flexibleSpace: Container(
            decoration: BoxDecoration(
              gradient: const LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  Color(0xffe90d65),
                  Color(0xffac0087),
                ],
              ),
            ),
          ),
          leadingWidth: 70,
          titleSpacing: 0,
          leading: Padding(
            padding: const EdgeInsets.only(top: 18, left: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CircleAvatar(
                  radius: 20,
                  backgroundImage: AssetImage('assets/images/circle.jpg'),
                ),
              ],
            ),
          ),
          title: Padding(
            padding: const EdgeInsets.only(top: 20),
            child: InkWell(
              onTap: () {},
              child: Container(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Khairul Islam',
                      style: TextStyle(
                        fontFamily: 'Poppins-Regular.ttf',
                        fontSize: 13,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Row(
                      children: [
                        Text(
                          "01700000000",
                          style: TextStyle(
                            fontFamily: 'Poppins-Regular.ttf',
                            fontSize: 11,
                          ),
                        ),
                        Icon(Icons.keyboard_arrow_down),
                      ],
                    )
                  ],
                ),
              ),
            ),
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Row(
                children: [
                  IconButton(
                      icon: Icon(Icons.search_rounded), onPressed: () {}),
                  IconButton(
                      icon: Icon(Icons.notifications_none_outlined),
                      onPressed: () {}),
                ],
              ),
            )
          ],
        ),
      ),
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
      body: SingleChildScrollView(
        child: Column(
          children: [
            //Services...........................................................
            Container(
              padding: EdgeInsets.only(top: 10),
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
                                    'assets/images/govt-logo.png',
                                    height: 80,
                                    width: 80,
                                  ),
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Text(
                                  'Government Job',
                                  style: TextStyle(
                                    fontSize: 12,
                                    fontFamily: 'Poppins-Medium.ttf',
                                    color: textColor,
                                  ),
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
                                    'assets/images/admission.png',
                                    height: 80,
                                    width: 80,
                                  ),
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Text(
                                  'University Admission',
                                  style: TextStyle(
                                    color: textColor,
                                    fontFamily: 'Poppins-Medium.ttf',
                                    fontSize: 12,
                                  ),
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
                                    builder: (context) => AdmissionPage()));
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
                                    'assets/images/police.png',
                                    height: 80,
                                    width: 80,
                                  ),
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Text(
                                  'Police Clearence',
                                  style: TextStyle(
                                    fontSize: 12,
                                    fontFamily: 'Poppins-Medium',
                                    color: textColor,
                                  ),
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
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            //CV Builder..............................................
            Padding(
              padding: EdgeInsets.only(right: 280),
              child: Text("CV Builder >",
                  style: TextStyle(
                    fontSize: 14,
                    color: textColor,
                    fontWeight: FontWeight.bold,
                  )),
            ),
            SizedBox(
              height: 10,
            ),
            SizedBox(
                height: 300,
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      InkWell(
                        child: Container(
                          margin: EdgeInsets.all(10),
                          padding: EdgeInsets.all(10),
                          height: 280,
                          width: 300,
                          decoration: BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey,
                                blurRadius: 5.0,
                              ),
                            ],
                            borderRadius: BorderRadius.circular(15),
                            color: Colors.white,
                          ),
                          child: Column(
                            children: [
                              Image(
                                image: AssetImage('assets/images/cvv.jpg'),
                                height: 200,
                                width: double.infinity,
                                fit: BoxFit.cover,

                              ),
                              SizedBox(
                                height: 12,
                              ),
                              Row(
                                children: [
                                  Text('Free'),
                                  SizedBox(width: 100,),
                                  IconButton(onPressed: (){}, icon: Icon(Icons.remove_red_eye, color: Colors.grey.shade600,)),
                                  SizedBox(width: 10,),
                                  Container(
                                    width: 85,
                                    height: 32,
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
                                            'Build Now',
                                            style: TextStyle(
                                                fontSize: 10,
                                                color: Colors.white,
                                                fontWeight: FontWeight.w600),
                                          ),
                                        ),
                                      ),
                                    ),
                                  )
                                ],
                              )
                            ],
                          ),
                        ),
                        onTap: () {},
                      ),
                      InkWell(
                        child: Container(
                          margin: EdgeInsets.all(10),
                          padding: EdgeInsets.all(10),
                          height: 280,
                          width: 300,
                          decoration: BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.shade400,
                                blurRadius: 0.1,
                              ),
                            ],
                            borderRadius: BorderRadius.circular(15),
                            color: Colors.white,
                          ),
                          child: Column(
                            children: [
                              Image(
                                image: AssetImage('assets/images/cvv.jpg'),
                                height: 200,
                                width: double.infinity,
                                fit: BoxFit.cover,

                              ),
                              SizedBox(
                                height: 12,
                              ),
                              Row(
                                children: [
                                  Text('৳ 30'),
                                  SizedBox(width: 100,),
                                  IconButton(onPressed: (){}, icon: Icon(Icons.remove_red_eye, color: Colors.grey.shade600,)),
                                  SizedBox(width: 10,),
                                  Container(
                                    width: 85,
                                    height: 32,
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
                                            'Build Now',
                                            style: TextStyle(
                                                fontSize: 10,
                                                color: Colors.white,
                                                fontWeight: FontWeight.w600),
                                          ),
                                        ),
                                      ),
                                    ),
                                  )
                                ],
                              )
                            ],
                          ),
                        ),
                        onTap: () {},
                      ),
                      InkWell(
                        child: Container(
                          margin: EdgeInsets.all(10),
                          padding: EdgeInsets.all(10),
                          height: 280,
                          width: 300,
                          decoration: BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.shade400,
                                blurRadius: 0.1,
                              ),
                            ],
                            borderRadius: BorderRadius.circular(15),
                            color: Colors.white,
                          ),
                          child: Column(
                            children: [
                              Image(
                                image: AssetImage('assets/images/cvv.jpg'),
                                height: 200,
                                width: double.infinity,
                                fit: BoxFit.cover,

                              ),
                              SizedBox(
                                height: 12,
                              ),
                              Row(
                                children: [
                                  Text('৳ 40'),
                                  SizedBox(width: 100,),
                                  IconButton(onPressed: (){}, icon: Icon(Icons.remove_red_eye, color: Colors.grey.shade600,)),
                                  SizedBox(width: 10,),
                                  Container(
                                    width: 85,
                                    height: 32,
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
                                            'Build Now',
                                            style: TextStyle(
                                                fontSize: 10,
                                                color: Colors.white,
                                                fontWeight: FontWeight.w600),
                                          ),
                                        ),
                                      ),
                                    ),
                                  )
                                ],
                              )
                            ],
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
            //Whats New?.......................................................
            Padding(
              padding: EdgeInsets.only(right: 270),
              child: Text("Whats New?",
                  style: TextStyle(
                    fontFamily: 'Poppins-Medium.ttf',
                    fontSize: 14,
                    color: textColor,
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
                                image:
                                    AssetImage('assets/images/whats_new1.jpg'),
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
                                image:
                                    AssetImage('assets/images/whats_new2.jpg'),
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
                                image:
                                    AssetImage('assets/images/whats_new3.jpg'),
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
                                image:
                                    AssetImage('assets/images/whats_new4.jpg'),
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
            //Explore.........................................................
            Padding(
              padding: EdgeInsets.only(right: 290),
              child: Text(
                "Explore >",
                style: TextStyle(
                  fontFamily: 'Poppins-Medium.ttf',
                  fontSize: 14,
                  color: textColor,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(10.0),
              child: Container(
                height: 250,
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
                                Text(
                                  'Web',
                                  style: TextStyle(
                                    color: textColor,
                                    fontFamily: 'Poppins-Medium.ttf',
                                    fontSize: 12,
                                  ),
                                )
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
                                Text(
                                  'Page',
                                  style: TextStyle(
                                    color: textColor,
                                    fontFamily: 'Poppins-Medium.ttf',
                                    fontSize: 12,
                                  ),
                                ),
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
                                Text(
                                  'Group',
                                  style: TextStyle(
                                    color: textColor,
                                    fontFamily: 'Poppins-Medium.ttf',
                                    fontSize: 12,
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
                                Text(
                                  'YouTube',
                                  style: TextStyle(
                                    color: textColor,
                                    fontFamily: 'Poppins-Medium.ttf',
                                    fontSize: 12,
                                  ),
                                ),
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
                                Text(
                                  'Linkedin',
                                  style: TextStyle(
                                    color: textColor,
                                    fontFamily: 'Poppins-Medium.ttf',
                                    fontSize: 12,
                                  ),
                                ),
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
                                Text(
                                  'Instagram',
                                  style: TextStyle(
                                    color: textColor,
                                    fontFamily: 'Poppins-Medium.ttf',
                                    fontSize: 12,
                                  ),
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
            //Services provide..................................................
            Padding(
              padding: EdgeInsets.only(right: 170),
              child: Text("Service you have Taken >",
                  style: TextStyle(
                    fontFamily: 'Poppins-Regular.ttf',
                    fontSize: 14,
                    color: textColor,
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
                                      icon: Image.asset(
                                          'assets/images/ic_person.png',
                                          height: 16,
                                          width: 16),
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
                                    backgroundImage: AssetImage(
                                        'assets/images/govt-logo.png'),
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
                                            color: textColor,
                                            fontSize: 14,
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
                                            color: textColor,
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
                                        color: textColor,
                                        fontSize: 16),
                                  ),
                                  Text(
                                    '৳ 100',
                                    style: TextStyle(
                                        fontWeight: FontWeight.normal,
                                        color: textColor,
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
                                      icon: Image.asset(
                                          'assets/images/ic_person.png',
                                          height: 16,
                                          width: 16),
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
                                    backgroundImage: AssetImage(
                                        'assets/images/govt-logo.png'),
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
                                            color: textColor,
                                            fontSize: 14,
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
                                            color: textColor,
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
                                        color: textColor,
                                        fontSize: 16),
                                  ),
                                  Text(
                                    '৳ 100',
                                    style: TextStyle(
                                        fontWeight: FontWeight.normal,
                                        color: textColor,
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
                                      icon: Image.asset(
                                          'assets/images/ic_person.png',
                                          height: 16,
                                          width: 16),
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
                                    backgroundImage: AssetImage(
                                        'assets/images/govt-logo.png'),
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
                                            color: textColor,
                                            fontSize: 14,
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
                                            color: textColor,
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
                                        color: textColor,
                                        fontSize: 16),
                                  ),
                                  Text(
                                    '৳ 100',
                                    style: TextStyle(
                                        fontWeight: FontWeight.normal,
                                        color: textColor,
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
            //Live Support.....................................................
            Padding(
              padding: EdgeInsets.only(right: 285),
              child: Text("Say Hello !",
                  style: TextStyle(
                    fontFamily: 'Poppins-Regular.ttf',
                    fontSize: 14,
                    color: textColor,
                    fontWeight: FontWeight.bold,
                  )),
            ),
            SizedBox(height: 15,),
            Padding(
              padding: EdgeInsets.all(10.0),
              child: Container(
                height: 100,
                width: double.infinity,
                color: Colors.transparent,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    InkWell(
                      onTap: () {},
                      child: Column(
                        children: [
                          Container(
                            width: 50,
                            height: 50,
                            child: Icon(FontAwesomeIcons.phone, color: Colors.white, size: 25),
                            decoration: BoxDecoration(
                              gradient: LinearGradient(colors: [
                                Color(0xffe90d65),
                                Color(0xffac0087)
                              ]),
                              borderRadius: BorderRadius.circular(30),
                            ),
                          ),
                          SizedBox(
                            height: 05,
                          ),
                          Text(
                            'HotLine',
                            style: TextStyle(
                              color: textColor,
                              fontFamily: 'Poppins-Medium.ttf',
                              fontSize: 12,
                            ),
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    InkWell(
                      onTap: () {},
                      child: Column(
                        children: [
                          Container(
                            width: 50,
                            height: 50,
                            child:
                            Icon(FontAwesomeIcons.facebookMessenger, color: Colors.white, size: 25),
                            decoration: BoxDecoration(
                              gradient: LinearGradient(colors: [
                                Color(0xffe90d65),
                                Color(0xffac0087)
                              ]),
                              borderRadius: BorderRadius.circular(30),
                            ),
                          ),
                          SizedBox(
                            height: 05,
                          ),
                          Text(
                            'Messenger',
                            style: TextStyle(
                              color: textColor,
                              fontFamily: 'Poppins-Medium.ttf',
                              fontSize: 12,
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    InkWell(
                      onTap: () {},
                      child: Column(
                        children: [
                          Container(
                            width: 50,
                            height: 50,
                            child:
                            Icon(FontAwesomeIcons.whatsapp, color: Colors.white, size: 25),
                            decoration: BoxDecoration(
                              gradient: LinearGradient(colors: [
                                Color(0xffe90d65),
                                Color(0xffac0087)
                              ]),
                              borderRadius: BorderRadius.circular(30),
                            ),
                          ),
                          SizedBox(
                            height: 05,
                          ),
                          Text(
                            'WhatsApp',
                            style: TextStyle(
                              color: textColor,
                              fontFamily: 'Poppins-Medium.ttf',
                              fontSize: 12,
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    InkWell(
                      onTap: () {},
                      child: Column(
                        children: [
                          Container(
                            width: 50,
                            height: 50,
                            child: Icon(Icons.mail, color: Colors.white, size: 25),
                            decoration: BoxDecoration(
                              gradient: LinearGradient(colors: [
                                Color(0xffe90d65),
                                Color(0xffac0087)
                              ]),
                              borderRadius: BorderRadius.circular(30),
                            ),
                          ),
                          SizedBox(
                            height: 05,
                          ),
                          Text(
                            'Email',
                            style: TextStyle(
                              color: textColor,
                              fontFamily: 'Poppins-Medium.ttf',
                              fontSize: 12,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 80,
            )
          ],
        ),
      ),
    );
  }
}
