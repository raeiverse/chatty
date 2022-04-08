import 'package:chatty/theme.dart';
import 'package:chatty/widgets/chat_tile.dart';
import 'package:flutter/material.dart';

class homepage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: blueColor,
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: greenColor,
        child: Icon(
          Icons.add,
          size: 28,
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Center(
            child: Column(
              children: [
                SizedBox(
                  height: 40,
                ),
                Image.asset(
                  'assets/images/profil.png',
                  height: 100,
                  width: 100,
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  'Sabrina Carpenter',
                  style: TextStyle(
                    fontSize: 20,
                    color: whiteColor,
                  ),
                ),
                SizedBox(
                  height: 2,
                ),
                Text(
                  'Travel Freelancer',
                  style: TextStyle(
                    fontSize: 16,
                    color: lightblueColor,
                    fontWeight: FontWeight.w300,
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Container(
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
                    children: [
                      Text(
                        'Friends',
                        style: titlestyle,
                      ),
                      ChatTile(
                        imageUrl: 'assets/images/friend.png',
                        name: 'Jousher',
                        text: 'Maaf putus putus',
                        time: '3 min lalu',
                        read: true,
                      ),
                      ChatTile(
                        imageUrl: 'assets/images/friend2.png',
                        name: 'Gabriela',
                        text: 'Saya sedang sibuk!',
                        time: 'Now',
                        read: false,
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Text(
                        'Group',
                        style: titlestyle,
                      ),
                      ChatTile(
                        imageUrl: 'assets/images/group1.png',
                        name: 'Java Fair',
                        text: 'Grand Opening Soon!',
                        time: '11/4',
                        read: true,
                      ),
                      ChatTile(
                        imageUrl: 'assets/images/group2.png',
                        name: 'Accel',
                        text: 'Accel the World',
                        time: '13.47',
                        read: false,
                      ),
                      SizedBox(
                        height: 50,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
