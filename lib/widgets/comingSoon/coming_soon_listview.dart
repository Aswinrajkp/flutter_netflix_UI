import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ComingListview extends StatelessWidget {
  ComingListview(
      {Key? key,
      required this.height,
      required this.uri,
      required this.name,
      required this.date,
      this.subtitle})
      : super(key: key);
  final height;
  String uri;
  String name;
  var date;
  var subtitle;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 14),
          child: Container(
            child: Icon(
              Icons.play_circle_outline_outlined,
              color: Colors.white,
              size: 60,
            ),
            height: height,
            width: double.infinity,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: NetworkImage('http://image.tmdb.org/t/p/w500'+uri), fit: BoxFit.fill,
                // onError: (exception, stackTrace) => Text('error widget')
              ),
//                  Image.network('Your image url...',
//     errorBuilder: (BuildContext context, Object exception, StackTrace stackTrace) {
//         return Text('Your error widget...');
//     },
// ),
            ),
          ),
        ),
        Container(
          height: 90,
          width: double.infinity,
          child: Row(
            children: [
              Spacer(),
              Padding(
                padding: const EdgeInsets.all(13.0),
                child: Column(
                  children: [
                    Icon(
                      FontAwesomeIcons.bell,
                      color: Colors.white,
                      size: 30,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        "Reminder Me",
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(13.0),
                child: Column(
                  children: [
                    Icon(
                      FontAwesomeIcons.infoCircle,
                      color: Colors.white,
                      size: 30,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child:
                          Text("info", style: TextStyle(color: Colors.white)),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
        SizedBox(
          height: 15,
        ),
        Text(
          "Coming date $date",
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            name,
            style: TextStyle(
                color: Colors.white, fontSize: 18, fontWeight: FontWeight.w900),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            subtitle,
            style:
                TextStyle(color: Colors.white.withOpacity(0.5), fontSize: 15),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            "Serial * Dark * Emotional * Mystery * Drama * Ensemble * Indian",
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.w500),
          ),
        ),
      ],
    );
  }
}
