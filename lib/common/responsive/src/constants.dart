import 'package:tarundevindia/config/constants/assets_paths.dart';
import 'package:tarundevindia/config/constants/constants.dart';

const double kMinMediumHandsetWidth = 360;
const double kMinLargeHandsetWidth = 400;
const double kMinSmallTabletWidth = 600;
const double kMinLargeTabletWidth = 720;
const double kMinSmallDesktopWidth = 1024;
const double kMinMediumDesktopWidth = 1440;
const double kMinLargeDesktopWidth = 1920;

List<ProjectDataValue> projectsList = [
  ProjectDataValue(
    titleProject: "PiGemsHub Ecommerce",
    imageAsset: piGemsHubBanner,
    githubLink: piGemsGithub,
  ),
  ProjectDataValue(
    titleProject: "Learning Courses",
    imageAsset: learningBanner,
    githubLink: learning1,
  ),
  ProjectDataValue(
    titleProject: "Doctor Connext",
    imageAsset: virtDoctor,
    githubLink: virtDoct,
  ),
  ProjectDataValue(
    titleProject: "Food on Wheels",
    imageAsset: foodOnDel,
    githubLink: foodOnDelString,
  ),
];

class ProjectDataValue {
  final String? imageAsset;
  final String? titleProject;
  final String? githubLink;
  final String? playStoreLink;
  final String? appStoreLink;
  final String? websiteLink;

  ProjectDataValue({
    this.githubLink,
    this.playStoreLink,
    this.appStoreLink,
    this.websiteLink,
    this.imageAsset,
    this.titleProject,
  });
}
