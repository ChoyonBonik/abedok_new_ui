import 'package:abedok_new_ui/pages/page_1.dart';
import 'package:abedok_new_ui/pages/page_2.dart';
import 'package:abedok_new_ui/pages/page_3.dart';
import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class Page4 extends StatefulWidget {
  const Page4({Key? key}) : super(key: key);

  @override
  State<Page4> createState() => _Page4State();
}

class _Page4State extends State<Page4> {
  @override
  Widget build(BuildContext context) {
    // int _pageIndex = 0;
    // final List<Widget> _tabList = [
    //   Page1(),
    // Page2(),
    //   Page3(),
    // ];
    return Scaffold(
      appBar: AppBar(
        title: Text('Page 4'),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(30.0),
        child: Align(
          alignment: Alignment(0.0, 1.0),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(40),
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
      body: Container(
        height: 100,
        width: 100,
        color: Colors.red,
      )
    );
  }
}
