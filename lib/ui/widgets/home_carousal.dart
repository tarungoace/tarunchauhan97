import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:tarundevindia/common/responsive/responsive.dart';
import 'package:tarundevindia/config/constants/assets_paths.dart';

import '../../common/responsive/src/screen.dart';

class HomeCarousal extends StatelessWidget {
  const HomeCarousal({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final screen = WebsiteScreen.of(context);
    return Row(
      children: [
        Expanded(
          child: Center(
            child: CarouselSlider.builder(
              itemCount: assetBanners.length,
              options: CarouselOptions(
                height: screen.fromMTD(
                  250,
                  (MediaQuery.of(context).size.height),
                  (MediaQuery.of(context).size.height + 50),
                ),
                viewportFraction: screen.type.isMobile ? 0.8 : 1.0,
                enlargeCenterPage: screen.type.isMobile ? true : false,
                autoPlay: true,
                autoPlayCurve: Curves.fastOutSlowIn,
                autoPlayInterval: const Duration(seconds: 10),
                autoPlayAnimationDuration: const Duration(seconds: 4),
              ),
              itemBuilder: (BuildContext context, int index, _) {
                return ColorFiltered(
                  colorFilter: ColorFilter.mode(
                    screen.type.isMobile
                        ? Colors.transparent
                        : Colors.black.withOpacity(0.5),
                    BlendMode.darken,
                  ),
                  child: Container(

                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      // Same as ClipRRect for consistency
                      border: Border.all(
                        color: Colors.transparent, // Border color
                        width: 2, // Border width
                      ),
                      color: Colors.transparent,
                      image: DecorationImage(
                        image: AssetImage(
                          assetBanners[index],
                        ),
                        fit: BoxFit.cover, // Adjust as needed
                      ),
                    ),
                  ),
                  // child: Image.asset(
                  //   assetBanners[index],
                  //   fit: BoxFit.cover,
                  //   width: MediaQuery.of(context).size.width,
                  //   isAntiAlias: true,
                  //   colorBlendMode: BlendMode.lighten,
                  //
                  // ),
                );
              },
            ),
          ),
        ),
      ],
    );
  }
}

class CustomRoundedRectClipper extends CustomClipper<Rect> {
  @override
  Rect getClip(Size size) {
    // Define custom clipping path here
    return Rect.fromLTRB(10, 10, size.width - 10, size.height - 10);
  }

  @override
  bool shouldReclip(CustomRoundedRectClipper oldClipper) {
    return false; // Assuming this clipper is static and does not need to be recalculated
  }
}
