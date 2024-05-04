import 'package:flutter/material.dart';
import 'package:personal_website/config/constants/constants.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:personal_website/config/theme/app_colors.dart';

class ContactInformation extends StatelessWidget {
  const ContactInformation({super.key});

  @override
  Widget build(BuildContext context) {
    final localization = AppLocalizations.of(context)!;
    final theme = Theme.of(context);

    return Card(
      color: AppColors.onlyBlue,
      child: Padding(
        padding: const EdgeInsets.all(30),
        child: ListTileTheme(
          data: ListTileThemeData(
            contentPadding: const EdgeInsets.symmetric(vertical: 0),
            titleTextStyle: theme.textTheme.titleLarge,
            iconColor: theme.primaryColor,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                localization.contactInfoTitle,
                style: theme.textTheme.headlineMedium!
                    .copyWith(color: Colors.white),
              ),
              const SizedBox(height: 30),
              Text(
                localization.contactInfoDescription,
                style: theme.textTheme.titleMedium!.copyWith(
                  color: Colors.white,
                  letterSpacing: 1,
                  height: 1.5,
                ),
              ),
              const SizedBox(height: 30),
              ListTile(
                leading: const Icon(
                  Icons.location_on,
                  color: Colors.white,
                ),
                title: SelectableText(
                  localization.contactAddress,
                  style: TextStyle(color: Colors.white),
                ),
              ),
              const ListTile(
                leading: Icon(
                  Icons.email_rounded,
                  color: Colors.white,
                ),
                title: SelectableText(
                  kEmailAddress,
                  style: TextStyle(color: Colors.white),
                ),
              ),
              const ListTile(
                leading: Icon(
                  Icons.phone,
                  color: Colors.white,
                ),
                title: SelectableText(
                  kPhoneNumber,
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
