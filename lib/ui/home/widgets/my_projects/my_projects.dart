import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:tarundevindia/common/responsive/responsive.dart';
import 'package:tarundevindia/ui/home/widgets/my_projects/widgets/my_projects_card.dart';
import 'package:tarundevindia/ui/widgets/animated_title_text.dart';

class MyProjectsData extends StatelessWidget {
  const MyProjectsData({super.key});

  @override
  Widget build(BuildContext context) {
    final screen = WebsiteScreen.of(context);

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
          const AnimatedTitleText(
            title: "My Open Source Projects",
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
    return IntrinsicHeight(
      child: Column(
        // direction: Axis.vertical,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Row(
            children: [
              Expanded(
                child: MyProjectsCard(
                  title: projectsList[0].titleProject,
                  githubLink: projectsList[0].githubLink,
                  image: projectsList[0].imageAsset,
                ),
              ),
              Expanded(
                child: MyProjectsCard(
                  title: projectsList[1].titleProject,
                  githubLink: projectsList[1].githubLink,
                  image: projectsList[1].imageAsset,
                ),
              ),
            ],
          ),
          Row(
            children: [
              Expanded(
                child: MyProjectsCard(
                  title: projectsList[2].titleProject,
                  githubLink: projectsList[2].githubLink,
                  image: projectsList[2].imageAsset,
                ),
              ),
              Expanded(
                child: MyProjectsCard(
                  title: projectsList[3].titleProject,
                  githubLink: projectsList[3].githubLink,
                  image: projectsList[3].imageAsset,
                ),
              ),
            ],
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
    return Flex(
      direction: Axis.vertical,
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.start,
      children: List.generate(projectsList.length, (index) {
        return MyProjectsCard(
          title: projectsList[index].titleProject,
          githubLink: projectsList[index].githubLink,
          image: projectsList[index].imageAsset,
        );
      }).toList(),
    );
  }
}
