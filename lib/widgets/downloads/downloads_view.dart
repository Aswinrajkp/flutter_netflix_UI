import 'dart:math';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:netflix_clone/widgets/downloads/app_bar.dart';
import 'package:netflix_clone/widgets/downloads/download_images.dart';

class Downloads extends StatelessWidget {
  Downloads({Key? key}) : super(key: key);

  String leading = 'Downloads';

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        appBar: PreferredSize(
            child: AppbarWidget(
              leading: leading,
            ),
            preferredSize: Size.fromHeight(70)),
        body: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 14, bottom: 16),
              child: Center(
                  child: Text(
                'Introducing Downloads for you',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 22,
                    fontWeight: FontWeight.w500),
              )),
            ),
            Center(
              child: Text(
                '''We'll download a personalised selection of moves and shows for you. so there's always something to watch on your phone''',
                style: TextStyle(color: Colors.white, fontSize: 17),
                textAlign: TextAlign.center,
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * .10,
            ),
////////////////////////////////////////////////////////////////////////////
            Container(
              height: size.width * .80,
              child: CircleAvatar(
                backgroundColor: Colors.grey.shade900,
                child: Stack(
                  children: [
                    Center(
                        child: DownloadImage(
                            angel: -20.0,
                            image:
                                'https://i.pinimg.com/736x/40/6e/c6/406ec63b5fa6b5b4eeb2b7b5ac07da27.jpg',
                            margin: EdgeInsets.only(right: 170),
                            height: size.width * .55,
                            width: size.width * .60)),
                    Center(
                        child: DownloadImage(
                            angel: 20.0,
                            image:
                                'https://i.pinimg.com/736x/e9/db/05/e9db05b3d5db61b8fbd30bc6c9145c1a.jpg',
                            margin: EdgeInsets.only(left: 170),
                            height: size.width * .55,
                            width: size.width * .60)),
                    Center(
                        child: DownloadImage(
                      angel: 0.0,
                      image:
                          'https://i.pinimg.com/474x/73/ec/ab/73ecab3ff586d87a2cfacb9862ba629f.jpg',
                      margin: EdgeInsets.only(right: 0),
                      height: size.width * .60,
                      width: size.width * .60,
                      icon: Icon(
                        FontAwesomeIcons.playCircle,
                        size: 70,
                        color: Colors.black,
                      ),
                    )),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * .17,
            ),
///////////////////////////////////////////////////////////////////////////
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: InkWell(
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: Colors.blue),
                  child: Center(
                      child: Text(
                    'SET UP',
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.w900),
                  )),
                  height: 40,
                  width: MediaQuery.of(context).size.width,
                ),
              ),
            ),
            Center(
              child: Padding(
                padding: const EdgeInsets.only(top: 20),
                child: Text(
                  'Find more to download',
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w800,
                      fontSize: 15),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
