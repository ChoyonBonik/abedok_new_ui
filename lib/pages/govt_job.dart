
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

import 'dashboard_page.dart';

class GovtJob extends StatefulWidget {
  const GovtJob({Key? key}) : super(key: key);

  @override
  State<GovtJob> createState() => _GovtJobState();
}

class _GovtJobState extends State<GovtJob> {

  @override
  Widget build(BuildContext context) {
    const mockupWidth = 414;
    final width = MediaQuery.of(context).size.width;
    final textScaleFactor = width / mockupWidth;
    return Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.white,
          leading: Container(
            height: 40 / mockupWidth * width,
            width: 40 / mockupWidth * width,
            margin: const EdgeInsets.only(left: 20, top: 10, bottom: 10),
            child:
            Card(
              elevation: 2,
              color: Colors.white,
              child: InkWell(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (value){
                    return DashboardPage();
                  }));
                },
                child: Container(
                  margin: const EdgeInsets.only(left: 5),
                  child: const Icon(
                    Icons.arrow_back_ios,
                    size: 15.0,
                    color: Colors.pink,
                  ),
                ),
              ),
            ),
          ),
          centerTitle: true,
          title: AutoSizeText(
            "Government Job",
            maxLines: 1,
            textScaleFactor: textScaleFactor,
            overflow: TextOverflow.ellipsis,
            style: const TextStyle(
              color: Color(0xffbe047d),
              fontSize: 17,
              fontFamily: "Poppins SemiBold",
            ),
          ),
          actions: [
            Card(
              margin: EdgeInsets.only(right: 20, top: 10, bottom: 10),
              elevation: 0,
              color: Colors.white,
              child: InkWell(
                onTap: (){},
                child: Container(
                  child: Image(image: AssetImage('assets/images/ic_notification.png'),
                    width: 40,
                    height: 40,
                  ),
                ),
              ),
            ),
          ],
        ),
    );
  }
}
