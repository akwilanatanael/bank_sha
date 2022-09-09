// ignore_for_file: prefer_const_constructors

import 'package:bank_sha/shared/theme.dart';
import 'package:flutter/material.dart';

class SendUserItemList extends StatelessWidget {
  final String imageUrl;
  final String title;
  final String subtitle;
  final bool isVerified;
  const SendUserItemList({
    super.key,
    required this.imageUrl,
    required this.title,
    required this.subtitle,
    this.isVerified = false,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(22),
      margin: EdgeInsets.only(bottom: 14),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: whiteColor,
      ),
      child: Row(
        children: [
          Container(
            width: 45,
            height: 45,
            margin: EdgeInsets.only(right: 14),
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              image: DecorationImage(
                image: AssetImage(imageUrl),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: blackTextStyle.copyWith(
                  fontWeight: medium,
                  fontSize: 16,
                ),
              ),
              SizedBox(height: 2),
              Text(
                '@$subtitle',
                style: greyTextStyle.copyWith(
                  fontWeight: regular,
                  fontSize: 12,
                ),
              ),
            ],
          ),
          Spacer(),
          if (isVerified)
            Row(
              children: [
                Container(
                  height: 14,
                  width: 14,
                  margin: EdgeInsets.only(right: 4),
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/ic_check.png'),
                    ),
                  ),
                ),
                Text(
                  'Verified',
                  style: greenTextStyle.copyWith(
                    fontSize: 11,
                    fontWeight: medium,
                  ),
                ),
              ],
            ),
        ],
      ),
    );
  }
}

class SendUserItemSquare extends StatelessWidget {
  final String imageUrl;
  final String title;
  final String username;
  final bool isVerified;
  final bool isSelected;
  const SendUserItemSquare({
    Key? key,
    required this.imageUrl,
    required this.title,
    required this.username,
    this.isVerified = false,
    this.isSelected = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 42,
        vertical: 22,
      ),
      decoration: BoxDecoration(
        color: whiteColor,
        borderRadius: BorderRadius.circular(20),
        border: Border.all(
          width: 2,
          color: isSelected ? blueColor : whiteColor,
        ),
      ),
      child: Column(
        children: [
          Container(
              width: 70,
              height: 70,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                  image: AssetImage(imageUrl),
                ),
              ),
              child: isVerified
                  ? Align(
                      alignment: Alignment.topRight,
                      child: Container(
                        width: 16,
                        height: 16,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: whiteColor,
                        ),
                        child: Center(
                          child: Icon(
                            Icons.check_circle,
                            color: greenColor,
                            size: 14,
                          ),
                        ),
                      ),
                    )
                  : null),
          SizedBox(height: 13),
          Text(
            title,
            style: blackTextStyle.copyWith(
              fontWeight: medium,
              fontSize: 16,
            ),
          ),
          SizedBox(
            height: 2,
          ),
          Text(
            '@$username',
            style: greyTextStyle.copyWith(
              fontWeight: regular,
              fontSize: 12,
            ),
          ),
        ],
      ),
    );
  }
}
