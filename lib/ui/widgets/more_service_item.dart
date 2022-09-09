// ignore_for_file: prefer_const_constructors

import 'package:bank_sha/shared/theme.dart';
import 'package:flutter/material.dart';

class MoreServiceItem extends StatelessWidget {
  final String title;
  final String imageUrl;
  final VoidCallback? onPressed;
  const MoreServiceItem({
    super.key,
    required this.imageUrl,
    required this.title,
    this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        GestureDetector(
          onTap: onPressed,
          child: Container(
            width: 70,
            height: 70,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: whiteColor,
            ),
            child: Center(
              child: Image.asset(
                imageUrl,
                width: 26,
              ),
            ),
          ),
        ),
        SizedBox(height: 8),
        Text(
          title,
          style: blackTextStyle.copyWith(
            fontSize: 14,
            fontWeight: medium,
          ),
        ),
      ],
    );
  }
}
