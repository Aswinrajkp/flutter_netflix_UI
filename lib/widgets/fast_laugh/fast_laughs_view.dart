import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:netflix_clone/services/getting.dart';

class FastLaugh extends StatelessWidget {
  FastLaugh({Key? key}) : super(key: key);
PageController controller = PageController(initialPage: 0);
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          backgroundColor: Colors.black,
          body: 
         FutureBuilder(
           future: upcomigFetching(),
           builder: (BuildContext context, AsyncSnapshot snapshot) {
             return 
              PageView.builder(
            itemCount: upcomingList.length,
            controller: controller,
            scrollDirection: Axis.vertical,
            itemBuilder: (context,index){
             return
             Container(
                height: MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  image: DecorationImage(image: NetworkImage('http://image.tmdb.org/t/p/w500'+upcomingList[index]["backdrop_path"],),fit: BoxFit.fill),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(children: [
                         Icon(FontAwesomeIcons.smile,color: Colors.white,size: 35,),
                         Text('Lol',style: TextStyle(color: Colors.white,fontSize: 17,fontWeight: FontWeight.w700),) 
                        ],),
                      ),
                      Column(children: [
                       Icon(Icons.add,color: Colors.white,size: 35,),
                       Text('My List',style: TextStyle(color: Colors.white,fontSize: 17,fontWeight: FontWeight.w700),)
                      ],),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(children: [
                         Icon(FontAwesomeIcons.telegramPlane,color: Colors.white,size: 35),
                         Text('Lol',style: TextStyle(color: Colors.white,fontSize: 17,fontWeight: FontWeight.w700),)
                        ],),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(children: [
                         Icon(Icons.play_arrow_rounded,color: Colors.white,size: 35,),
                         Text('play',style: TextStyle(color: Colors.white,fontSize: 17,fontWeight: FontWeight.w700),)
                        ],),
                      ),
                    ],
                  ),
                ),
             );
          });
           },
         ),
    ),
    );
  }
  List pages = [

  ];
}
