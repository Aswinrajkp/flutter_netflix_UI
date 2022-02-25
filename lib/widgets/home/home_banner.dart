import 'package:flutter/material.dart';
import 'package:netflix_clone/services/getting.dart';

class HomeBanner extends StatelessWidget {
  HomeBanner({Key? key, required this.size}) : super(key: key);
  Size size;
  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.topCenter,
      children: [
        Container(
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: NetworkImage(
                   'http://image.tmdb.org/t/p/w500'+nowplayingList[1]['backdrop_path']),
                  fit: BoxFit.fill)),
          foregroundDecoration: const BoxDecoration(
            // gradient: LinearGradient(
            //   begin: Alignment.bottomCenter,
            //   end: Alignment.center,
            //   colors: [Colors.black, Colors.black38, Colors.transparent],
            // ),
          ),
          height: size.height * .5,
          child: Padding(
            padding: const EdgeInsets.only(bottom: 50),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Padding(
                  padding: const EdgeInsets.only(bottom: 20),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Icon(
                        Icons.add,
                        color: Colors.white,
                        size: 40,
                      ),
                      Text('My List', style: TextStyle(color: Colors.white))
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 20),
                  child: Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.play_arrow_rounded),
                        Text(
                          'Play',
                          style: TextStyle(color: Colors.black,fontSize: 15,fontWeight: FontWeight.w500),
                        ),
                      ],
                    ),
                    height: 45,
                    width: 100,
                    color: Colors.white,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 12),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Icon(
                        Icons.info_outline,
                        color: Colors.white,
                        size: 40,
                      ),
                      Text(
                        'Info',
                        style: TextStyle(color: Colors.white),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ],
    );
  }
}
