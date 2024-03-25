import 'package:health_app/widgets/utils/app_images_utlis.dart';

class DoctorsModel {
  final String name;
  final String clinic;
  final String iconClinic;
  final String image;
  final String description;
  final String graduate;
  final int idDoctor;

  DoctorsModel(
      {required this.idDoctor,
      required this.name,
      required this.clinic,
      required this.iconClinic,
      required this.image,
      required this.description,
      required this.graduate});

  static List<DoctorsModel> doctors = [
    DoctorsModel(
      name: 'Ali Kaya',
      clinic: 'heart',
      iconClinic: AppImagesUtils.kHeartIcon,
      image: AppImagesUtils.kDoctorOne,
      description:
          'I have performed procedures that include cardiac catheterization to diagnose and treat blood vessel problems, installing stents to widen narrowed arteries, and open-heart surgery to correct heart valves and regulate heart rhythms. My goal is to restore and improve heart health and its necessary functions for the body.',
      idDoctor: 1,
      graduate: 'AUS, USYD',
    ),
    DoctorsModel(
      name: 'Sena Kahraman',
      clinic: 'mind',
      iconClinic: AppImagesUtils.kMindIcon,
      image: AppImagesUtils.kDoctorTow,
      description:
          'I have performed brain surgeries that include removing brain tumors, correcting blocked blood vessels, correcting birth defects, and relieving pain associated with brain diseases. My goal is to diagnose and treat diseases and disorders that affect the central nervous system',
      idDoctor: 2,
      graduate: 'USA, UCLA',
    ),
    DoctorsModel(
      name: 'Fuat Ebuzeyneb',
      clinic: 'bones',
      iconClinic: AppImagesUtils.kBonesIcon,
      image: AppImagesUtils.kDoctorThree,
      description:
          'I performed operations that included fixing fractures, joint replacements, and correcting bone deformities. My goal is to diagnose and treat injuries and diseases that affect the skeletal system. This includes stabilizing fractures, replacing damaged joints, and correcting skeletal deformities to improve bone function and relieve pain.',
      idDoctor: 3,
      graduate: 'TR, ITU',
    ),
    DoctorsModel(
      name: 'Lana Hana',
      clinic: 'eye',
      iconClinic: AppImagesUtils.kEyeIcon,
      image: AppImagesUtils.kDoctorFour,
      description:
          'I have performed procedures including vision correction, glaucoma removal, and eyelid surgery. My goal is to diagnose and treat disorders and diseases that affect the eye. Vision correction is done to improve vision through surgical procedures such as LASIK, while glaucoma enucleation is used to remove harmful eye enlargement. Eyelid surgery is used to correct eyelid deformities and improve the overall appearance and function of the eye.',
      idDoctor: 4,
      graduate: 'ZAF, UKZN',
    ),
    DoctorsModel(
      name: 'Ahmed Ali',
      clinic: 'lung',
      iconClinic: AppImagesUtils.kLungIcon,
      image: AppImagesUtils.kDoctorFive,
      description:
          'I have performed procedures that include resection of lung tumors, lung transplantation, and correction of structural lung diseases. My goal is to diagnose and treat diseases and disorders that affect the respiratory system. This includes surgery to remove lung tumors and lung transplantation in cases of acute or chronic lung failure, as well as correcting structural abnormalities in the lungs.',
      idDoctor: 5,
      graduate: 'CAN, UBC',
    ),
    DoctorsModel(
      name: 'Nour Sami',
      clinic: 'animals',
      iconClinic: AppImagesUtils.kAnimalsIcon,
      image: AppImagesUtils.kDoctorSix,
      description:
          'There are operations that include veterinary plastic surgery, behavior modification, and general surgery. The doctor aims to diagnose and treat pets. This includes ocular contouring and nail trimming, procedures to modify pet behavior, as well as general surgery such as endoscopic surgery, tumor resection, and correction of skeletal deformities.',
      idDoctor: 6,
      graduate: 'DEU, TUM',
    ),
    DoctorsModel(
      name: 'Mert Altin',
      clinic: 'skin',
      iconClinic: AppImagesUtils.kSkinIcon,
      image: AppImagesUtils.kDoctorSeven,
      description:
          'There are operations that include removing skin tumors, cosmetic surgeries and laser ablation. My goal is to diagnose and treat skin problems and skin diseases. This includes surgery to remove skin tumors, cosmetic surgeries to improve the appearance of the skin, and the use of lasers to remove and treat skin problems.',
      idDoctor: 7,
      graduate: 'SGP, NTU',
    ),
    DoctorsModel(
      name: 'Anna Prank',
      clinic: 'tooth',
      iconClinic: AppImagesUtils.kToothIcon,
      image: AppImagesUtils.kDoctorEight,
      description:
          'I performed procedures including tooth decay treatment, root canal extractions, and dental implants. The doctor aims to treat and restore the health and beauty of teeth. This includes removing cavities and filling affected teeth, removing infected roots, and installing dentures to replace missing teeth and restore the function and natural appearance of the mouth.',
      idDoctor: 8,
      graduate: 'JPN, KU',
    ),
  ];
}
