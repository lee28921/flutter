import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class YaYoungCarousel extends StatelessWidget {
  const YaYoungCarousel({super.key});

  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
      options: CarouselOptions(
        height: 400,
        viewportFraction: 1,
      ),
      items: [1, 2, 3].map((i) {
        return Builder(
          builder: (BuildContext context) {
            return Container(
              width: MediaQuery.of(context).size.width,
              margin: EdgeInsets.symmetric(horizontal: 1),
              decoration: BoxDecoration(color: Colors.green),
            );
          },
        );
      }).toList(),
    );
  }
}
