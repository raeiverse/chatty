import 'package:flutter/material.dart';
import 'package:chatty/theme.dart';

class ChatTile extends StatelessWidget {
  final imageUrl;
  final name;
  final text;
  final time;
  final bool read;
  ChatTile(
      {this.imageUrl, this.name, this.text, this.time, required this.read});

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
