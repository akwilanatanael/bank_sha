// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:bank_sha/shared/theme.dart';
import 'package:bank_sha/ui/widgets/button.dart';
import 'package:bank_sha/ui/widgets/forms.dart';
import 'package:bank_sha/ui/widgets/send_user_item.dart';
import 'package:flutter/material.dart';

class TransferPage extends StatelessWidget {
  const TransferPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Transfer'),
      ),
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 24),
        children: [
          SizedBox(height: 30),
          Text(
            'Search',
            style: blackTextStyle.copyWith(
              fontSize: 16,
              fontWeight: semibold,
            ),
          ),
          SizedBox(height: 14),
          CustomFormField(
            title: 'by username',
            isShowTitle: false,
          ),
          buildResult(),
          SizedBox(height: 250),
          CustomFilledButton(
            title: 'Continue',
            onPressed: () {
              Navigator.pushNamed(context, '/transfer-amount');
            },
          ),
        ],
      ),
    );
  }

  Widget buildRecentUser() {
    return Container(
      margin: EdgeInsets.only(top: 40),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Recent User',
            style: blackTextStyle.copyWith(
              fontSize: 16,
              fontWeight: semibold,
            ),
          ),
          SizedBox(height: 14),
          SendUserItemList(
            imageUrl: 'assets/img_friend1.png',
            title: 'Yonna Jie',
            subtitle: 'yoenna',
            isVerified: true,
          ),
          SendUserItemList(
            imageUrl: 'assets/img_friend3.png',
            title: 'John Hi',
            subtitle: 'jhi',
          ),
          SendUserItemList(
            imageUrl: 'assets/img_friend4.png',
            title: 'Masayoshi',
            subtitle: 'form',
          ),
        ],
      ),
    );
  }

  Widget buildResult() {
    return Container(
      margin: EdgeInsets.only(top: 40),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Result',
            style: blackTextStyle.copyWith(
              fontSize: 16,
              fontWeight: semibold,
            ),
          ),
          SizedBox(height: 14),
          Wrap(
            spacing: 16,
            runSpacing: 17,
            children: [
              SendUserItemSquare(
                imageUrl: 'assets/img_friend1.png',
                title: 'Yonna Jie',
                username: 'yoenna',
                isVerified: true,
              ),
              SendUserItemSquare(
                imageUrl: 'assets/img_friend3.png',
                title: 'Yonne ka',
                username: 'yoenyu',
                isSelected: true,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
