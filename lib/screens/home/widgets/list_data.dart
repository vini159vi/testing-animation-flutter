import 'package:flutter/material.dart';

class ListData extends StatelessWidget {
  final String title;
  final String subtitle;
  final DecorationImage image;
  final EdgeInsets margin;

  ListData({@required this.title,@required  this.subtitle,@required  this.image,@required  this.margin});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: margin,
      decoration: BoxDecoration(
          color: Colors.white,
          border: Border(
              top: BorderSide(color: Colors.grey, width: 1.0),
              bottom: BorderSide(color: Colors.grey, width: 1.0))),
      child: Row(
        children: <Widget>[
          Container(
            margin:  EdgeInsets.only(top: 8, bottom: 8, left: 16, right: 16),
            width: 60,
            height: 60,
            decoration: BoxDecoration(image: image),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                title,
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.w400),
              ),
              SizedBox(
                height: 5,
              ),
              Text(
                subtitle,
                style: TextStyle(
                    fontSize: 14,
                    color: Colors.grey,
                    fontWeight: FontWeight.w300),
              )
            ],
          )
        ],
      ),
    );
  }
}
