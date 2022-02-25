import 'package:bordered_text/bordered_text.dart';
import 'package:flutter/material.dart';

class StackCard extends StatelessWidget {
  StackCard(
      {Key? key, required this.gets, required this.list, required this.title})
      : super(key: key);
  var gets;
  List list;
  String title;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            title,
            style: TextStyle(
                color: Colors.white, fontSize: 24, fontWeight: FontWeight.w900),
          ),
        ),
        SizedBox(
          height: 200,
          child: FutureBuilder(
            future: gets,
            builder: (BuildContext context, AsyncSnapshot snapshot) {
              if (snapshot.hasData) {
                return ListView.builder(
                    shrinkWrap: true,
                    physics: ScrollPhysics(),
                    scrollDirection: Axis.horizontal,
                    itemCount: 10,
                    itemBuilder: (BuildContext context, int index) {
                      String uri = list[index]['poster_path'];
                      return Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Stack(
                          alignment: Alignment.bottomLeft,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 30),
                              child: Container(
                                width: 135,
                                decoration: BoxDecoration(
                                    image: DecorationImage(
                                        image: NetworkImage(
                                            'http://image.tmdb.org/t/p/w500' +
                                                uri),
                                        fit: BoxFit.fill),
                                    borderRadius: BorderRadius.circular(6)),
                              ),
                            ),
                            Positioned(
                              left: -18,
                              bottom: -29,
                              child: BorderedText(
                                strokeWidth: 6.0,
                                strokeColor: Colors.white,
                                child: Text('${index + 1}' ,style: TextStyle(
                                  fontSize: 120,
                                  color: Colors.black,
                                  fontWeight: FontWeight.w700,
                                ),)))
                          ],
                        ),
                      );
                    });
              } else {
                return CircularProgressIndicator();
              }
            },
          ),
        ),
      ],
    );
  }
}
