import 'package:flutter/material.dart';
import 'package:tarundevindia/common/responsive/src/extensions.dart';
import 'package:tarundevindia/common/responsive/src/screen.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:tarundevindia/ui/home/widgets/my_projects/my_projects.dart';
import 'package:tarundevindia/ui/widgets/animated_title_text.dart';

import '../../../../common/responsive/src/constants.dart';

class Experience extends StatelessWidget {
  const Experience({super.key});

  @override
  Widget build(BuildContext context) {
    final screen = WebsiteScreen.of(context);
    final localization = AppLocalizations.of(context)!;

    final isSmallScreen = screen.width <= kMinLargeTabletWidth;
    final isMediumScreen = screen.width <= kMinMediumDesktopWidth;
    // Widget layout;
    // if (isSmallScreen) {
    //   layout = const SmallScreenLayout();

    // } else if (isMediumScreen) {
    //   layout = const SmallScreenLayout();
    // } else {
    //   layout = const LargeScreenLayout();
    // }
    return Padding(
      padding: screen.contentPadding,
      child: Column(
        children: [
          const AnimatedTitleText(
            title: "My Experience",
          ),
          // const Text(
          //   "My Open Source Projects",
          //   style: TextStyle(
          //     fontSize: 30,
          //     color: Colors.black,
          //   ),
          // ),
          const SizedBox(height: 30),
        ],
      ),
    );
  }
}

class ExperienceCard extends StatelessWidget {
  const ExperienceCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Card();
  }
}
