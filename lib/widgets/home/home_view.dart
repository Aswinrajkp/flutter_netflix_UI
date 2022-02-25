import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:netflix_clone/services/getting.dart';
import 'package:netflix_clone/widgets/home/home_banner.dart';
import 'package:netflix_clone/widgets/home/home_card_repeating.dart';
import 'package:netflix_clone/widgets/home/stack_card.dart';

class Home extends StatelessWidget {
  Home({Key? key}) : super(key: key);
  var leading = Image(
    image: AssetImage('assets/netflix.png'),
    height: 50,
    width: 50,
  );
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return DefaultTabController(
        length: 3,
        child: Scaffold(
          floatingActionButton: FloatingActionButton(
              backgroundColor: Colors.white,
              child: Icon(
                Icons.shuffle_outlined,
                color: Colors.red,
              ),
              onPressed: () {}),
          body: NestedScrollView(
            //  floatHeaderSlivers: true,
            headerSliverBuilder: (context, innerBoxIsScrolled) {
              return <Widget>[
                SliverAppBar(
                  backgroundColor: Colors.transparent,
                  title: leading,
                  actions: [
                    Icon(
                      Icons.search,
                      size: 35,
                      color: Colors.white,
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Icon(
                      FontAwesomeIcons.user,
                      color: Colors.white,
                    ),
                    SizedBox(
                      width: 20,
                    )
                  ],
                  floating: true,
                  pinned: true,
                  snap: true,
                  flexibleSpace: SizedBox(
                    height: 30,
                  ),
                  bottom: PreferredSize(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              'TV Shows',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 17,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              'Movies',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 17,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              children: [
                                Text(
                                  'Categories',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 17,
                                  ),
                                ),
                                Icon(
                                  Icons.arrow_drop_down,
                                  color: Colors.white,
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                      preferredSize: Size.fromHeight(40)),
                ),
              ];
            },
            body: ListView(
              children: [
                HomeBanner(size: size),
                Repeat(
                    gets: nowplayingFetching(),
                    list: nowplayingList,
                    Height: 280,
                    title: 'Playing Now',
                    width: 180),
                StackCard(
                  gets: topratedFetching(),
                  list: topratedList,
                  title: 'Top Rated',
                ),
                Repeat(
                    gets: popularFetching(),
                    list: popularList,
                    Height: 200,
                    title: 'Popular',
                    width: 150),
                Repeat(
                  gets: trendingFetching(),
                  list: trendingList,
                  Height: 200,
                  title: 'Trending Movies',
                  width: 150,
                ),
              ],
            ),
          ),
        ));
  }
}
