import 'package:chatty_apps/theme.dart';
import 'package:chatty_apps/widgets/received_buble.dart';
import 'package:chatty_apps/widgets/sender_buber.dart';
import 'package:flutter/material.dart';

class ChatPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Widget header() {
      return Container(
        padding: EdgeInsets.only(left: 30, right: 30, bottom: 30, top: 40),
        width: double.infinity,
        decoration: BoxDecoration(
          color: whiteColor,
          borderRadius: BorderRadius.vertical(
            bottom: Radius.circular(48),
          ),
        ),
        child: Row(
          children: [
            Image.asset(
              'assets/groub1.png',
              width: 55,
              height: 55,
              fit: BoxFit.fill,
            ),
            SizedBox(
              width: 20,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Jakarta Fair',
                  style: blackTextFont.copyWith(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                Text(
                  '14.209 members',
                  style: greyTextFont,
                ),
              ],
            ),
            Spacer(),
            Image.asset(
              'assets/call_btn.png',
              width: 55,
              height: 55,
              fit: BoxFit.fill,
            ),
          ],
        ),
      );
    }

    Widget body() {
      return Expanded(
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: 30,
          ),
          child: ListView(
            children: [
              ReceiverBubble(
                imageUrl: 'assets/friend1.png',
                text: 'How are ya guys?',
                time: '2:30',
              ),
              ReceiverBubble(
                imageUrl: 'assets/friend2.png',
                text: 'Find here..',
                time: '3:11',
              ),
              SenderBubble(
                imageUrl: 'assets/friend3.png',
                text: 'Thinking about how to deal with this client from hell..',
                time: '22:08',
              ),
              ReceiverBubble(
                imageUrl: 'assets/friend2.png',
                text: 'Find here..',
                time: '23:11',
              ),
            ],
          ),
        ),
      );
    }

    Widget chatField() {
      return Container(
        margin: EdgeInsets.symmetric(horizontal: 30),
        padding: EdgeInsets.symmetric(
          vertical: 10,
          horizontal: 20,
        ),
        width: double.infinity,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Row(
          children: [
            Expanded(
              child: TextField(
                decoration: InputDecoration.collapsed(
                  hintText: 'Type message..',
                  hintStyle: greyTextFont.copyWith(
                    fontSize: 14,
                  ),
                ),
              ),
            ),
            InkWell(
              onTap: () {
                print('tapped');
              },
              child: Image.asset(
                'assets/send_btn.png',
                width: 35,
              ),
            ),
          ],
        ),
      );
    }

    return Scaffold(
      backgroundColor: Color(0xffF8FAFC),
      floatingActionButton: chatField(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      body: SafeArea(
        top: false,
        child: Column(
          children: [
            header(),
            body(),
          ],
        ),
      ),
    );
  }
}