class MyExperienceDataModel {
  final String companyname;
  final String jobProfile;
  final String ofcaddress;
  final String workdone;

  MyExperienceDataModel({
    required this.companyname,
    required this.jobProfile,
    required this.ofcaddress,
    required this.workdone,
  });

  factory MyExperienceDataModel.fromJson(Map<String, dynamic> json) =>
      MyExperienceDataModel(
        companyname: json["companyname"],
        jobProfile: json["jobProfile"],
        ofcaddress: json["ofcaddress"],
        workdone: json["workdone"],
      );
}

List<Map<String, dynamic>> myExperiencedata = [
  {
    'companyname': 'Mesky India Pvt. Ltd',
    'jobProfile': 'Flutter Developer',
    'ofcaddress': 'Gurgaon',
    'workdone': '''
Integrating MOEngage SDK for Event tracking, Push Notification, InApps.
• Rolled out IOS app on App Store/ Fixed IOS Permission Issues.
• Enabling Deep linking & user event tracking with Branch SDK Integration.
• Unbxd API for Auto Suggest, Searching, Filtering, Events Tracking.
• Firebase Crashlytics & events Integration, Santry SDK app issues.
• Building Shop page, Product banners, OTP login flow, Enhancing user \n Experience, Zoom images, Cached image & Video Player.
• Bug fixes, App optimization rolling-out app updates.
• Auto SMS Reader, Android IOS Permission additions.
''',
  },
  {
    'companyname': 'IDC Technologies Pvt. Ltd',
    'jobProfile': 'Software Development Engineer - 2',
    'ofcaddress': 'Noida',
    'workdone': '''
Craft Silicon Loan Banking (South African Bank)
• Flutter Document upload With Multi part and Image compression.
• Setup Bloc Clean Architecture and Environment flavors.
• Integrating HTTP APIs with DIO using Interceptors and Dartz.
• Added Support PDF, Image, Excel, Camera, File Gallery upload.
• Integrating Karza, Udyam, Ministry of Corporate Affair’s SDK.
• Custom Generics Reusable Widgets for Customer and Agent Application.
• Using Geo-Locator, Firebase-Crashlytics, JWT Decode, Pin Put Package.

KisanKonnect - E-Commerce
• E-Commerce Solution with Stripe Payment Gateway Integration.
• Worked on Bugs fixes and code optimization.
''',
  },
  {
    "companyname": 'Antino Labs Pvt. Ltd',
    "jobProfile": 'Flutter Developer (SDE)',
    "ofcaddress": 'Gurgaon',
    "workdone": '''
Card Byte: e-Visiting Business Card App.
• Worked on QR Scanner implementation with TOTP Algorithm. 
• Writing Test cases for Dynamic Link and Bloc Pattern.
• Worked with Json Serializable, Freezed, GIT Clone Packages.
''',
  },
  {
    "companyname": 'Nuestack Technologies',
    "jobProfile": 'Flutter Developer',
    "ofcaddress": 'Gurgaon',
    "workdone": '''
Tatsam: Therapy & Self Care
• Used Carousel, GetIT, Hive, Smartlook, Secure Storage Packages.
• Audio, Video, App Localization, Flutter Env Flavors Support.

Save Max - Real Estate Canada
• Firebase Dynamic Linking Sharing Properties with Short URL.
• Used Google Maps to locate Canada properties with Pop-up details.

Drona Learning -  Digital Tutorial
• Developed UI from scratch and Integated firebase
• Worked to built quiz functionality and Video audio lectures.
''',
  },
];
