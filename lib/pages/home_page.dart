import 'package:bwa_cozy/models/city.dart';
import 'package:bwa_cozy/models/space.dart';
import 'package:bwa_cozy/models/tips.dart';
import 'package:bwa_cozy/theme.dart';
import 'package:bwa_cozy/widgets/city_card.dart';
import 'package:bwa_cozy/widgets/space_card.dart';
import 'package:bwa_cozy/widgets/tips_card.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        // bottom: false,
        child: ListView(
          children: [
            // * Title/Header
            Container(
              margin: EdgeInsets.only(left: edge),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: edge,
                  ),
                  Text(
                    "Explore Now",
                    style: blackTextStyle.copyWith(
                      fontSize: 24,
                    ),
                  ),
                  Text(
                    "Mencari kosan yang cozy",
                    style: greyTextStyle.copyWith(
                      fontSize: 16,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Padding(
              padding: EdgeInsets.only(left: edge),
              child: Text(
                "Popular Cities",
                style: regularTextStyle.copyWith(
                  fontSize: 16,
                ),
              ),
            ),
            const SizedBox(
              height: 16,
            ),
            SizedBox(
              height: 150,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  const SizedBox(
                    width: 24,
                  ),
                  CityCard(
                    city: City(
                      id: 1,
                      name: 'Jakarta',
                      imageUrl: 'assets/city1.png',
                    ),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  CityCard(
                    city: City(
                      id: 2,
                      name: 'Bandung',
                      imageUrl: 'assets/city2.png',
                      isPopular: true,
                    ),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  CityCard(
                    city: City(
                      id: 3,
                      name: 'Surabaya',
                      imageUrl: 'assets/city3.png',
                    ),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  CityCard(
                    city: City(
                      id: 4,
                      name: 'Palembang',
                      imageUrl: 'assets/city4.png',
                    ),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  CityCard(
                    city: City(
                      id: 5,
                      name: 'Aceh',
                      imageUrl: 'assets/city5.png',
                      isPopular: true,
                    ),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  CityCard(
                    city: City(
                      id: 6,
                      name: 'Bogor',
                      imageUrl: 'assets/city6.png',
                    ),
                  ),
                  const SizedBox(
                    width: 24,
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Padding(
              padding: EdgeInsets.only(left: edge),
              child: Text(
                "Recommended Space",
                style: regularTextStyle.copyWith(
                  fontSize: 16,
                ),
              ),
            ),
            const SizedBox(
              height: 16,
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: edge,
              ),
              child: Column(
                children: [
                  SpaceCard(
                    space: Space(
                        id: 1,
                        name: "Kuretakeso Hott",
                        price: 52,
                        city: "Bandung",
                        country: "Indonesia",
                        imageUrl: "assets/space1.png",
                        rating: 4),
                  ),
                  SpaceCard(
                    space: Space(
                        id: 1,
                        name: "Kuretakeso Hott",
                        price: 52,
                        city: "Bandung",
                        country: "Indonesia",
                        imageUrl: "assets/space2.png",
                        rating: 4),
                  ),
                  SpaceCard(
                    space: Space(
                        id: 1,
                        name: "Kuretakeso Hott",
                        price: 52,
                        city: "Bandung",
                        country: "Indonesia",
                        imageUrl: "assets/space3.png",
                        rating: 4),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: edge),
              child: Text(
                "Tips & Guidance",
                style: regularTextStyle.copyWith(
                  fontSize: 16,
                ),
              ),
            ),
            const SizedBox(
              height: 16,
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: edge,
              ),
              child: Column(
                children: [
                  TipsCard(
                    Tips(
                      id: 1,
                      title: 'City Guidelines',
                      imageUrl: 'assets/tips1.png',
                      updatedAt: '20 Apr',
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  TipsCard(
                    Tips(
                      id: 2,
                      title: 'Jakarta Fairship',
                      imageUrl: 'assets/tips2.png',
                      updatedAt: '11 Dec',
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 16,
            ),
          ],
        ),
      ),
    );
  }
}
