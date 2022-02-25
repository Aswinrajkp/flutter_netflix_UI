import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class AppbarWidget extends StatelessWidget {
  AppbarWidget({Key? key, required this.leading}) : super(key: key);

  final leading;

  var style1 =
      TextStyle(color: Colors.white, fontSize: 25, fontWeight: FontWeight.bold);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          width: 20,
        ),
        Text(leading, style: style1),
        Spacer(),
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
    );
  }
}
