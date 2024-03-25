import 'package:health_app/widgets/utils/app_images_utlis.dart';

class ClinicsModel {
  final String title;
  final String icon;

  ClinicsModel({required this.title, required this.icon});
}

List<ClinicsModel> clinics = [
  ClinicsModel(title: 'heart', icon: AppImagesUtils.kHeartIcon),
  ClinicsModel(title: 'bones', icon: AppImagesUtils.kBonesIcon),
  ClinicsModel(title: 'eye', icon: AppImagesUtils.kEyeIcon),
  ClinicsModel(title: 'lung', icon: AppImagesUtils.kLungIcon),
  ClinicsModel(title: 'mind', icon: AppImagesUtils.kMindIcon),
  ClinicsModel(title: 'tooth', icon: AppImagesUtils.kToothIcon),
  ClinicsModel(title: 'animals', icon: AppImagesUtils.kAnimalsIcon),
  ClinicsModel(title: 'skin', icon: AppImagesUtils.kSkinIcon),
];
