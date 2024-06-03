import 'package:flutter/material.dart';
import 'package:tarundevindia/common/responsive/responsive.dart';
import 'package:tarundevindia/data/my_experience_data.dart';
import 'package:tarundevindia/ui/widgets/animated_title_text.dart';
import 'package:tarundevindia/ui/widgets/bg_container.dart';

class MyExperience extends StatefulWidget {
  const MyExperience({super.key});

  @override
  State<MyExperience> createState() => _MyExperienceState();
}

class _MyExperienceState extends State<MyExperience> {
  List<MyExperienceDataModel> listExperience = [];

  @override
  void initState() {
    super.initState();

    for (var e in myExperiencedata) {
      listExperience.add(
        MyExperienceDataModel.fromJson(e),
      );
    }
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final screen = WebsiteScreen.of(context);

    return Column(
      children: [
        const SizedBox(height: 20),
        const Align(
          alignment: Alignment.center,
          child: AnimatedTitleText(
            title: "Experiences",
          ),
        ),
        const SizedBox(height: 50),
        Container(
          height: screen.fromMTD(
            MediaQuery.of(context).size.height * .50,
            MediaQuery.of(context).size.height * .50,
            MediaQuery.of(context).size.height * .50,
          ),
          width: MediaQuery.of(context).size.width * .90,
          padding: screen.contentPadding.copyWith(
            right: screen.fromMTD(5, 5, 10),
            left: screen.fromMTD(5, 5, 40),
          ),
          child: ListView.builder(
            itemCount: listExperience.length,
            scrollDirection: Axis.horizontal,
            shrinkWrap: true,
            addAutomaticKeepAlives: true,
            controller: ScrollController(),
            itemBuilder: (context, index) {
              final MyExperienceDataModel _myExp = listExperience[index];
              return BGContainer(
                margin: const EdgeInsets.only(right: 80),
                padding: EdgeInsets.symmetric(
                  horizontal: screen.fromMTD(20, 30, 40),
                  vertical: screen.fromMTD(30, 30, 40),
                ),
                // const EdgeInsets.only(top: 40, left: 30, right: 30, bottom: 10),
                borderRadius: BorderRadius.circular(40),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Text(
                              _myExp.companyname,
                              style: theme.textTheme.headlineLarge!.copyWith(
                                color: Colors.white,
                                fontWeight: FontWeight.bold, //
                              ),
                            ),
                            const SizedBox(height: 5),
                            Text(
                              _myExp.jobProfile,
                              style: theme.textTheme.headlineSmall!.copyWith(
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ],
                        ),
                        // SizedBox(width: 10),
                        Text(
                          _myExp.ofcaddress,
                          style: theme.textTheme.headlineSmall!.copyWith(
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ],
                    ),
                    const SizedBox(height: 10),
                    Expanded(
                      flex: 1,
                      child: Text(
                        _myExp.workdone,
                        style: theme.textTheme.titleMedium?.copyWith(
                          color: Colors.white,
                        ),
                        softWrap: true,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.start,
                      ),
                    ),
                  ],
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}
