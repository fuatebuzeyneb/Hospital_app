import 'package:health_app/widgets/utils/app_images_utlis.dart';

class HospitalModel {
  final String name;
  final String location;
  final String image;
  final String description;
  final int idHospital;
  final int starNumber;

  HospitalModel({
    required this.idHospital,
    required this.name,
    required this.location,
    required this.image,
    required this.description,
    required this.starNumber,
  });

  static List<HospitalModel> hospitals = [
    HospitalModel(
      idHospital: 1,
      name: 'Mayo Clinic',
      location: 'location',
      image: AppImagesUtils.kHospital1,
      description:
          'Renowned for providing exceptional medical care, Mayo Clinic has over 4,500 physicians and more than 58,000 employees. It specializes in various fields, including cardiology, neurology, and oncology.',
      starNumber: 5,
    ),
    HospitalModel(
        idHospital: 2,
        name: 'Cleveland Clinic',
        location: 'location',
        image: AppImagesUtils.kHospital2,
        description:
            'Considered a leading medical center, Cleveland Clinic has approximately 4,500 physicians and around 50,000 employees. It specializes in cardiology, vascular medicine, heart surgery, neurology, and oncology.',
        starNumber: 4),
    HospitalModel(
        idHospital: 3,
        name: 'Johns Hopkins',
        location: 'location',
        image: AppImagesUtils.kHospital3,
        description:
            ' has over 2,800 physicians and around 37,000 employees. It is renowned for specialties such as cardiac surgery, oncology, neurology, and neurosurgery.',
        starNumber: 5),
    HospitalModel(
        idHospital: 4,
        name: 'Massachusetts Genera',
        location: 'location',
        image: AppImagesUtils.kHospital4,
        description:
            'Affiliated with Harvard University, Massachusetts General Hospital has over 2,900 physicians and approximately 26,000 employees. It specializes in fields such as cardiology, vascular surgery, neurology, neurosurgery, and vascular medicine.',
        starNumber: 4),
    HospitalModel(
        idHospital: 5,
        name: 'Peter Doherty',
        location: 'location',
        image: AppImagesUtils.kHospital5,
        description:
            ' It is a leading hospital and research institute specializing in infectious diseases and immunology. The institute plays a crucial role in responding to outbreaks and pandemics, conducting research, and providing education and training in the field of infectious diseases. ',
        starNumber: 4),
    HospitalModel(
        idHospital: 6,
        name: 'Toronto General',
        location: 'location',
        image: AppImagesUtils.kHospital6,
        description:
            'Toronto General Hospital has over 1,200 physicians and around 8,000 employees. It specializes in various fields, including cardiology, vascular medicine, organ transplantation, and liver surgery.',
        starNumber: 5),
    HospitalModel(
        idHospital: 7,
        name: 'St. Bartholomew\'s',
        location: 'location',
        image: AppImagesUtils.kHospital7,
        description:
            'Located in the United Kingdom, St. Bartholomew\'s Hospital has over 3,800 physicians and staff. It specializes in areas such as cardiac surgery, vascular medicine, orthopedic surgery, and oncology.',
        starNumber: 4),
    HospitalModel(
        idHospital: 8,
        name: 'Klinikum rechts der Isar',
        location: 'location',
        image: AppImagesUtils.kHospital8,
        description:
            'Klinikum rechts der Isar has over 1,200 physicians and around 5,500 employees. It specializes in fields such as cardiology, vascular medicine, heart surgery, neurology, and dermatology.',
        starNumber: 5),
  ];
}
