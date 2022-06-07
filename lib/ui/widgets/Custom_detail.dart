import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import '../../shared/theme.dart';

class BookingDetail extends StatelessWidget {
  final String valueText;
  final String paket;
  final Color valueColor;

  const BookingDetail({
    Key? key,
    required this.paket,
    required this.valueText,
    required this.valueColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 16),
      child: Row(
        children: [
          Container(
            margin: EdgeInsets.only(right: 6),
            width: 16,
            height: 16,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/icon_check.png'),
              ),
            ),
          ),
          Text(
            paket,
            style: blackTextStyle.copyWith(fontSize: 14, fontWeight: light),
          ),
          Spacer(),
          Text(
            valueText,
            style: blackTextStyle.copyWith(
                fontSize: 14, fontWeight: semiBold, color: valueColor),
          ),
        ],
      ),
    );
  }
}
