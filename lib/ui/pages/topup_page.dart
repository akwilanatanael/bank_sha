// ignore_for_file: prefer_const_constructors

import 'package:bank_sha/shared/theme.dart';
import 'package:bank_sha/ui/widgets/button.dart';
import 'package:bank_sha/ui/widgets/top_up_bank_item.dart';
import 'package:flutter/material.dart';

class TopUpPage extends StatelessWidget {
  const TopUpPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Top Up'),
      ),
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 24),
        children: [
          SizedBox(height: 30),
          Text(
            'Wallet',
            style: blackTextStyle.copyWith(
              fontSize: 16,
              fontWeight: semibold,
            ),
          ),
          SizedBox(height: 10),
          Row(
            children: [
              Image.asset(
                'assets/img_wallet.png',
                height: 55,
              ),
              SizedBox(width: 16),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    '8008 2208 1996',
                    style: blackTextStyle.copyWith(
                      fontSize: 16,
                      fontWeight: medium,
                    ),
                  ),
                  SizedBox(height: 2),
                  Text(
                    'Angga Rizky',
                    style: greyTextStyle.copyWith(
                      fontSize: 12,
                      fontWeight: regular,
                    ),
                  ),
                ],
              ),
            ],
          ),
          SizedBox(height: 40),
          Text(
            'Select Bank',
            style: blackTextStyle.copyWith(
              fontWeight: semibold,
              fontSize: 16,
            ),
          ),
          SizedBox(height: 14),
          TopUpBankItem(
            imageUrl: 'assets/img_bank_bca.png',
            title: 'Bank BCA',
            subtitle: '50 mins',
            isSelected: true,
          ),
          TopUpBankItem(
            imageUrl: 'assets/img_bank_bni.png',
            title: 'Bank BNI',
            subtitle: '50 mins',
          ),
          TopUpBankItem(
            imageUrl: 'assets/img_bank_mandiri.png',
            title: 'Bank Mandiri',
            subtitle: '50 mins',
          ),
          TopUpBankItem(
            imageUrl: 'assets/img_bank_ocbc.png',
            title: 'Bank OCBC',
            subtitle: '50 mins',
          ),
          SizedBox(
            height: 12,
          ),
          CustomFilledButton(
            title: 'Continue',
            onPressed: () {
              Navigator.pushNamed(context, '/topup-amount');
            },
          ),
          SizedBox(
            height: 150,
          ),
        ],
      ),
    );
  }
}
