import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:personal_website/config/constants/assets_paths.dart';

class HomeCarousal extends StatelessWidget {
  const HomeCarousal({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Center(
            child: CarouselSlider.builder(
              itemCount: assetBanners.length,
              options: CarouselOptions(
                height: MediaQuery.of(context).size.height + 50,
                viewportFraction: 1.0,
                enlargeCenterPage: false,
                autoPlay: true,
                autoPlayInterval: const Duration(seconds: 10),
                autoPlayAnimationDuration: const Duration(seconds: 4),


              ),
              itemBuilder: (BuildContext context, int index, _) {
                return ColorFiltered(
                  colorFilter: ColorFilter.mode(
                      Colors.black.withOpacity(0.5), BlendMode.darken),
                  child: Image.asset(
                    assetBanners[index],
                    fit: BoxFit.cover,
                    width: MediaQuery.of(context).size.width,
                    isAntiAlias: true,
                    colorBlendMode: BlendMode.lighten,
                  ),
                );
              },
            ),
          ),
        ),
      ],
    );
  }
}
