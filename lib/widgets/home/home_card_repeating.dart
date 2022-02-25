import 'package:flutter/material.dart';
import 'package:netflix_clone/services/getting.dart';

class Repeat extends StatelessWidget {
   Repeat({Key? key, required this.gets, required this.list,required this.Height,required this.title,required this.width}) : super(key: key);
   var gets;
   List list;
   double Height;
   String title;
   double width;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(title,style: TextStyle(color: Colors.white,fontSize: 24,fontWeight: FontWeight.w900),),
          ),
          SizedBox(
           height: Height,
        child:   FutureBuilder(
             future: gets,
             builder: (BuildContext context, AsyncSnapshot snapshot) {
                if (snapshot.hasData){
               return 
               ListView.builder(
              shrinkWrap: true,
              physics: ScrollPhysics(),
              scrollDirection: Axis.horizontal,
              itemCount: list.length,
              itemBuilder: (BuildContext context, int index) {
               String uri =list[index]['poster_path'];
                return 
               Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                     width: width,
                    decoration: BoxDecoration(
                      image: DecorationImage(image: NetworkImage('http://image.tmdb.org/t/p/w500'+uri),fit: BoxFit.cover),
                      borderRadius: BorderRadius.circular(10)
                    ),
                  ),
                );
              }
            );
                }
                else{
                 return CircularProgressIndicator();
                }
             },
           ),
          ),
      ],
    );
  }
}