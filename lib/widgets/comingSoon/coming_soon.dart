import 'package:flutter/material.dart';

class Coming extends StatelessWidget {
  Coming(
      {Key? key,
      required this.image,
      required this.title,
      required this.subtitle,
      required this.date})
      : super(key: key);
  final image;
  final title;
  final subtitle;
  final date;
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey.shade800,
      height: 80,
      child: Row(
        children: [
          Padding(
              padding: const EdgeInsets.all(8.0),
              child: Icon(
                Icons.circle,
                color: Colors.red,
                size: 10,
              )),
          Stack(
            children: [
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(7),
                  color: Colors.white24,
                ),
                margin: EdgeInsets.only(left: 12, top: 8),
                height: 65,
                width: 130,
              ),
              Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(7),
                    color: Colors.white38),
                margin: EdgeInsets.only(left: 6, top: 5),
                height: 65,
                width: 130,
              ),
              Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(7),
                    image: DecorationImage(
                        image: NetworkImage(image), fit: BoxFit.fill)),
                height: 65,
                width: 130,
              )
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(left: 18),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(0, 8, 0, 0),
                  child: Text(
                    title,
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 17,
                        fontWeight: FontWeight.w400),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(0, 5, 0, 8),
                  child: Text(
                    subtitle,
                    style: TextStyle(color: Colors.white, fontSize: 15),
                  ),
                ),
                Text(
                  date,
                  style: TextStyle(
                    color: Colors.white.withOpacity(0.5),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
