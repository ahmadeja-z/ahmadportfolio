part of 'values.dart';

class CertificationData {
  CertificationData({
    required this.title,
    required this.image,
    required this.imageSize,
    required this.url,
    required this.awardedBy,
  });

  final String image;
  final double imageSize;
  final String url;
  final String title;
  final String awardedBy;
}

class NoteWorthyProjectDetails {
  NoteWorthyProjectDetails({
    required this.projectName,
    required this.isOnPlayStore,
    required this.isPublic,
    required this.technologyUsed,
    required this.isWeb,
    required this.isLive,
    this.projectDescription,
    this.playStoreUrl,
    this.webUrl,
    this.hasBeenReleased,
    this.gitHubUrl,
  });

  final String projectName;
  final bool isPublic;
  final bool isOnPlayStore;
  final bool isWeb;
  final String? projectDescription;
  final bool isLive;
  final bool? hasBeenReleased;
  final String? playStoreUrl;
  final String? gitHubUrl;
  final String? webUrl;
  final String? technologyUsed;
}

class ExperienceData {
  ExperienceData({
    required this.position,
    required this.roles,
    required this.location,
    required this.duration,
    required this.company,
    this.companyUrl,
  });

  final String company;
  final String? companyUrl;
  final String location;
  final String duration;
  final String position;
  final List<String> roles;
}

class SkillData {
  SkillData({
    required this.skillName,
    required this.skillLevel,
  });

  final String skillName;
  final double skillLevel;
}

class SubMenuData {
  SubMenuData({
    required this.title,
    this.isSelected,
    this.content,
    this.skillData,
    this.isAnimation = false,
  });

  final String title;
  final String? content;
  final List<SkillData>? skillData;
  bool isAnimation;
  bool? isSelected;
}

class Data {
  static List<NavItemData> menuItems = [
    NavItemData(name: StringConst.HOME, route: StringConst.HOME_PAGE),
    NavItemData(name: StringConst.ABOUT, route: StringConst.ABOUT_PAGE),
    NavItemData(name: StringConst.WORKS, route: StringConst.WORKS_PAGE),
    NavItemData(
      name: StringConst.EXPERIENCE,
      route: StringConst.EXPERIENCE_PAGE,
    ),
    // NavItemData(
    //   name: StringConst.CERTIFICATIONS,
    //   route: StringConst.CERTIFICATION_PAGE,
    // ),
    NavItemData(name: StringConst.CONTACT, route: StringConst.CONTACT_PAGE),
  ];

  static List<SocialData> socialData = [
    SocialData(
      name: StringConst.GITHUB,
      iconData: FontAwesomeIcons.github,
      url: StringConst.GITHUB_URL,
    ),
    SocialData(
      name: StringConst.LINKED_IN,
      iconData: FontAwesomeIcons.linkedin,
      url: StringConst.LINKED_IN_URL,
    ),
    // SocialData(
    //   name: StringConst.TWITTER,
    //   iconData: FontAwesomeIcons.twitter,
    //   url: StringConst.TWITTER_URL,
    // ),
    SocialData(
      name: StringConst.INSTAGRAM,
      iconData: FontAwesomeIcons.instagram,
      url: StringConst.INSTAGRAM_URL,
    ),
    // SocialData(
    //   name: StringConst.TELEGRAM,
    //   iconData: FontAwesomeIcons.telegram,
    //   url: StringConst.TELEGRAM_URL,
    // ),
  ];

  static List<String> mobileTechnologies = [
    "Flutter",
    "IOS",
    "Android",
  ];

  static List<String> otherTechnologies = [
    "Git",
    "GitHub",
    "CI/CD (GitHub Actions)",
    "Postman",
    "VS Code",
    "Android Studio",
    "Xcode",
    "GitLab",
    "Jira",
    "Trello",
    "Slack",
    "Canva",
    "AntiGravity",
    "Google Cloud",
    "C++",
    "Firebase",
    "Figma",
  ];
  static List<SocialData> socialData1 = [
    SocialData(
      name: StringConst.GITHUB,
      iconData: FontAwesomeIcons.github,
      url: StringConst.GITHUB_URL,
    ),
    SocialData(
      name: StringConst.LINKED_IN,
      iconData: FontAwesomeIcons.linkedin,
      url: StringConst.LINKED_IN_URL,
    ),
    // SocialData(
    //   name: StringConst.TWITTER,
    //   iconData: FontAwesomeIcons.twitter,
    //   url: StringConst.TWITTER_URL,
    // ),
  ];

  static List<SocialData> socialData2 = [
    SocialData(
      name: StringConst.LINKED_IN,
      iconData: FontAwesomeIcons.linkedin,
      url: StringConst.LINKED_IN_URL,
    ),
    // SocialData(
    //   name: StringConst.TWITTER,
    //   iconData: FontAwesomeIcons.twitter,
    //   url: StringConst.TWITTER_URL,
    // ),
    SocialData(
      name: StringConst.INSTAGRAM,
      iconData: FontAwesomeIcons.instagram,
      url: StringConst.INSTAGRAM_URL,
    ),
    // SocialData(
    //   name: StringConst.TELEGRAM,
    //   iconData: FontAwesomeIcons.telegram,
    //   url: StringConst.TELEGRAM_URL,
    // ),
  ];

  static List<ProjectItemData> recentWorks = [
    Projects.SPEEZU,
    Projects.DELTHOLOTTO,
    Projects.HIBUY,
    Projects.FENIX,
    Projects.Poultry,
  ];

  static List<ProjectItemData> projects = [
    Projects.SPEEZU,
    Projects.SPEEZU_RIDER,
    Projects.DELTHOLOTTO,
    Projects.HIBUY,
    Projects.FENIX,
    Projects.SIRAAT,
    Projects.SIRAAT_ADMIN,
    Projects.Poultry,
  ];

  // static List<NoteWorthyProjectDetails> noteworthyProjects = [
  //   NoteWorthyProjectDetails(
  //     projectName: StringConst.UDAGRAM_IMAGE_FILTERING,
  //     isPublic: true,
  //     isOnPlayStore: false,
  //     isWeb: false,
  //     technologyUsed: StringConst.UDAGRAM_IMAGE_FILTERING_TECH,
  //     projectDescription: StringConst.UDAGRAM_IMAGE_FILTERING_DETAIL,
  //     gitHubUrl: StringConst.UDAGRAM_IMAGE_FILTERING_GITHUB_URL,
  //     isLive: false,
  //   ),
  //   NoteWorthyProjectDetails(
  //     projectName: StringConst.SERVERLESS_TODO,
  //     isPublic: true,
  //     isOnPlayStore: false,
  //     isWeb: false,
  //     technologyUsed: StringConst.SERVERLESS_TODO_TECH,
  //     projectDescription: StringConst.SERVERLESS_TODO_DETAIL,
  //     gitHubUrl: StringConst.SERVERLESS_TODO_GITHUB_URL,
  //     isLive: false,
  //   ),
  //   NoteWorthyProjectDetails(
  //     projectName: StringConst.PYTHON_ALGORITHMS,
  //     isPublic: true,
  //     isOnPlayStore: false,
  //     isWeb: false,
  //     technologyUsed: StringConst.PYTHON,
  //     projectDescription: StringConst.PYTHON_ALGORITHMS_DETAIL,
  //     gitHubUrl: StringConst.PYTHON_ALGORITHMS_GITHUB_URL,
  //     isLive: false,
  //   ),
  //   NoteWorthyProjectDetails(
  //     projectName: StringConst.PROGRAMMING_FOR_DATA_SCIENCE,
  //     isPublic: true,
  //     isOnPlayStore: false,
  //     isWeb: false,
  //     technologyUsed: StringConst.PYTHON,
  //     projectDescription: StringConst.PROGRAMMING_FOR_DATA_SCIENCE_DETAIL,
  //     gitHubUrl: StringConst.PROGRAMMING_FOR_DATA_SCIENCE_GITHUB_URL,
  //     isLive: false,
  //   ),
  //   NoteWorthyProjectDetails(
  //     projectName: StringConst.ONBOARDING_APP,
  //     isPublic: true,
  //     isOnPlayStore: false,
  //     isWeb: false,
  //     technologyUsed: StringConst.FLUTTER,
  //     projectDescription: StringConst.ONBOARDING_APP_DETAIL,
  //     gitHubUrl: StringConst.ONBOARDING_APP_GITHUB_URL,
  //     isLive: false,
  //   ),
  //   NoteWorthyProjectDetails(
  //     projectName: StringConst.FINOPP,
  //     isPublic: true,
  //     isOnPlayStore: false,
  //     isWeb: false,
  //     technologyUsed: StringConst.FLUTTER,
  //     projectDescription: StringConst.FINOPP_DETAIL,
  //     gitHubUrl: StringConst.FINOPP_GITHUB_URL,
  //     isLive: false,
  //   ),
  //   NoteWorthyProjectDetails(
  //     projectName: StringConst.AMOR_APP,
  //     isPublic: true,
  //     isOnPlayStore: false,
  //     isWeb: true,
  //     technologyUsed: StringConst.FLUTTER,
  //     projectDescription: StringConst.AMOR_APP_DETAIL,
  //     gitHubUrl: StringConst.AMOR_APP_GITHUB_URL,
  //     webUrl: StringConst.AMOR_APP_WEB_URL,
  //     isLive: true,
  //   ),
  // ];

  static List<CertificationData> certificationData = [
    //   CertificationData(
    //     title: StringConst.MSC_IT,
    //     url: StringConst.CMU_CERT_URL,
    //     image: ImagePath.CMU_MASTERS_CERT,
    //     imageSize: 0.325,
    //     awardedBy: StringConst.CMU,
    //   ),
    //   CertificationData(
    //     title: StringConst.ASSOCIATE_ANDROID_DEV,
    //     url: StringConst.ASSOCIATE_ANDROID_DEV_URL,
    //     image: ImagePath.ASSOCIATE_ANDROID_DEV,
    //     imageSize: 0.325,
    //     awardedBy: StringConst.GOOGLE,
    //   ),
    //   CertificationData(
    //     title: StringConst.CLOUD_DEVELOPER,
    //     url: StringConst.CLOUD_DEVELOPER_URL,
    //     image: ImagePath.CLOUD_DEVELOPER_CERT,
    //     imageSize: 0.325,
    //     awardedBy: StringConst.UDACITY,
    //   ),
    //   CertificationData(
    //     title: StringConst.DATA_SCIENCE,
    //     url: StringConst.DATA_SCIENCE_CERT_URL,
    //     image: ImagePath.DATA_SCIENCE_CERT,
    //     imageSize: 0.325,
    //     awardedBy: StringConst.UDACITY,
    //   ),
    //   CertificationData(
    //     title: StringConst.ANDROID_BASICS,
    //     url: StringConst.ANDROID_BASICS_CERT_URL,
    //     image: ImagePath.ANDROID_BASICS_CERT,
    //     imageSize: 0.325,
    //     awardedBy: StringConst.UDACITY,
    //   ),
  ];

  static List<ExperienceData> experienceData = [
    ExperienceData(
      company: StringConst.COMPANY_5,
      position: StringConst.POSITION_5,
      companyUrl: StringConst.COMPANY_5_URL,
      roles: [
        StringConst.COMPANY_5_ROLE_1,
        StringConst.COMPANY_5_ROLE_2,
        StringConst.COMPANY_5_ROLE_3,
      ],
      location: StringConst.LOCATION_5,
      duration: StringConst.DURATION_5,
    ),
    ExperienceData(
      company: StringConst.COMPANY_4,
      position: StringConst.POSITION_4,
      companyUrl: StringConst.COMPANY_4_URL,
      roles: [
        StringConst.COMPANY_4_ROLE_1,
        StringConst.COMPANY_4_ROLE_2,
        StringConst.COMPANY_4_ROLE_3,
      ],
      location: StringConst.LOCATION_4,
      duration: StringConst.DURATION_4,
    ),
    ExperienceData(
      company: StringConst.COMPANY_3,
      position: StringConst.POSITION_3,
      companyUrl: StringConst.COMPANY_3_URL,
      roles: [
        StringConst.COMPANY_3_ROLE_1,
        StringConst.COMPANY_3_ROLE_2,
        StringConst.COMPANY_3_ROLE_3,
      ],
      location: StringConst.LOCATION_3,
      duration: StringConst.DURATION_3,
    ),
    ExperienceData(
      company: StringConst.COMPANY_2,
      position: StringConst.POSITION_2,
      companyUrl: StringConst.COMPANY_2_URL,
      roles: [
        StringConst.COMPANY_2_ROLE_1,
        StringConst.COMPANY_2_ROLE_2,
        StringConst.COMPANY_2_ROLE_3,
      ],
      location: StringConst.LOCATION_2,
      duration: StringConst.DURATION_2,
    ),
  ];
}

class Projects {
  static ProjectItemData SPEEZU = ProjectItemData(
    title: StringConst.SPEEZU,
    subtitle: StringConst.SPEEZU_SUBTITLE,
    platform: StringConst.SPEEZU_PLATFORM,
    primaryColor: AppColors.speezu,
    image: ImagePath.SPEEZU_COVER,
    coverUrl: ImagePath.SPEEZU_SCREENS,
    navSelectedTitleColor: AppColors.speezu,
    appLogoColor: AppColors.speezu,
    projectAssets: [
      ImagePath.SPEEZU_1,
      ImagePath.SPEEZU_2,
      ImagePath.SPEEZU_3,
      ImagePath.SPEEZU_4,
      ImagePath.SPEEZU_5,
      ImagePath.SPEEZU_6,
      ImagePath.SPEEZU_7,
      ImagePath.SPEEZU_8,
      ImagePath.SPEEZU_9,
      ImagePath.SPEEZU_10,
      ImagePath.SPEEZU_11,
      ImagePath.SPEEZU_12,
      ImagePath.SPEEZU_13,
    ],
    category: StringConst.SPEEZU_CATEGORY,
    portfolioDescription: StringConst.SPEEZU_DETAIL,
    isPublic: false,
    isOnPlayStore: false,
    technologyUsed: StringConst.FLUTTER,
  );
  static ProjectItemData SPEEZU_RIDER = ProjectItemData(
    title: StringConst.SPEEZU_RIDER,
    subtitle: StringConst.SPEEZU_RIDER_SUBTITLE,
    platform: StringConst.SPEEZU_RIDER_PLATFORM,
    primaryColor: AppColors.speezu,
    image: ImagePath.SPEEZU_RIDER_MAIN,
    coverUrl: ImagePath.SPEEZU_RIDER_MAIN,
    navSelectedTitleColor: AppColors.speezu,
    appLogoColor: AppColors.speezu,
    projectAssets: [
      ImagePath.SPEEZU_RIDER_1,
      ImagePath.SPEEZU_RIDER_2,
      ImagePath.SPEEZU_RIDER_3,
      ImagePath.SPEEZU_RIDER_4,
      ImagePath.SPEEZU_RIDER_5,
    ],
    category: StringConst.SPEEZU_RIDER_CATEGORY,
    portfolioDescription: StringConst.SPEEZU_RIDER_DETAIL,
    isPublic: false,
    isOnPlayStore: false,
    technologyUsed: StringConst.FLUTTER,
  );
  static ProjectItemData DELTHOLOTTO = ProjectItemData(
    title: StringConst.DELTHOLOTTO,
    subtitle: StringConst.DELTHOLOTTO_SUBTITLE,
    platform: StringConst.DELTHOLOTTO_PLATFORM,
    primaryColor: AppColors.deltholotto,
    image: ImagePath.DELTHOLOTTO_MAIN,
    category: StringConst.DELTHOLOTTO_CATEGORY,
    designer: StringConst.DELTHOLOTTO_DESIGNER,
    coverUrl: ImagePath.DELTHOLOTTO_MAIN,
    navTitleColor: AppColors.deltholotto,
    navSelectedTitleColor: AppColors.deltholotto,
    appLogoColor: AppColors.deltholotto,
    projectAssets: [
      ImagePath.DELTHOLOTTO_HEADER,
      ImagePath.DELTHOLOTTO_1,
      ImagePath.DELTHOLOTTO_2,
      ImagePath.DELTHOLOTTO_3,
      ImagePath.DELTHOLOTTO_4,
      ImagePath.DELTHOLOTTO_5,
      ImagePath.DELTHOLOTTO_6,
      ImagePath.DELTHOLOTTO_7,
      ImagePath.DELTHOLOTTO_8,
      ImagePath.DELTHOLOTTO_9,
      ImagePath.DELTHOLOTTO_10,
      ImagePath.DELTHOLOTTO_11,
      ImagePath.DELTHOLOTTO_12,
      ImagePath.DELTHOLOTTO_13,
      ImagePath.DELTHOLOTTO_14,
      ImagePath.DELTHOLOTTO_15,
      ImagePath.DELTHOLOTTO_16,
      ImagePath.DELTHOLOTTO_17,
      ImagePath.DELTHOLOTTO_18,
      ImagePath.DELTHOLOTTO_FOOTER,
    ],
    portfolioDescription: StringConst.DELTHOLOTTO_DETAIL,
    isPublic: false,
    isOnPlayStore: true,
    technologyUsed: StringConst.FLUTTER,
    playStoreUrl: StringConst.DELTHOLOTTO_PLAYSTORE_URL,
  );
  static ProjectItemData HIBUY = ProjectItemData(
    title: StringConst.HIBUY,
    subtitle: StringConst.HIBUY_SUBTITLE,
    primaryColor: AppColors.hibuy,
    category: StringConst.HIBUY_CATEGORY,
    designer: StringConst.HIBUY_DESIGNER,
    platform: StringConst.HIBUY_PLATFORM,
    image: ImagePath.HIBUY_MAIN,
    coverUrl: ImagePath.HIBUY_MAIN,
    navTitleColor: AppColors.hibuy,
    navSelectedTitleColor: AppColors.hibuy,
    appLogoColor: AppColors.hibuy,
    projectAssets: [
      ImagePath.HIBUY_7,
      ImagePath.HIBUY_1,
      ImagePath.HIBUY_2,
      ImagePath.HIBUY_3,
      ImagePath.HIBUY_4,
      ImagePath.HIBUY_5,
      ImagePath.HIBUY_6,
    ],
    portfolioDescription: StringConst.HIBUY_DETAIL,
    isPublic: false,
    isOnPlayStore: true,
    technologyUsed: StringConst.FLUTTER,
    // gitHubUrl: StringConst.HIBUY_GITHUB_URL,
    playStoreUrl: StringConst.HIBUY_PLAYSTORE_URL,
  );
  static ProjectItemData FENIX = ProjectItemData(
    title: StringConst.FENIX,
    primaryColor: AppColors.fenix,
    subtitle: StringConst.FENIX_SUBTITLE,
    category: StringConst.FENIX_CATEGORY,
    platform: StringConst.FENIX_PLATFORM,
    image: ImagePath.FENIX_MAIN,
    coverUrl: ImagePath.FENIX_MAIN,
    portfolioDescription: StringConst.FENIX_DETAIL,
    navTitleColor: AppColors.fenix,
    navSelectedTitleColor: AppColors.fenix,
    appLogoColor: AppColors.fenix,
    projectAssets: [
      ImagePath.FENIX_1,
      ImagePath.FENIX_2,
      ImagePath.FENIX_3,
      ImagePath.FENIX_4,
      ImagePath.FENIX_5,
      ImagePath.FENIX_6,
      ImagePath.FENIX_7,
      ImagePath.FENIX_8,
      ImagePath.FENIX_9,
      ImagePath.FENIX_10,
      ImagePath.FENIX_11,
      ImagePath.FENIX_FOOTER,
    ],
    isPublic: false,
    isOnPlayStore: true,
    technologyUsed: StringConst.FLUTTER,
    // gitHubUrl: StringConst.LOGIN_CATALOG_GITHUB_URL,
    playStoreUrl: StringConst.FENIX_PLAYSTORE_URL,
  );
  static ProjectItemData SIRAAT = ProjectItemData(
    title: StringConst.SIRAAT,
    subtitle: StringConst.SIRAAT_SUBTITLE,
    category: StringConst.SIRAAT_CATEGORY,
    designer: StringConst.SIRAAT_DESIGNER,
    primaryColor: AppColors.siraat,
    platform: StringConst.SIRAAT_PLATFORM,
    image: ImagePath.SIRAAT_MAIN,
    coverUrl: ImagePath.SIRAAT_MAIN,
    navTitleColor: AppColors.siraat,
    navSelectedTitleColor: AppColors.siraat,
    appLogoColor: AppColors.siraat,
    projectAssets: [
      ImagePath.SIRAAT_HEADER,
      ImagePath.SIRAAT_3,
      ImagePath.SIRAAT_11,
      ImagePath.SIRAAT_12,
      ImagePath.SIRAAT_1,
      ImagePath.SIRAAT_2,
      ImagePath.SIRAAT_4,
      ImagePath.SIRAAT_5,
      ImagePath.SIRAAT_6,
      ImagePath.SIRAAT_7,
      ImagePath.SIRAAT_8,
      ImagePath.SIRAAT_9,
      ImagePath.SIRAAT_10,
      ImagePath.SIRAAT_13,
      ImagePath.SIRAAT_14,
      ImagePath.SIRAAT_15,
      ImagePath.SIRAAT_FOOTER,
    ],
    portfolioDescription: StringConst.SIRAAT_DETAIL,
    isPublic: false,
    isOnPlayStore: true,
    technologyUsed: StringConst.FLUTTER,
    // gitHubUrl: StringConst.SIRAAT_GITHUB_URL,
    playStoreUrl: StringConst.SIRAAT_PLAYSTORE_URL,
  );
  static ProjectItemData SIRAAT_ADMIN = ProjectItemData(
    title: StringConst.SIRAAT_ADMIN,
    subtitle: StringConst.SIRAAT_ADMIN_SUBTITLE,
    primaryColor: AppColors.siraat,
    platform: StringConst.SIRAAT_ADMIN_PLATFORM,
    category: StringConst.SIRAAT_ADMIN_CATEGORY,
    designer: StringConst.SIRAAT_ADMIN_DESIGNER,
    image: ImagePath.SIRAAT_ADMIN_MAIN,
    coverUrl: ImagePath.SIRAAT_ADMIN_MAIN,
    navTitleColor: AppColors.siraat,
    navSelectedTitleColor: AppColors.siraat,
    projectAssets: [
      ImagePath.SIRAAT_ADMIN_LINK,
      ImagePath.SIRAAT_ADMIN_10,
      ImagePath.SIRAAT_ADMIN_1,
      ImagePath.SIRAAT_ADMIN_2,
      ImagePath.SIRAAT_ADMIN_3,
      ImagePath.SIRAAT_ADMIN_4,
      ImagePath.SIRAAT_ADMIN_5,
      ImagePath.SIRAAT_ADMIN_6,
      ImagePath.SIRAAT_ADMIN_7,
      ImagePath.SIRAAT_ADMIN_8,
      ImagePath.SIRAAT_ADMIN_9,
    ],
    portfolioDescription: StringConst.SIRAAT_ADMIN_DETAIL,
    isPublic: false,
    isOnPlayStore: false,
    isLive: false,
    technologyUsed: StringConst.FLUTTER,
    webUrl: StringConst.SIRAAT_ADMIN_URL,
  );
  static ProjectItemData Poultry = ProjectItemData(
    title: StringConst.POULTRY,
    subtitle: StringConst.POULTRY_SUBTITLE,
    projectAssets: [
      ImagePath.POULTRY_1,
      ImagePath.POULTRY_2,
      ImagePath.POULTRY_3,
      ImagePath.POULTRY_4,
      ImagePath.POULTRY_5,
      ImagePath.POULTRY_6,
      ImagePath.POULTRY_7,
      ImagePath.POULTRY_HEADER,
    ],
    category: StringConst.POULTRY_CATEGORY,
    primaryColor: AppColors.poultry,
    platform: StringConst.POULTRY_PLATFORM,
    image: ImagePath.POULTRY_MAIN,
    coverUrl: ImagePath.POULTRY_MAIN,
    portfolioDescription: StringConst.POULTRY_DETAIL,
    navTitleColor: AppColors.poultry,
    navSelectedTitleColor: AppColors.poultry,
    appLogoColor: AppColors.poultry,
    isPublic: false,
    isLive: false,
    isOnPlayStore: true,
    technologyUsed: StringConst.FLUTTER,
    playStoreUrl: StringConst.POULTRY_PLAYSTORE_URL,
  );
}
