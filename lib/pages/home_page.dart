import 'dart:ffi';

import 'package:chatty_apps/pages/chat_page.dart';
import 'package:chatty_apps/theme.dart';
import 'package:chatty_apps/widgets/chat_tile.dart';
import 'package:chatty_apps/widgets/grups_tile.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: blueColor,
      floatingActionButton: FloatingActionButton(
        backgroundColor: greenColor,
        onPressed: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) {
            return ChatPage();
          }));
        },
        child: Icon(
          Icons.add,
          size: 28,
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      body: SafeArea(
        child: Center(
          child: Stack(
            children: [
              Center(
                child: Column(
                  children: <Widget>[
                    SizedBox(
                      height: 40,
                    ),
                    Image.asset(
                      'assets/profile1.png',
                      width: 100,
                      height: 100,
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      "Sabrina Carpenter",
                      style: whiteTextFont.copyWith(
                        fontSize: 20,
                      ),
                    ),
                    SizedBox(
                      height: 2,
                    ),
                    Text(
                      "Travel Freelancer",
                      style: lightBlueTextStyle,
                    ),
                    SizedBox(
                      height: 30,
                    ),
                  ],
                ),
              ),
              ListView(
                children: <Widget>[
                  Column(
                    children: <Widget>[
                      Container(
                        margin: EdgeInsets.only(top: 246),
                        width: double.infinity,
                        padding: EdgeInsets.all(30),
                        decoration: BoxDecoration(
                          color: whiteColor,
                          borderRadius: BorderRadius.vertical(
                            top: Radius.circular(40),
                          ),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              "Friends",
                              style: blackTextFont,
                            ),
                            ChatTile(
                              imageUrl: 'assets/friend1.png',
                              name: 'Joshuer',
                              text: 'Sorry, you’re not my ty...',
                              time: 'Now',
                              unread: true,
                            ),
                            ChatTile(
                              imageUrl: 'assets/friend2.png',
                              name: 'Gabriella',
                              text: 'I saw it clearly and mig...',
                              time: '2:30',
                              unread: false,
                            ),
                            SizedBox(
                              height: 30,
                            ),
                            Text(
                              "Groups",
                              style: blackTextFont,
                            ),
                            GroupsTile(
                              imageUrl: 'assets/groub1.png',
                              name: 'Jakarta Fair',
                              text: 'Why does everyone ca...',
                              time: '11:11',
                              unread: false,
                            ),
                            GroupsTile(
                              imageUrl: 'assets/groub2.png',
                              name: 'Angga',
                              text: 'Here here we can go...',
                              time: '7:11',
                              unread: true,
                            ),
                            GroupsTile(
                              imageUrl: 'assets/groub3.png',
                              name: 'Bentley',
                              text: 'The car which does not...',
                              time: '7:11',
                              unread: true,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
