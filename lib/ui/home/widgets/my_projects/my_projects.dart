import 'package:flutter/material.dart';
import 'package:personal_website/common/responsive/src/constants.dart';
import 'package:personal_website/common/responsive/src/extensions.dart';
import 'package:personal_website/common/responsive/src/screen.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:personal_website/ui/home/widgets/my_projects/widgets/my_projects_card.dart';

class MyProjectsData extends StatelessWidget {
  const MyProjectsData({super.key});

  @override
  Widget build(BuildContext context) {
    final screen = WebsiteScreen.of(context);
    final localization = AppLocalizations.of(context)!;

    final isSmallScreen = screen.width <= kMinLargeTabletWidth;
    final isMediumScreen = screen.width <= kMinMediumDesktopWidth;
    Widget layout;
    if (isSmallScreen) {
      layout = const SmallScreenLayout();
    } else if (isMediumScreen) {
      layout = const SmallScreenLayout();
    } else {
      layout = const LargeScreenLayout();
    }
    return Padding(
      padding: screen.contentPadding,
      child: Column(
        children: [
          Text(
            "These are my projects Data",
            style: TextStyle(
              fontSize: 24,
              color: Colors.black,
            ),
          ),
          const SizedBox(height: 30),
          layout,
        ],
      ),
    );
  }
}

class LargeScreenLayout extends StatelessWidget {
  const LargeScreenLayout({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const IntrinsicHeight(
      child: Row(
        children: [
          Expanded(
            child: MyProjectsCard(),
          ),
          Expanded(
            child: MyProjectsCard(),
          ),
        ],
      ),
    );
  }
}

class SmallScreenLayout extends StatelessWidget {
  const SmallScreenLayout({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        MyProjectsCard(),
        MyProjectsCard(),
        MyProjectsCard(),
      ],
    );
  }
}
