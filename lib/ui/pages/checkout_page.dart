import 'package:air_plane/shared/theme.dart';
import 'package:air_plane/ui/pages/Success_booking.dart';
import 'package:air_plane/ui/widgets/Custom_detail.dart';
import 'package:air_plane/ui/widgets/custom_buton.dart';
import 'package:air_plane/ui/widgets/destination_tile.dart';
import 'package:flutter/material.dart';

class CheckoutPage extends StatelessWidget {
  const CheckoutPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget route() {
      return Container(
        margin: EdgeInsets.only(top: 60),
        child: Column(
          children: [
            Container(
              width: 291,
              height: 65,
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/image_checkout.png')),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'CGK',
                      style: blackTextStyle.copyWith(
                        fontWeight: semiBold,
                        fontSize: 24,
                      ),
                    ),
                    Text(
                      'Tanggerang',
                      style: grayTextStyle.copyWith(fontWeight: light),
                    ),
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'CGK',
                      style: blackTextStyle.copyWith(
                        fontWeight: semiBold,
                        fontSize: 24,
                      ),
                    ),
                    Text(
                      'Tanggerang',
                      style: grayTextStyle.copyWith(fontWeight: light),
                    ),
                  ],
                )
              ],
            )
          ],
        ),
      );
    }

    Widget Bookingdetail() {
      return Container(
        margin: EdgeInsets.only(top: 30),
        padding: EdgeInsets.symmetric(
          horizontal: 20,
          vertical: 30,
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(18),
          color: kWhiteColor,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Container(
                  width: 70,
                  height: 70,
                  margin: EdgeInsets.only(right: 16),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(18),
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage('assets/image_destination1.png'),
                    ),
                  ),
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Danau Berata',
                        style: blackTextStyle.copyWith(
                          fontSize: 18,
                          fontWeight: medium,
                        ),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        'Singaraja',
                        style: grayTextStyle.copyWith(
                          fontWeight: light,
                        ),
                      )
                    ],
                  ),
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      margin: EdgeInsets.only(right: 5),
                      width: 16,
                      height: 16,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage('assets/icon_star.png')),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(right: 20),
                      child: Text(
                        '4.8',
                        style: blackTextStyle.copyWith(fontWeight: medium),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            //TITLE
            Container(
              margin: EdgeInsets.only(top: 20),
              child: Text(
                'Booking Details',
                style:
                    blackTextStyle.copyWith(fontSize: 16, fontWeight: semiBold),
              ),
            ),
            //BOOKING DRTAILS
            BookingDetail(
              paket: 'Traveler',
              valueText: ' 2 person',
              valueColor: kBlackColor,
            ),
            BookingDetail(
              paket: 'seat',
              valueText: ' AB, BA',
              valueColor: kBlackColor,
            ),
            BookingDetail(
              paket: 'Insurance',
              valueText: 'YES',
              valueColor: kGreenColor,
            ),
            BookingDetail(
              paket: 'Travel',
              valueText: 'NO',
              valueColor: kRedColor,
            ),
            BookingDetail(
              paket: 'Price',
              valueText: ' IDR 8.500.690',
              valueColor: kBlackColor,
            ),
            BookingDetail(
              paket: 'Grand Total',
              valueText: 'IDR 12.000.000',
              valueColor: kPrimaryColor,
            ),
          ],
        ),
      );
    }

    Widget PaymentDetail() {
      return Container(
          margin: EdgeInsets.only(top: 30),
          padding: EdgeInsets.symmetric(
            vertical: 30,
            horizontal: 20,
          ),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(18),
            color: kWhiteColor,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Payment Details',
                style:
                    blackTextStyle.copyWith(fontSize: 16, fontWeight: semiBold),
              ),
              Container(
                margin: EdgeInsets.only(top: 16),
                child: Row(
                  children: [
                    Container(
                      width: 100,
                      height: 70,
                      margin: EdgeInsets.only(right: 16),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(18),
                        image: DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage('assets/image_card.png'),
                        ),
                        boxShadow: [
                          BoxShadow(
                            color: kPrimaryColor.withOpacity(0.5),
                            blurRadius: 50,
                            offset: Offset(0, 8),
                          ),
                        ],
                      ),
                      child: Center(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              margin: EdgeInsets.only(right: 6),
                              width: 24,
                              height: 24,
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image:
                                          AssetImage('assets/icon_plane.png'))),
                            ),
                            Text(
                              'Pay',
                              style: whiteTextStyle.copyWith(
                                  fontSize: 16, fontWeight: light),
                            )
                          ],
                        ),
                      ),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'IDR 80.400.000',
                          style: blackTextStyle.copyWith(
                              fontSize: 18, fontWeight: medium),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          'Current Balance',
                          style: grayTextStyle.copyWith(
                              fontSize: 14, fontWeight: light),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ],
          ));
    }

    Widget payButoon() {
      return Custombutton(
        title: 'Pay Now',
        onPressed: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => BookingSuccess(),
              ));
        },
        margin: EdgeInsets.only(top: 30),
      );
    }

    Widget tacButton() {
      return Container(
        alignment: Alignment.center,
        margin: EdgeInsets.only(bottom: 33, top: 30),
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
      body: ListView(
        padding: EdgeInsets.symmetric(
          horizontal: defauldMargin,
        ),
        children: [
          route(),
          Bookingdetail(),
          PaymentDetail(),
          payButoon(),
          tacButton(),
        ],
      ),
    );
  }
}
