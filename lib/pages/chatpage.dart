import 'package:flutter/material.dart';
import 'package:chatty/theme.dart';
import 'package:chatty/widgets/chat_tile.dart';
import 'package:chatty/widgets/chatroom_tile.dart';

class chatpage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: chatinput(
        imageUrl: 'assets/images/send_btn.png',
        text: 'Typing...',
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      backgroundColor: bgColor,
      body: SafeArea(
        child: ListView(
          children: [
            Column(
              children: [
                Container(
                  width: double.infinity,
                  height: 115,
                  padding: EdgeInsets.all(
                    30,
                  ),
                  decoration: BoxDecoration(
                    color: whiteColor,
                    borderRadius: BorderRadius.vertical(
                      bottom: Radius.circular(30),
                    ),
                  ),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 20,
                      ),
                      Image.asset(
                        'assets/images/group1.png',
                        height: 55,
                        width: 55,
                      ),
                      SizedBox(
                        width: 12,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Jojo Fams',
                            style: titlestyle,
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            '14,045 members',
                            style: subtextstyle,
                          ),
                        ],
                      ),
                      Spacer(),
                      Row(
                        children: [
                          Image.asset(
                            'assets/images/call_btn.png',
                            height: 65,
                            width: 65,
                          ),
                        ],
                      )
                      // ChatTile(
                      //   imageUrl: 'assets/images/group1.png',
                      //   name: 'Java Fair',
                      //   text: '10,210 members',
                      //   time: '',
                      //   read: false,
                      // ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                terima(
                  imageUrl: 'assets/images/friend.png',
                  name: 'How are ya guys?',
                  time: '2:30',
                ),
                terima(
                  imageUrl: 'assets/images/friend.png',
                  name: 'Looking for you nah',
                  time: '3:11',
                ),
                kirim(
                  imageUrl: 'assets/images/friend.png',
                  name: 'Nothing specially,\n just thinking about you',
                  time: '3:33',
                ),
                terima(
                  imageUrl: 'assets/images/friend.png',
                  name: 'Joushier',
                  time: '2 min',
                ),
                kirim(
                  imageUrl: 'assets/images/friend.png',
                  name: 'Jonathan Joushier',
                  time: '2 min',
                ),
                SizedBox(
                  height: 55,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
