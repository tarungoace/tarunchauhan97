import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tarundevindia/common/responsive/responsive.dart';
import 'package:tarundevindia/config/theme/app_colors.dart';
import 'package:tarundevindia/provider/tagged_list_provider.dart';
import 'package:tarundevindia/ui/widgets/custom_elevated_button.dart';
import 'package:url_launcher/url_launcher.dart';

class MyProjectsCard extends StatelessWidget {
  const MyProjectsCard({
    super.key,
    this.image,
    this.title,
    this.githubLink,
    this.webUrl,
  });

  final String? image;
  final String? title;
  final String? githubLink;
  final String? webUrl;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final screen = WebsiteScreen.of(context);
    return Card(
      margin: const EdgeInsets.all(16),
      color: AppColors.onlyBlue,
      child: Padding(
        padding: const EdgeInsets.all(15),
        child: Column(
          children: [
            Container(
              clipBehavior: Clip.hardEdge,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(
                  Radius.circular(30),
                ),
              ),
              child: Image.asset(
                image ?? 'assets/images/background1.jpg',
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                githubLink != null
                    ? CustomElevatedButton(
                        onPressed: () async {
                          final Uri url = Uri.parse(githubLink!);

                          final bool isLaunch = await canLaunchUrl(url);
                          if (isLaunch) {
                            await launchUrl(url);
                          } else {
                            ScaffoldMessenger.of(context).showSnackBar(
                              const SnackBar(
                                content: Text("Cannot Launch"),
                              ),
                            );
                          }
                        },
                        borderRadius: BorderRadius.circular(100),
                        borderSide: BorderSide(
                          color: Theme.of(context).primaryColor,
                        ),
                        foregroundColor: Theme.of(context).primaryColorLight,
                        backgroundColor: Colors.black,
                        gradientBackground: LinearGradient(
                          colors: [
                            theme.primaryColorLight,
                            theme.primaryColorDark,
                          ],
                        ),
                        elevation: 0,
                        child: Text(
                          "Github",
                          style: TextStyle(
                            color: Colors.white
                          ),
                        ),
                      )
                    : SizedBox(),
                // CustomElevatedButton(
                //   onPressed: () {},
                //   borderRadius: BorderRadius.circular(100),
                //   borderSide: BorderSide(
                //     color: Theme.of(context).primaryColor,
                //   ),
                //   foregroundColor: Theme.of(context).primaryColorLight,
                //   backgroundColor: Colors.black12,
                //   elevation: 0,
                //   child: Text("Website"),
                // ),
                // CustomElevatedButton(
                //   onPressed: () {},
                //   borderRadius: BorderRadius.circular(100),
                //   borderSide: BorderSide(
                //     color: Theme.of(context).primaryColor,
                //   ),
                //   foregroundColor: Theme.of(context).primaryColorLight,
                //   backgroundColor: Colors.black12,
                //   elevation: 0,
                //   child: Text("Playstore"),
                // ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Center(
              child: Text(
                title ?? '',
                style: TextStyle(
                  fontSize: screen.fromMTD(18, 24, 30),
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
