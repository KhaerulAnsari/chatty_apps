import 'package:flutter/material.dart';
import 'package:chatty_apps/theme.dart';

class GroupsTile extends StatelessWidget {
  final String imageUrl;
  final String name;
  final String text;
  final String time;
  final bool unread;

  GroupsTile({this.imageUrl, this.name, this.text, this.time, this.unread});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 16),
      child: Row(
        children: <Widget>[
          Image.asset(
            imageUrl,
            width: 55,
            height: 55,
          ),
          SizedBox(width: 12,),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                name,
                style: blackTextFont,
              ),
              Text(
                text,
                style: unread ? blackTextFont.copyWith(fontWeight: FontWeight.w400, fontSize: 14) : greyTextFont,
              )
            ],
          ),
          Spacer(),
          Text(time, style: greyTextFont,),
        ],
      ),
    );
  }
}
