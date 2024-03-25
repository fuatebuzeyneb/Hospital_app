import 'package:flutter/material.dart';
import 'package:health_app/widgets/app_bar_widget.dart';
import 'package:health_app/widgets/button_widget.dart';
import 'package:health_app/widgets/list_animals_widget.dart';
import 'package:health_app/widgets/doctors/list_doctor_widget.dart';
import 'package:health_app/widgets/hospitals/list_hospital_widget.dart';
import 'package:health_app/widgets/list_icon_widget.dart';
import 'package:health_app/widgets/text_widget.dart';
import 'package:health_app/widgets/utils/app_colors_utils.dart';
import 'package:health_app/widgets/utils/app_images_utlis.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});
  static String id = 'HomeView';

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: PreferredSize(
          preferredSize: const Size.fromHeight(55),
          child: AppBarWidget(
            title: 'Home',
            imageOrIcon: Padding(
              padding: const EdgeInsets.only(right: 8),
              child: Container(
                height: 40,
                width: 40,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  image: const DecorationImage(
                    image: AssetImage(AppImagesUtils.kPersonImage),
                  ),
                ),
              ),
            ),
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.only(left: 16, top: 10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: size.width * 0.92,
                height: size.height * 0.2,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  color: AppColors.kSecondColor,
                ),
                child: Row(
                  children: [
                    Image.asset(AppImagesUtils.kHomeImage),
                    const SizedBox(
                      width: 10,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const TextWidget(
                          text: 'How do you feel?',
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                        const SizedBox(
                          height: 8,
                        ),
                        SizedBox(
                          width: size.width * 0.41,
                          child: const TextWidget(
                            text: 'find doctor for you or for your pet',
                            fontSize: 12,
                            color: Colors.grey,
                          ),
                        ),
                        const SizedBox(
                          height: 12,
                        ), //We are here for you
                        ButtonWidget(
                          onTap: () {},
                          widget: const Center(
                            child: TextWidget(
                              text: 'Book now',
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          myHeight: 0.12,
                          myWidth: 0.42,
                        )
                      ],
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              Container(
                child: TabBar(
                  labelPadding: const EdgeInsets.only(right: 40),
                  labelColor: Colors.black,
                  unselectedLabelColor: Colors.grey,
                  isScrollable: true,
                  indicatorSize: TabBarIndicatorSize.label,
                  indicatorColor: AppColors.kMainColor,
                  indicator: UnderlineTabIndicator(
                    borderRadius: const BorderRadius.all(
                      Radius.circular(40),
                    ),
                    borderSide:
                        BorderSide(color: AppColors.kMainColor, width: 8.0),
                    insets: const EdgeInsets.fromLTRB(10.0, 50.0, 10.0, 0.0),
                  ),
                  tabs: const [
                    Tab(text: 'Doctors'),
                    Tab(text: 'Hospital'),
                    Tab(text: 'Animals'),
                  ],
                ),
              ),
              const SizedBox(
                height: 12,
              ),
              SizedBox(
                height: size.height * 0.33,
                child: const TabBarView(
                  physics: BouncingScrollPhysics(),
                  children: [
                    ListDoctorWidget(),
                    ListHospitalWidget(),
                    ListAnimalsWidget(),
                  ],
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              const Padding(
                padding: EdgeInsets.only(right: 16),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    TextWidget(
                      text: 'Clinics',
                      fontSize: 26,
                      fontWeight: FontWeight.bold,
                    ),
                    TextWidget(
                      text: 'See all',
                      fontSize: 18,
                      color: Colors.grey,
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 12,
              ),
              SizedBox(
                height: size.height * 0.12,
                width: size.width * 1,
                child: const ListIconWidget(),
              )
            ],
          ),
        ),
      ),
    );
  }
}
