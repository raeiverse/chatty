import 'package:flutter/material.dart';
import 'package:chatty/theme.dart';

class ChatTile extends StatelessWidget {
  final String imageUrl;
  final String name;
  final String text;
  final String time;
  final bool read;

  ChatTile(
      {required this.imageUrl,
      required this.name,
      required this.text,
      required this.time,
      required this.read});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 16),
      child: Row(
        children: [
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
            children: [
              Text(
                name,
                style: titlestyle,
              ),
              Text(
                text,
                style: read
                    ? subtextstyle.copyWith(
                        color: blackColor,
                      )
                    : subtextstyle,
              ),
            ],
          ),
          Spacer(),
          Text(
            time,
            style: subtextstyle,
          ),
        ],
      ),
    );
  }
}
