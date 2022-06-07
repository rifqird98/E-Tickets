import 'package:flutter/material.dart';

import '../../shared/theme.dart';

class CustomTextFiled extends StatelessWidget {
  final String title;
  final String hinText;
  final bool obscureText;

  const CustomTextFiled({
    Key? key,
    required this.title,
    required this.hinText,
    this.obscureText = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(title),
          SizedBox(
            height: 6,
          ),
          TextFormField(
            obscureText: obscureText,
            cursorColor: kBlackColor,
            decoration: InputDecoration(
              hintText: hinText,
              border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(defauldRadius)),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(
                  defauldRadius,
                ),
                borderSide: BorderSide(color: kPrimaryColor),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
