// ignore_for_file: prefer_const_constructors

import 'package:bank_sha/ui/widgets/button.dart';
import 'package:bank_sha/ui/widgets/profile_menu_item.dart';
import 'package:flutter/material.dart';
import 'package:bank_sha/shared/theme.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: lightBackgroundColor,
        appBar: AppBar(
          backgroundColor: lightBackgroundColor,
          elevation: 0,
          centerTitle: true,
          iconTheme: IconThemeData(
            color: blackColor,
          ),
          title: Text(
            'My Profile',
            style: blackTextStyle.copyWith(
              fontWeight: semibold,
              fontSize: 20,
            ),
          ),
        ),
        body: ListView(
          padding: EdgeInsets.symmetric(horizontal: 24),
          children: [
            SizedBox(height: 30),
            Container(
              padding: EdgeInsets.symmetric(
                horizontal: 30,
                vertical: 22,
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: whiteColor,
              ),
              child: Column(
                children: [
                  Container(
                    width: 120,
                    height: 120,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                        image: AssetImage('assets/img_profile.png'),
                      ),
                    ),
                    child: Align(
                      alignment: Alignment.topRight,
                      child: Container(
                        width: 28,
                        height: 28,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: whiteColor,
                        ),
                        child: Center(
                          child: Icon(
                            Icons.check_circle,
                            color: greenColor,
                            size: 24,
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 16),
                  Text(
                    'Shayna Hanna',
                    style: blackTextStyle.copyWith(
                      fontSize: 18,
                      fontWeight: medium,
                    ),
                  ),
                  SizedBox(height: 40),
                  ProfileMenuItem(
                    iconUrl: 'assets/ic_edit_profile.png',
                    title: 'Edit Profile',
                    margin: EdgeInsets.only(bottom: 30),
                  ),
                  ProfileMenuItem(
                    iconUrl: 'assets/ic_my_pin.png',
                    title: 'My PIN',
                    margin: EdgeInsets.only(bottom: 30),
                  ),
                  ProfileMenuItem(
                    iconUrl: 'assets/ic_wallet.png',
                    title: 'Wallet Settings',
                    margin: EdgeInsets.only(bottom: 30),
                  ),
                  ProfileMenuItem(
                    iconUrl: 'assets/ic_my_reward.png',
                    title: 'My Rewards',
                    margin: EdgeInsets.only(bottom: 30),
                  ),
                  ProfileMenuItem(
                    iconUrl: 'assets/ic_help_center.png',
                    title: 'Help Center',
                    margin: EdgeInsets.only(bottom: 30),
                  ),
                  ProfileMenuItem(
                    iconUrl: 'assets/ic_logout.png',
                    title: 'Log Out',
                  ),
                ],
              ),
            ),
            SizedBox(height: 87),
            CustomTextButton(title: 'Report a Problem'),
            SizedBox(height: 150),
          ],
        ));
  }
}
