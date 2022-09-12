// ignore_for_file: prefer_const_constructors

import 'package:bank_sha/shared/shared_methods.dart';
import 'package:bank_sha/shared/theme.dart';
import 'package:bank_sha/ui/widgets/button.dart';
import 'package:bank_sha/ui/widgets/provider_item.dart';
import 'package:flutter/material.dart';

class BuyDataPage extends StatelessWidget {
  const BuyDataPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Beli Data'),
      ),
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 24),
        children: [
          SizedBox(height: 30),
          Text(
            'From Wallet',
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
                width: 80,
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
                    'Balance: ${formatCurrency(12500)}',
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
            'Select Provider',
            style: blackTextStyle.copyWith(
              fontWeight: semibold,
              fontSize: 16,
            ),
          ),
          SizedBox(height: 14),
          ProviderItem(
            imageUrl: 'assets/img_provider_telkomsel.png',
            title: 'Telkomsel',
            subtitle: 'Available',
            isSelected: true,
          ),
          ProviderItem(
            imageUrl: 'assets/img_provider_indosat.png',
            title: 'Indosat',
            subtitle: 'Available',
          ),
          ProviderItem(
            imageUrl: 'assets/img_provider_singtel.png',
            title: 'Singtel',
            subtitle: 'Available',
          ),
          SizedBox(
            height: 135,
          ),
          CustomFilledButton(
            title: 'Continue',
            onPressed: () {
              Navigator.pushNamed(context, '/choose-data');
            },
          ),
          SizedBox(
            height: 57,
          ),
        ],
      ),
    );
  }
}
