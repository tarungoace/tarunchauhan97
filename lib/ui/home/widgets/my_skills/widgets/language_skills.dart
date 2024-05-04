import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:tarundevindia/common/responsive/responsive.dart';
import 'package:tarundevindia/config/constants/assets_paths.dart';
import 'package:tarundevindia/config/theme/app_colors.dart';
import 'package:tarundevindia/ui/home/widgets/my_skills/widgets/skills_section.dart';

class LanguageSkills extends StatelessWidget {
  const LanguageSkills({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final localization = AppLocalizations.of(context)!;

    return SkillsSection(
      title: localization.languageSkills,
      description: localization.languageSkillsDescription,
      child: Row(
        children: [
          Expanded(
            child: LanguageSkill(
              name: "Hindi",
              icon: kIndiaFlagRoundedSvgPath,
            ),
          ),
          const SizedBox(width: 20),
          Expanded(
            child: LanguageSkill(
              name: localization.languageNameEnglish,
              icon: kEnglishFlagRoundedSvgPath,
            ),
          ),
        ],
      ),
    );
  }
}

class LanguageSkill extends StatelessWidget {
  const LanguageSkill({
    super.key,
    required this.name,
    required this.icon,
  });

  final String name;
  final String icon;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final screen = WebsiteScreen.of(context);

    return PhysicalModel(
      color: AppColors.onlyBlue,
      borderRadius: BorderRadius.circular(100),
      elevation: 2,
      child: Padding(
        padding: EdgeInsets.symmetric(
          vertical: screen.adaptive(defaultValue: 10, mobile: 5)!,
          horizontal: screen.adaptive(defaultValue: 20, mobile: 10)!,
        ),
        child: Row(
          children: [
            ClipOval(
              child: Transform.scale(
                scale: 2,
                child: SvgPicture.asset(
                  icon,
                  fit: BoxFit.fill,
                  width: 40,
                  semanticsLabel: icon.split('/').last,
                ),
              ),
            ),
            const SizedBox(width: 20),
            Text(
              name,
              style: theme.textTheme.titleMedium!.copyWith(
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
