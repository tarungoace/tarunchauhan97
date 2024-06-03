import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:tarundevindia/common/responsive/responsive.dart';
import 'package:tarundevindia/config/constants/assets_paths.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:tarundevindia/config/constants/constants.dart';
import 'package:tarundevindia/config/constants/home_items_tags.dart';
import 'package:tarundevindia/config/theme/app_colors.dart';
import 'package:tarundevindia/config/theme/text_theme.dart';
import 'package:tarundevindia/provider/tagged_list_provider.dart';
import 'package:tarundevindia/provider/url_handler.dart';
import 'package:tarundevindia/ui/widgets/bg_container.dart';
import 'package:tarundevindia/ui/widgets/custom_elevated_button.dart';
import 'package:tarundevindia/ui/widgets/home_carousal.dart';

class HomeWelcome extends ConsumerWidget {
  const HomeWelcome({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = Theme.of(context);
    final screen = WebsiteScreen.of(context);

    return Theme(
      data: theme.copyWith(
        textTheme: theme.textTheme.merge(getWhiteTextTheme),
      ),
      child: Container(
        height: screen.type.isMobile ? screen.height + 40 : null,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              theme.primaryColorDark,
              theme.primaryColorLight,
            ],
          ),
        ),
        child: Column(
          children: [
            screen.type.isMobile
                ? const SizedBox(height: 80)
                : const SizedBox(
                    height: 25,
                  ),
            screen.type.isMobile ? const HomeCarousal() : const SizedBox(),
            const SizedBox(height: 25),
            Builder(
              builder: (context) {
                final theme = Theme.of(context);
                final localization = AppLocalizations.of(context)!;

                return screen.type.isMobile
                    ? Column(
                        children: [
                          const CircleAvatar(
                            backgroundImage: AssetImage(
                              'assets/profile/me1.JPG',
                            ),
                            radius: 120,
                            // child: Image.asset(
                            //   'assets/profile/me1.JPG',
                            //   height: 300,
                            //   width: 300,
                            //   fit: BoxFit.fill,
                            // ),
                          ),
                          const SizedBox(height: 20),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 20),
                            child: FittedBox(
                              child: Text(
                                "Tarun Singh Chauhan",
                                style: screen.fromMTD(
                                  theme.textTheme.headlineMedium,
                                  theme.textTheme.displaySmall,
                                  theme.textTheme.displayMedium,
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(height: 40),
                          Text(
                            localization.homeJobTitle,
                            style: screen.fromMTD(
                              theme.textTheme.titleLarge,
                              theme.textTheme.headlineSmall,
                              theme.textTheme.headlineMedium,
                            ),
                          ),
                          const SizedBox(height: 20),
                          CustomElevatedButton(
                            onPressed: () => ref
                                .read(taggedListNotifierProvider.notifier)
                                .animateToTag(kHomeContactMeItemTag),
                            borderRadius: BorderRadius.circular(100),
                            borderSide: BorderSide(
                              color: theme.primaryColor,
                            ),
                            foregroundColor: theme.primaryColorLight,
                            backgroundColor: theme.primaryColorDark,
                            gradientBackground: LinearGradient(
                              colors: [
                                theme.primaryColorLight,
                                theme.primaryColorDark,
                              ],
                            ),
                            elevation: 0,
                            child: Text(
                              localization.messageMe,
                              style: TextStyle(
                                color: Colors.white,
                              ),
                            ),
                          ),
                          const SizedBox(height: 60),
                          const Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              _CircularLinkButton(
                                link: kMyTelegramUrl,
                                svgPath: kTelegramSvgPath,
                              ),
                              _CircularLinkButton(
                                link: kMyGithubUrl,
                                svgPath: kGithubSvgPath,
                              ),
                              _CircularLinkButton(
                                link: kMyLinkedinUrl,
                                svgPath: kLinkedinSvgPath,
                              ),
                              _CircularLinkButton(
                                link: kMyInstagramUrl,
                                svgPath: kInstagramSvgPath,
                              ),
                            ],
                          ),
                        ],
                      )
                    : Stack(
                        children: [
                          const HomeCarousal(),
                          Positioned(
                            top: screen.fromMTD(10, 100, 50),
                            child: SizedBox(
                              height: screen.height + 44,
                              width: screen.width,
                              // decoration: const BoxDecoration(
                              //   image: DecorationImage(
                              //     image: AssetImage(kHomeBackgroundImagePath),
                              //     fit: BoxFit.cover,
                              //   ),
                              // ),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  // Text(
                                  //   localization.homeWelcome,
                                  //   style: screen.fromMTD(
                                  //     theme.textTheme.titleLarge,
                                  //     theme.textTheme.headlineSmall,
                                  //     theme.textTheme.headlineMedium,
                                  //   ),
                                  // ),
                                  CircleAvatar(
                                    backgroundImage: const AssetImage(
                                      'assets/profile/me1.JPG',
                                    ),
                                    radius: screen.fromMTD(120, 150, 180),
                                    // child: Image.asset(
                                    //   'assets/profile/me1.JPG',
                                    //   height: 300,
                                    //   width: 300,
                                    //   fit: BoxFit.fill,
                                    // ),
                                  ),

                                  const SizedBox(height: 20),
                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 20),
                                    child: FittedBox(
                                      child: Text(
                                        "Tarun Singh Chauhan",
                                        style: screen.fromMTD(
                                          theme.textTheme.headlineMedium,
                                          theme.textTheme.displaySmall,
                                          theme.textTheme.displayMedium,
                                        ),
                                      ),
                                    ),
                                  ),
                                  const SizedBox(height: 40),
                                  Text(
                                    localization.homeJobTitle,
                                    style: screen.fromMTD(
                                      theme.textTheme.titleLarge,
                                      theme.textTheme.headlineSmall,
                                      theme.textTheme.headlineMedium,
                                    ),
                                  ),
                                  const SizedBox(height: 20),
                                  CustomElevatedButton(
                                    onPressed: () => ref
                                        .read(
                                            taggedListNotifierProvider.notifier)
                                        .animateToTag(kHomeContactMeItemTag),
                                    borderRadius: BorderRadius.circular(100),
                                    borderSide: BorderSide(
                                      color: theme.primaryColor,
                                    ),
                                    foregroundColor: theme.primaryColorLight,
                                    backgroundColor: theme.primaryColorDark,
                                    gradientBackground: LinearGradient(
                                      colors: [
                                        theme.primaryColorLight,
                                        theme.primaryColorDark,
                                      ],
                                    ),
                                    elevation: 0,
                                    child: Text(
                                      localization.messageMe,
                                      style: TextStyle(
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                  const SizedBox(height: 60),
                                  const Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      _CircularLinkButton(
                                        link: kMyTelegramUrl,
                                        svgPath: kTelegramSvgPath,
                                      ),
                                      _CircularLinkButton(
                                        link: kMyGithubUrl,
                                        svgPath: kGithubSvgPath,
                                      ),
                                      _CircularLinkButton(
                                        link: kMyLinkedinUrl,
                                        svgPath: kLinkedinSvgPath,
                                      ),
                                      _CircularLinkButton(
                                        link: kMyInstagramUrl,
                                        svgPath: kInstagramSvgPath,
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      );
              },
            ),
          ],
        ),
      ),
    );
  }
}

class _CircularLinkButton extends StatelessWidget {
  const _CircularLinkButton({
    required this.link,
    required this.svgPath,
  });

  final String link;
  final String svgPath;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () => launchUrlOnWebBrowser(link),
      style: ElevatedButton.styleFrom(
        shape: const CircleBorder(),
        backgroundColor: AppColors.darkBlue,
        padding: const EdgeInsets.all(20),
      ),
      child: SvgPicture.asset(
        svgPath,
        height: 18,
        width: 18,
        color: Colors.white,
        colorFilter: const ColorFilter.mode(
          Colors.white,
          BlendMode.srcIn,
        ),
      ),
    );
  }
}
