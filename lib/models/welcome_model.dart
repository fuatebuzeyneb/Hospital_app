import 'package:health_app/widgets/utils/app_images_utlis.dart';
import 'package:health_app/widgets/utils/app_texts_utils.dart';

class WelcomeModel {
  final String title;
  final String subTitle;
  final String body;
  final String imagesPath;

  WelcomeModel({
    required this.title,
    required this.subTitle,
    required this.body,
    required this.imagesPath,
  });
}

List<WelcomeModel> welcomeContent = [
  WelcomeModel(
      title: AppTexts.welcomeTitleOne,
      subTitle: AppTexts.welcomeSubTitleOne,
      body: AppTexts.welcomeBodyOne,
      imagesPath: AppImagesUtils.kWelcomeImageOne),
  WelcomeModel(
      title: AppTexts.welcomeTitleTow,
      subTitle: AppTexts.welcomeSubTitleTow,
      body: AppTexts.welcomeBodyTow,
      imagesPath: AppImagesUtils.kWelcomeImageTow),
  WelcomeModel(
      title: AppTexts.welcomeTitleThree,
      subTitle: AppTexts.welcomeSubTitleThree,
      body: AppTexts.welcomeBodyThree,
      imagesPath: AppImagesUtils.kWelcomeImageThree),
  WelcomeModel(
      title: AppTexts.welcomeTitleThree,
      subTitle: AppTexts.welcomeSubTitleThree,
      body: AppTexts.welcomeBodyThree,
      imagesPath: AppImagesUtils.kWelcomeImageThree),
];
