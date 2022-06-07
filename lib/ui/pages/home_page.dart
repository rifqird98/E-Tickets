import 'package:air_plane/shared/theme.dart';
import 'package:air_plane/ui/widgets/custom_destination.dart';
import 'package:air_plane/ui/widgets/destination_tile.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  Widget header() {
    return Container(
      margin: EdgeInsets.only(
        left: defauldMargin,
        right: defauldMargin,
        top: 30,
      ),
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Howdy, \nRifqi Rahmadhani',
                  style: blackTextStyle.copyWith(
                    fontSize: 24,
                    fontWeight: semiBold,
                  ),
                ),
                SizedBox(
                  height: 6,
                ),
                Text(
                  'Where Fly Today ?',
                  style: grayTextStyle.copyWith(
                    fontWeight: light,
                  ),
                ),
              ],
            ),
          ),
          Container(
            height: 60,
            width: 60,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              image: DecorationImage(
                image: AssetImage('assets/image_profile.png'),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget populer() {
    return Container(
      margin: EdgeInsets.only(top: 30),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: [
            CustomDestination(
              name: 'Lake Ciliwung',
              city: 'Tanggerang',
              rating: 4.8,
              imageUrl: 'assets/image_destination1.png',
            ),
            CustomDestination(
              name: 'Lake Ciliwung',
              city: 'China',
              rating: 4.9,
              imageUrl: 'assets/image_destination2.png',
            ),
            CustomDestination(
              name: 'Lake Ciliwung',
              city: 'Spain',
              rating: 4.0,
              imageUrl: 'assets/image_destination3.png',
            ),
            CustomDestination(
              name: 'Lake Ciliwung',
              city: 'Japan',
              rating: 5.0,
              imageUrl: 'assets/image_destination4.png',
            ),
            CustomDestination(
              name: 'Lake Ciliwung',
              city: 'Singapore',
              rating: 4.5,
              imageUrl: 'assets/image_destination5.png',
            ),
          ],
        ),
      ),
    );
  }

  Widget newdestination() {
    return Container(
      margin: EdgeInsets.only(
        top: 30,
        left: defauldMargin,
        right: defauldMargin,
        bottom: 100,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'New This Year',
            style: blackTextStyle.copyWith(
              fontSize: 20,
              fontWeight: semiBold,
            ),
          ),
          DestinationTail(
            name: 'Danau Beranta',
            city: 'Singajara',
            ImageUrl: 'assets/image_destination6.png',
            rating: 4.5,
          ),
          DestinationTail(
            name: 'Sydney Opera',
            city: 'Australia',
            ImageUrl: 'assets/image_destination7.png',
            rating: 4.5,
          ),
          DestinationTail(
            name: 'Roma',
            city: 'italy',
            ImageUrl: 'assets/image_destination8.png',
            rating: 4.0,
          ),
          DestinationTail(
            name: 'Payung Teduh',
            city: 'Manji',
            ImageUrl: 'assets/image_destination9.png',
            rating: 3.0,
          ),
          DestinationTail(
            name: 'Hill Hey',
            city: 'Monaco',
            ImageUrl: 'assets/image_destination10.png',
            rating: 5.0,
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        header(),
        populer(),
        newdestination(),
      ],
    );
  }
}
