import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:personal_website/common/responsive/responsive.dart';
import 'package:personal_website/config/constants/home_items_tags.dart';
import 'package:personal_website/provider/tagged_list_provider.dart';
import 'package:personal_website/ui/home/widgets/auto_tagged_item.dart';
import 'package:personal_website/ui/home/widgets/about_me/about_me.dart';
import 'package:personal_website/ui/home/widgets/contact_me/contact_me.dart';
import 'package:personal_website/ui/home/widgets/my_projects/my_projects.dart';
import 'package:personal_website/ui/home/widgets/my_services/my_services.dart';
import 'package:personal_website/ui/home/widgets/my_skills/my_skills.dart';
import 'package:personal_website/ui/home/widgets/home_welcome.dart';
import 'package:personal_website/ui/home/widgets/sliver_app_bar/home_appbar.dart';
import 'package:personal_website/ui/widgets/bg_container.dart';

import 'widgets/sliver_app_bar/widgets/home_drawer.dart';

class HomeScreen extends HookConsumerWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final screen = WebsiteScreen.of(context);
    final isSmallScreen = !screen.type.isDesktop;
    final drawer = isSmallScreen ? const HomeDrawer() : null;
    final isKeyboardClose = MediaQuery.viewInsetsOf(context).bottom == 0.0;

    return Scaffold(
      endDrawer: drawer,
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.black,
      body: Stack(
        children: [
          const HomeSliverListContent(),
          if (isKeyboardClose) const HomeAppBar(),
        ],
      ),
    );
  }
}

class HomeSliverListContent extends ConsumerWidget {
  const HomeSliverListContent({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final screen = WebsiteScreen.of(context);

    return SingleChildScrollView(
      controller: ref.watch(homeScrollControllerProvider),
      child: Column(
        children: [
          const TaggedBarWidget(
            tag: kHomeWelcomeItemTag,
            child: HomeWelcome(),
          ),
          // screen.verticalSpace(30),
          const TaggedBarWidget(
            tag: kHomeAboutMeItemTag,
            child: BGContainer(
              child: AboutMe(),
            ),
          ),
          // screen.verticalSpace(15),
          const TaggedBarWidget(
            tag: kHomeMySkillsItemTag,
            child: BGContainer(
              child: MySkills(),
            ),
          ),
          // screen.verticalSpace(30),
          const TaggedBarWidget(
            tag: kHomeMyProjectsTag,
            child: BGContainer(
              child: MyProjectsData(),
            ),
          ),
          // screen.verticalSpace(30),
          const TaggedBarWidget(
            tag: kHomeMyServicesTag,
            child: BGContainer(
              child: MyServices(),
            ),
          ),
          // screen.verticalSpace(30),
          const TaggedBarWidget(
            tag: kHomeContactMeItemTag,
            child: BGContainer(
              child: ContactMe(),
            ),
          ),
          // screen.verticalSpace(10),
        ],
      ),
    );
  }
}
