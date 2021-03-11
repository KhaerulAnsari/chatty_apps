import 'package:flutter/material.dart';
import 'package:chatty_apps/theme.dart';

class ChatTile extends StatelessWidget {
  final String imageUrl;
  final String name;
  final String text;
  final String time;
  final bool unread;

  ChatTile({this.imageUrl, this.name, this.text, this.time, this.unread});

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
          SizedBox(
            width: 12,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                name,
                style: blackTextFont.copyWith(
                  fontSize: 16,
                ),
              ),
              Text(
                text,
                style: unread ? blackTextFont.copyWith(
                    fontSize: 14, fontWeight: FontWeight.w300) : greyTextFont,
              ),
            ],
          ),
          Spacer(),
          Text(
            time,
            style: greyTextFont,
          ),
        ],
      ),
    );
  }
}
