import 'package:air_plane/shared/theme.dart';
import 'package:air_plane/ui/pages/choose_seat_page.dart';
import 'package:air_plane/ui/widgets/Custom_photos.dart';
import 'package:air_plane/ui/widgets/custom_buton.dart';
import 'package:air_plane/ui/widgets/custom_interests.dart';
import 'package:flutter/material.dart';

class DetailPage extends StatelessWidget {
  const DetailPage({Key? key}) : super(key: key);

  Widget backgroundImage() {
    return Container(
      width: double.infinity,
      height: 450,
      decoration: BoxDecoration(
          image: DecorationImage(
        fit: BoxFit.cover,
        image: AssetImage('assets/image_destination1.png'),
      )),
    );
  }

  Widget customShadow() {
    return Container(
      width: double.infinity,
      height: 214,
      margin: EdgeInsets.only(top: 236),
      decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
            kWhiteColor.withOpacity(0),
            Colors.black.withOpacity(0.80),
          ])),
    );
  }

  @override
  Widget build(BuildContext context) {
    Widget content() {
      return Container(
        width: double.infinity,
        margin: EdgeInsets.symmetric(horizontal: defauldMargin),
        child: Column(
          children: [
            //emblem
            Container(
              width: 108,
              height: 24,
              margin: EdgeInsets.only(top: 30),
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/icon_emblem.png'),
                ),
              ),
            ),
            //title
            Container(
              margin: EdgeInsets.only(top: 256),
              child: Row(
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Lake Ciliwung',
                          style: whiteTextStyle.copyWith(
                              fontSize: 24, fontWeight: semiBold),
                        ),
                        Text(
                          'Tanggerang',
                          style: whiteTextStyle.copyWith(fontWeight: medium),
                        )
                      ],
                    ),
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        margin: EdgeInsets.only(right: 3),
                        width: 16,
                        height: 16,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage('assets/icon_star.png')),
                        ),
                      ),
                      Text(
                        '4.5',
                        style: whiteTextStyle.copyWith(fontWeight: semiBold),
                      )
                    ],
                  ),
                ],
              ),
            ),
            //NOTE : DESCRIPTION
            Container(
              width: double.infinity,
              margin: EdgeInsets.only(top: 30),
              padding: EdgeInsets.symmetric(
                horizontal: 20,
                vertical: 30,
              ),
              decoration: BoxDecoration(
                color: kWhiteColor,
                borderRadius: BorderRadius.circular(18),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'About',
                    style: blackTextStyle.copyWith(
                      fontWeight: semiBold,
                      fontSize: 16,
                    ),
                  ),
                  SizedBox(height: 6),
                  Text(
                    'Berada di jalur jalan provinsi yang menghubungkan Denpasar Singaraja serta letaknya yang dekat dengan Kebun Raya Eka Karya menjadikan tempat Bali.',
                    style: blackTextStyle.copyWith(
                      height: 2,
                    ),
                  ),
                  SizedBox(height: 20),
                  Text(
                    'Photo',
                    style: blackTextStyle.copyWith(
                      fontSize: 16,
                      fontWeight: semiBold,
                    ),
                  ),
                  SizedBox(height: 6),
                  Row(
                    children: [
                      CustomPhotos(ImageUrl: 'assets/image_photo1.png'),
                      CustomPhotos(ImageUrl: 'assets/image_photo2.png'),
                      CustomPhotos(ImageUrl: 'assets/image_photo3.png'),
                    ],
                  ),
                  SizedBox(height: 20),
                  Text(
                    'Interests',
                    style: blackTextStyle.copyWith(
                      fontSize: 16,
                      fontWeight: semiBold,
                    ),
                  ),
                  SizedBox(height: 6),
                  Row(
                    children: [
                      CustomInterests(name: 'Kids Park'),
                      CustomInterests(name: 'Kids Park'),
                    ],
                  ),
                  SizedBox(height: 10),
                  Row(
                    children: [
                      CustomInterests(name: 'Kids Park'),
                      CustomInterests(name: 'Kids Park'),
                    ],
                  ),
                ],
              ),
            ),
            //NOTE : PRICE & BUTTON
            Container(
              width: double.infinity,
              margin: EdgeInsets.symmetric(vertical: 31),
              child: Row(
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'IDR 2.500.000',
                          style: blackTextStyle.copyWith(
                            fontSize: 20,
                            fontWeight: semiBold,
                          ),
                        ),
                        SizedBox(height: 6),
                        Text(
                          'Perorang',
                          style: grayTextStyle.copyWith(
                            fontWeight: light,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Custombutton(
                      title: 'Book Now',
                      width: 170,
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => ChooseSeatPage(),
                          ),
                        );
                      }),
                ],
              ),
            ),
          ],
        ),
      );
    }

    return Scaffold(
      backgroundColor: kBackgroundColor,
      body: SingleChildScrollView(
        child: Stack(
          children: [
            backgroundImage(),
            customShadow(),
            content(),
          ],
        ),
      ),
    );
  }
}
