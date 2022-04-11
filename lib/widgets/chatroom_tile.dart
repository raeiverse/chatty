import 'package:flutter/material.dart';
import 'package:chatty/theme.dart';

class terima extends StatelessWidget {
  final imageUrl;
  final name;
  final time;
  terima({this.imageUrl, this.name, this.time});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: 30),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          SizedBox(
            width: 30,
          ),
          Image.asset(
            imageUrl,
            width: 40,
            height: 40,
          ),
          SizedBox(
            width: 12,
          ),
          Container(
            padding: EdgeInsets.symmetric(
              vertical: 11,
              horizontal: 20,
            ),
            decoration: BoxDecoration(
              color: greyColor,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(25),
                topRight: Radius.circular(25),
                bottomRight: Radius.circular(25),
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  name,
                  style: substyle,
                ),
                Text(
                  time,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class kirim extends StatelessWidget {
  final imageUrl;
  final name;
  final time;
  kirim({this.imageUrl, this.name, this.time});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        bottom: 30,
        right: 30,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              SizedBox(
                width: 30,
              ),
              Container(
                padding: EdgeInsets.symmetric(
                  vertical: 11,
                  horizontal: 20,
                ),
                decoration: BoxDecoration(
                  color: whiteColor,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(25),
                    topRight: Radius.circular(25),
                    bottomLeft: Radius.circular(25),
                  ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(
                      name,
                      style: substyle,
                    ),
                    Text(
                      time,
                      style: timestyle,
                    ),
                  ],
                ),
              ),
              SizedBox(
                width: 12,
              ),
              Image.asset(
                imageUrl,
                width: 40,
                height: 40,
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class chatinput extends StatelessWidget {
  final imageUrl;
  final text;
  chatinput({
    this.imageUrl,
    this.text,
  });
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 315,
      height: 54,
      padding: EdgeInsets.all(
        16,
      ),
      decoration: BoxDecoration(
        color: whiteColor,
        borderRadius: BorderRadius.circular(
          30,
        ),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            text,
          ),
          Image.asset(
            imageUrl,
            height: 50,
            width: 50,
          ),
        ],
      ),
    );
  }
}
