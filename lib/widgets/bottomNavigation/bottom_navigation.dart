import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:netflix_clone/controller/bottom_nav_controller.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:netflix_clone/widgets/comingSoon/coming_soon_view.dart';
import 'package:netflix_clone/widgets/downloads/downloads_view.dart';
import 'package:netflix_clone/widgets/fast_laugh/fast_laughs_view.dart';
import 'package:netflix_clone/widgets/games_view.dart';
import 'package:netflix_clone/widgets/home/home_view.dart';

class BottomNav extends StatelessWidget {
  BottomNav({Key? key}) : super(key: key);

  BottomController controller = Get.put(BottomController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      bottomNavigationBar: bottomnavbar(context),
      body: Obx(() => IndexedStack(
            index: controller.currentInd.value,
            children: [Home(), Games(), ComingSoon(), FastLaugh(), Downloads()],
          )),
    );
  }

  bottomnavbar(context) {
    return Obx(() => MediaQuery(
        data: MediaQuery.of(context).copyWith(textScaleFactor: 1.0),
        child: Container(
            height: 64,
            color: Colors.black,
            child: BottomNavigationBar(
                type: BottomNavigationBarType.fixed,
                backgroundColor: Colors.black,
                unselectedItemColor: Colors.white.withOpacity(0.5),
                selectedItemColor: Colors.white,
                onTap: controller.changeIndex,
                currentIndex: controller.currentInd.value,
                items: [
                  BottomNavigationBarItem(
                      icon: Icon(
                        FontAwesomeIcons.home,
                      ),
                      label: 'Home'),
                  BottomNavigationBarItem(
                      icon: Icon(FontAwesomeIcons.gamepad), label: 'Games'),
                  BottomNavigationBarItem(
                      icon: Icon(FontAwesomeIcons.caretSquareRight),
                      label: 'Coming Soon'),
                  BottomNavigationBarItem(
                      icon: Icon(FontAwesomeIcons.solidSmileBeam),
                      label: 'Fast Laugh'),
                  BottomNavigationBarItem(
                      icon: Icon(FontAwesomeIcons.arrowAltCircleDown),
                      label: 'Downloads'),
                ]))));
  }
}
