const double kMinMediumHandsetWidth = 360;
const double kMinLargeHandsetWidth = 400;
const double kMinSmallTabletWidth = 600;
const double kMinLargeTabletWidth = 720;
const double kMinSmallDesktopWidth = 1024;
const double kMinMediumDesktopWidth = 1440;
const double kMinLargeDesktopWidth = 1920;

class ProjectDataValue {
  final String? imageAsset;
  final String? titleProject;
  final String? githubLink;
  final String? playStoreLink;
  final String? appStoreLink;
  final String? websiteLink;

  ProjectDataValue(
    this.githubLink,
    this.playStoreLink,
    this.appStoreLink,
    this.websiteLink,
    this.imageAsset,
    this.titleProject,
  );
}
