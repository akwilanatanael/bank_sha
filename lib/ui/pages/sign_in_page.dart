// ignore_for_file: prefer_const_constructors

import 'package:bank_sha/shared/theme.dart';
import 'package:flutter/material.dart';

class SignInPage extends StatelessWidget {
  const SignInPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: lightBackgroundColor,
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 24),
        children: [
          Container(
            width: 155,
            height: 50,
            margin: EdgeInsets.only(
              top: 100,
              bottom: 100,
            ),
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/img_logo_light.png'),
              ),
            ),
          ),
          Text(
            'Sign In &\nGrow Your Finance',
            style: blackTextStyle.copyWith(
              fontSize: 20,
              fontWeight: semibold,
            ),
          ),
          SizedBox(height: 30),
          Container(
            padding: EdgeInsets.all(22),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: whiteColor,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // NOTE: EMAIL INPUT
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Email Address',
                      style: blackTextStyle.copyWith(
                        fontWeight: medium,
                        fontSize: 14,
                      ),
                    ),
                    SizedBox(height: 8),
                    TextFormField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(14),
                        ),
                        contentPadding: EdgeInsets.all(12),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 16),
                // NOTE: PASSWORD
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Password',
                      style: blackTextStyle.copyWith(
                        fontWeight: medium,
                        fontSize: 14,
                      ),
                    ),
                    SizedBox(height: 8),
                    TextFormField(
                      obscureText: true,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(14),
                        ),
                        contentPadding: EdgeInsets.all(12),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 8),
                Align(
                  alignment: Alignment.centerRight,
                  child: Text(
                    'Forgot Password',
                    style: blueTextStyle.copyWith(
                      fontWeight: regular,
                    ),
                  ),
                ),
                SizedBox(height: 30),
                SizedBox(
                  height: 50,
                  width: double.infinity,
                  child: TextButton(
                    onPressed: () {},
                    style: TextButton.styleFrom(
                      backgroundColor: purpleColor,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(56),
                      ),
                    ),
                    child: Text(
                      'Sign In',
                      style: whiteTextStyle.copyWith(
                        fontWeight: semibold,
                        fontSize: 16,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 50),
          SizedBox(
            width: double.infinity,
            child: TextButton(
              onPressed: () {},
              style: TextButton.styleFrom(
                padding: EdgeInsets.zero,
              ),
              child: Text(
                'Create New Account',
                style: greyTextStyle.copyWith(
                  fontWeight: regular,
                  fontSize: 16,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
