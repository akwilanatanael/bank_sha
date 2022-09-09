// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

import '../../shared/theme.dart';

class CustomFormField extends StatelessWidget {
  final String title;
  final bool obscureText;
  final TextEditingController? controller;
  final bool isShowTitle;

  const CustomFormField({
    Key? key,
    required this.title,
    this.obscureText = false,
    this.controller,
    this.isShowTitle = true,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (isShowTitle)
          Text(
            title,
            style: blackTextStyle.copyWith(
              fontWeight: medium,
              fontSize: 14,
            ),
          ),
        if (isShowTitle) SizedBox(height: 8),
        TextFormField(
          obscureText: obscureText,
          controller: controller,
          decoration: InputDecoration(
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(14),
            ),
            contentPadding: EdgeInsets.all(12),
            hintText: !isShowTitle ? title : null,
          ),
        ),
      ],
    );
  }
}
