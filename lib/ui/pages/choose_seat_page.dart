import 'package:air_plane/shared/theme.dart';
import 'package:air_plane/ui/pages/checkout_page.dart';
import 'package:air_plane/ui/pages/detail_page.dart';
import 'package:air_plane/ui/widgets/custom_buton.dart';
import 'package:air_plane/ui/widgets/cutom_seatitem.dart';
import 'package:flutter/material.dart';

class ChooseSeatPage extends StatelessWidget {
  const ChooseSeatPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget title() {
      return Container(
        margin: EdgeInsets.only(top: 60),
        child: Text(
          'Select Your\n Favorite Seat',
          style: blackTextStyle.copyWith(
            fontSize: 24,
            fontWeight: semiBold,
          ),
        ),
      );
    }

    Widget seatStatus() {
      return Container(
        margin: EdgeInsets.only(top: 30),
        child: Row(
          children: [
            Container(
              width: 16,
              height: 16,
              margin: EdgeInsets.only(right: 6),
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/icon_available.png'),
                ),
              ),
            ),
            Text(
              'Available',
              style: blackTextStyle,
            ),
            Container(
              width: 16,
              height: 16,
              margin: EdgeInsets.only(right: 6, left: 10),
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/icon_selected.png'),
                ),
              ),
            ),
            Text(
              'Selected',
              style: blackTextStyle,
            ),
            Container(
              width: 16,
              height: 16,
              margin: EdgeInsets.only(left: 10, right: 6),
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/icon_unavailable.png'),
                ),
              ),
            ),
            Text(
              'Unavailable',
              style: blackTextStyle,
            ),
          ],
        ),
      );
    }

    Widget selectSeat() {
      return Container(
        margin: EdgeInsets.only(top: 30),
        width: double.infinity,
        padding: EdgeInsets.symmetric(
          horizontal: 22,
          vertical: 30,
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(18),
          color: kWhiteColor,
        ),
        child: Column(
          children: [
            //NOTE SITE INDICATOR
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  width: 48,
                  height: 48,
                  child: Center(
                    child: Text(
                      'A',
                      style: blackTextStyle.copyWith(fontSize: 16),
                    ),
                  ),
                ),
                Container(
                  width: 48,
                  height: 48,
                  child: Center(
                    child: Text(
                      'B',
                      style: blackTextStyle.copyWith(fontSize: 16),
                    ),
                  ),
                ),
                Container(
                  width: 48,
                  height: 48,
                  child: Center(
                    child: Text(
                      '',
                      style: blackTextStyle.copyWith(fontSize: 16),
                    ),
                  ),
                ),
                Container(
                  width: 48,
                  height: 48,
                  child: Center(
                    child: Text(
                      'C',
                      style: blackTextStyle.copyWith(fontSize: 16),
                    ),
                  ),
                ),
                Container(
                  width: 48,
                  height: 48,
                  child: Center(
                    child: Text(
                      'D',
                      style: blackTextStyle.copyWith(fontSize: 16),
                    ),
                  ),
                ),
              ],
            ),
            //NOTE SITE 1
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                //SEAT 1
                SeatItem(
                  status: 0,
                ),
                SeatItem(
                  status: 0,
                ),
                Container(
                  width: 48,
                  height: 48,
                  margin: EdgeInsets.only(top: 16),
                  child: Center(
                    child: Text(
                      '1',
                      style: blackTextStyle.copyWith(
                        fontSize: 16,
                      ),
                    ),
                  ),
                ),
                SeatItem(
                  status: 2,
                ),
                SeatItem(
                  status: 0,
                ),
              ],
            ),

            //NOTE SITE 2
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                //SEAT 2
                SeatItem(
                  status: 0,
                ),
                SeatItem(
                  status: 0,
                ),
                Container(
                  width: 48,
                  height: 48,
                  margin: EdgeInsets.only(top: 16),
                  child: Center(
                    child: Text(
                      '2',
                      style: blackTextStyle.copyWith(
                        fontSize: 16,
                      ),
                    ),
                  ),
                ),
                SeatItem(
                  status: 0,
                ),
                SeatItem(
                  status: 0,
                ),
              ],
            ),

            //NOTE SITE 3
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                //SEAT 3
                SeatItem(
                  status: 2,
                ),
                SeatItem(
                  status: 2,
                ),
                Container(
                  width: 48,
                  height: 48,
                  margin: EdgeInsets.only(top: 16),
                  child: Center(
                    child: Text(
                      '3',
                      style: blackTextStyle.copyWith(
                        fontSize: 16,
                      ),
                    ),
                  ),
                ),
                SeatItem(
                  status: 2,
                ),
                SeatItem(
                  status: 0,
                ),
              ],
            ),
            //NOTE SITE 4
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                //SEAT 4
                SeatItem(
                  status: 2,
                ),
                SeatItem(
                  status: 0,
                ),
                Container(
                  width: 48,
                  height: 48,
                  margin: EdgeInsets.only(top: 16),
                  child: Center(
                    child: Text(
                      '4',
                      style: blackTextStyle.copyWith(
                        fontSize: 16,
                      ),
                    ),
                  ),
                ),
                SeatItem(
                  status: 0,
                ),
                SeatItem(
                  status: 0,
                ),
              ],
            ),
            //NOTE SITE 5
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                //SEAT 5
                SeatItem(
                  status: 2,
                ),
                SeatItem(
                  status: 0,
                ),
                Container(
                  width: 48,
                  height: 48,
                  margin: EdgeInsets.only(top: 16),
                  child: Center(
                    child: Text(
                      '5',
                      style: blackTextStyle.copyWith(
                        fontSize: 16,
                      ),
                    ),
                  ),
                ),
                SeatItem(
                  status: 1,
                ),
                SeatItem(
                  status: 1,
                ),
              ],
            ),
            Container(
              margin: EdgeInsets.only(top: 30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Your seat',
                    style: grayTextStyle.copyWith(
                      fontSize: 16,
                      fontWeight: light,
                    ),
                  ),
                  Text(
                    'C5, D5',
                    style: blackTextStyle.copyWith(
                      fontSize: 16,
                      fontWeight: semiBold,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Total',
                    style: grayTextStyle.copyWith(
                      fontSize: 16,
                      fontWeight: light,
                    ),
                  ),
                  Text(
                    'IDR 540.000.000',
                    style: purpelTextStyle.copyWith(
                      fontSize: 16,
                      fontWeight: semiBold,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      );
    }

    Widget button() {
      return Container(
        child: Column(
          children: [
            Custombutton(
              title: 'Continue to Checkout',
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => CheckoutPage(),
                    ));
              },
              width: 327,
              margin: EdgeInsets.only(top: 30, bottom: 46),
            ),
          ],
        ),
      );
    }

    return Scaffold(
      backgroundColor: kBackgroundColor,
      body: ListView(
        padding: EdgeInsets.symmetric(
          horizontal: 24,
        ),
        children: [
          title(),
          seatStatus(),
          selectSeat(),
          button(),
        ],
      ),
    );
  }
}
