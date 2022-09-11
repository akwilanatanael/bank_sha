// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:bank_sha/shared/theme.dart';
import 'package:bank_sha/ui/widgets/button.dart';
import 'package:bank_sha/ui/widgets/forms.dart';
import 'package:bank_sha/ui/widgets/provider_item.dart';
import 'package:flutter/material.dart';

class BuyChooseDataPage extends StatelessWidget {
  const BuyChooseDataPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Paket Data'),
      ),
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 24),
        children: [
          SizedBox(height: 30),
          Text(
            'Phone Number',
            style: blackTextStyle.copyWith(
              fontSize: 16,
              fontWeight: semibold,
            ),
          ),
          SizedBox(height: 14),
          CustomFormField(
            title: '+628',
            isShowTitle: false,
          ),
          selectPackage(),
          CustomFilledButton(
            title: 'Continue',
            onPressed: () async {
              if (await Navigator.pushNamed(context, '/pin') == true) {
                Navigator.pushNamedAndRemoveUntil(
                  context,
                  '/buy-data-success',
                  (route) => false,
                );
              }
            },
          ),
        ],
      ),
    );
  }

  Widget selectPackage() {
    return Container(
      margin: EdgeInsets.only(top: 40),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Select Package',
            style: blackTextStyle.copyWith(
              fontSize: 16,
              fontWeight: semibold,
            ),
          ),
          SizedBox(height: 14),
          Wrap(
            spacing: 17,
            runSpacing: 17,
            children: [
              ProviderPackageItem(
                amount: 10,
                price: 218000,
              ),
              ProviderPackageItem(
                amount: 10,
                price: 218000,
              ),
              ProviderPackageItem(
                amount: 40,
                price: 218000,
                isSelected: true,
              ),
              ProviderPackageItem(
                amount: 99,
                price: 218000,
              ),
            ],
          ),
          SizedBox(height: 60),
        ],
      ),
    );
  }
}
