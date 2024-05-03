import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:personal_website/common/responsive/responsive.dart';
import 'package:personal_website/provider/tagged_list_provider.dart';
import 'package:personal_website/ui/widgets/custom_elevated_button.dart';
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
    return Card(
      margin: const EdgeInsets.all(16),
      color: Colors.black,
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
                        elevation: 0,
                        child: Text(
                          "Github",
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
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
                  color: Theme.of(context).primaryColor,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
