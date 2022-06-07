import 'package:air_plane/ui/widgets/custom_buton.dart';
import 'package:air_plane/ui/widgets/custom_textfiled.dart';
import 'package:flutter/material.dart';
import '../../shared/theme.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget title() {
      return Container(
        margin: EdgeInsets.only(top: 50),
        child: Text(
          'Join us and get \n your next journy',
          style: blackTextStyle.copyWith(
            fontSize: 24,
            fontWeight: semiBold,
          ),
        ),
      );
    }

    Widget inputSection() {
      Widget nameInput() {
        return CustomTextFiled(title: 'Full Name', hinText: 'Insert Your Name');
      }

      Widget emailInput() {
        return CustomTextFiled(
            title: 'Email Addres', hinText: 'Insert Your Email');
      }

      Widget PasswordInput() {
        return CustomTextFiled(
          title: 'Password',
          hinText: 'Insert Your Password',
          obscureText: true,
        );
      }

      Widget ProfessionInput() {
        return CustomTextFiled(
            title: 'Profession', hinText: 'Insert Your Profession');
      }

      Widget submidButton() {
        return Custombutton(
            title: 'Get Started',
            onPressed: () {
              Navigator.pushNamed(context, '/bonus');
            });
      }

      return Container(
        margin: EdgeInsets.only(top: 30),
        padding: EdgeInsets.symmetric(
          horizontal: 20,
          vertical: 30,
        ),
        decoration: BoxDecoration(
          color: kWhiteColor,
          borderRadius: BorderRadius.circular(defauldRadius),
        ),
        child: Column(
          children: [
            nameInput(),
            emailInput(),
            PasswordInput(),
            ProfessionInput(),
            submidButton(),
          ],
        ),
      );
    }

    Widget tacButton() {
      return Container(
        alignment: Alignment.center,
        margin: EdgeInsets.only(bottom: 73, top: 50),
        child: Text(
          'Term and Condition',
          style: grayTextStyle.copyWith(
            fontSize: 16,
            fontWeight: light,
            decoration: TextDecoration.underline,
          ),
        ),
      );
    }

    return Scaffold(
      backgroundColor: kBackgroundColor,
      body: SafeArea(
        child: ListView(
          padding: EdgeInsets.symmetric(
            horizontal: defauldMargin,
          ),
          children: [
            title(),
            inputSection(),
            tacButton(),
          ],
        ),
      ),
    );
  }
}
