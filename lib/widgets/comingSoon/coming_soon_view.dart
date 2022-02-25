import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:get/get.dart';
import 'package:http/http.dart';
import 'package:netflix_clone/controller/bottom_nav_controller.dart';
import 'package:netflix_clone/services/getting.dart';
import 'package:netflix_clone/widgets/downloads/app_bar.dart';
import 'package:netflix_clone/widgets/comingSoon/coming_soon.dart';
import 'package:netflix_clone/widgets/comingSoon/coming_soon_listview.dart';

class ComingSoon extends StatelessWidget {
  const ComingSoon({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    BottomController controller = Get.put(BottomController());
    Size size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        appBar: PreferredSize(
            child: AppbarWidget(leading: 'Coming Soon'),
            preferredSize: Size.fromHeight(70)),
        body: ListView(
          scrollDirection: Axis.vertical,
          children: [
            Container(
              height: size.height * .26,
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 30, bottom: 10),
                    child: ListTile(
                      leading: Image.asset(
                        'assets/netflix_notification.png',
                        height: 50,
                        width: 50,
                      ),
                      title: Text(
                        'Notifications',
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w600,
                            fontSize: 19),
                      ),
                      trailing: Icon(
                        Icons.keyboard_arrow_right,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  Coming(
                    image:
                        'http://image.tmdb.org/t/p/w500'+upcomingList[10]["backdrop_path"],
                    title: 'nothing is found',
                    subtitle: 'see what you watched',
                    date: '10,feb',
                  ),
                  Coming(
                    image:
                       'http://image.tmdb.org/t/p/w500'+ upcomingList[11]["backdrop_path"],
                    title: '83 movie found',
                    subtitle: 'see what you see',
                    date: '11,dec',
                  ),
                ],
              ),
            ),
            FutureBuilder(
              future: upcomigFetching(),
              builder: (BuildContext context, AsyncSnapshot snapshot) {
                if (snapshot.hasData) {
                  return ListView.builder(
                    shrinkWrap: true,
                    physics: ScrollPhysics(),
                    itemCount: upcomingList.length,
                    itemBuilder: (BuildContext context, int index) {
                      return Column(
                        children: [
                          ComingListview(
                            height: size.height * .26,
                            uri: upcomingList[index]["backdrop_path"],
                            name: upcomingList[index]['original_title'],
                            date: upcomingList[index]["release_date"],
                            subtitle: upcomingList[index]["overview"],
                          ),
                        ],
                      );
                    },
                  );
                } else {
                  return Center(child: CircularProgressIndicator());
                }
              },
            ),
          ],
        ),
      ),
    );
  }
}
