import 'package:chatty_apps/theme.dart';
import 'package:flutter/material.dart';

class ReceiverBubble extends StatelessWidget {
  final imageUrl;
  final text;
  final time;

  ReceiverBubble({this.imageUrl, this.text, this.time});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: 20),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: <Widget>[
          Image.asset(
            imageUrl,
            width: 40,
            height: 40,
          ),
          SizedBox(
            width: 12,
          ),
          Flexible(
            child: Container(
              padding: EdgeInsets.symmetric(
                horizontal: 16,
                vertical: 10,
              ),
              decoration: BoxDecoration(
                color: Color(0xFFEBEFF3),
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20),
                    bottomRight: Radius.circular(20)),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Text(
                    text,
                    style: blackTextFont.copyWith(
                      color: Color(0xFF505C6B),
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    time,
                    style: greyTextFont.copyWith(color: blackColor),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
