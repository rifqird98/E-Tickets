import 'package:flutter/material.dart';

import '../../shared/theme.dart';

class SeatItem extends StatelessWidget {
//NOTE 0.AVAILABLE 1.SELECTED 2.UNAVAILABLE
  final int status;

  const SeatItem({
    Key? key,
    required this.status,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    backgroundcalor() {
      switch (status) {
        case 0:
          return kAvailableSeat;
        case 1:
          return kPrimaryColor;
        case 2:
          return kUnavailableSeat;
        default:
          return kUnavailableSeat;
      }
    }

    borderCalor() {
      switch (status) {
        case 0:
          return kPrimaryColor;
        case 1:
          return kPrimaryColor;
        case 2:
          return kUnavailableSeat;
        default:
          return kUnavailableSeat;
      }
    }

    child() {
      switch (status) {
        case 0:
          return SizedBox();
        case 1:
          return Center(
            child: Text(
              'YOU',
              style:
                  whiteTextStyle.copyWith(fontSize: 16, fontWeight: semiBold),
            ),
          );
        case 2:
          return SizedBox();
        default:
          return SizedBox();
      }
    }

    return Container(
      width: 48,
      height: 48,
      margin: EdgeInsets.only(top: 16),
      decoration: BoxDecoration(
        color: backgroundcalor(),
        borderRadius: BorderRadius.circular(15),
        border: Border.all(
          color: borderCalor(),
        ),
      ),
      child: child(),
    );
  }
}
