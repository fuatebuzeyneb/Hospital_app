import 'package:flutter/material.dart';
import 'package:health_app/models/welcome_model.dart';
import 'package:health_app/views/sign_up_view.dart';
import 'package:health_app/widgets/button_widget.dart';
import 'package:health_app/widgets/text_widget.dart';
import 'package:health_app/widgets/utils/app_colors_utils.dart';
import 'package:health_app/widgets/utils/app_images_utlis.dart';

class WelcomeView extends StatefulWidget {
  const WelcomeView({super.key});
  static String id = 'WelcomeView';
  @override
  State<WelcomeView> createState() => _WelcomeViewState();
}

class _WelcomeViewState extends State<WelcomeView> {
  int currentIndex = 0;
  late PageController _controller;

  @override
  void initState() {
    _controller = PageController(initialPage: 0);
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      body: PageView.builder(
          physics: const BouncingScrollPhysics(),
          controller: _controller,
          onPageChanged: (int index) {
            setState(() {
              currentIndex = index;
              if (currentIndex == 3) {
                Navigator.pushReplacementNamed(context, SignUpView.id);
              }
              // } else {
              //   _controller.nextPage(
              //       duration: const Duration(milliseconds: 300),
              //       curve: Curves.ease);
              // }
            });
          },
          scrollDirection: Axis.vertical,
          itemCount: welcomeContent.length,
          itemBuilder: (context, index) {
            return Column(
              children: [
                Container(
                  height: size.height * 0.5,
                  width: size.width * 1,
                  color: Colors.white,
                  child: Padding(
                    padding:
                        const EdgeInsets.only(top: 150, right: 20, left: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SizedBox(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              TextWidget(
                                text: welcomeContent[index].title,
                                fontWeight: FontWeight.bold,
                                fontSize: 24,
                              ),
                              const SizedBox(
                                height: 5,
                              ),
                              TextWidget(
                                text: welcomeContent[index].subTitle,
                                fontSize: 18,
                                color: Colors.grey,
                              ),
                              const SizedBox(
                                height: 20,
                              ),
                              SizedBox(
                                width: size.width * 0.5,
                                child: TextWidget(
                                  text: welcomeContent[index].body,
                                  fontSize: 14,
                                  color: Colors.grey,
                                ),
                              ),
                              const SizedBox(
                                height: 30,
                              ),
                              ButtonWidget(
                                onTap: () {
                                  if (currentIndex ==
                                      welcomeContent.length - 1) {
                                    Navigator.pushReplacementNamed(
                                        context, SignUpView.id);
                                  } else {
                                    _controller.nextPage(
                                        duration:
                                            const Duration(milliseconds: 300),
                                        curve: Curves.ease);
                                  }
                                },
                                widget: Image.asset(AppImagesUtils.kArrow),
                                myHeight: 0.15,
                                myWidth: 0.2,
                              )
                            ],
                          ),
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            SizedBox(
                              child: Column(
                                children: List.generate(
                                    welcomeContent.length - 1,
                                    (index) => buildDot(index, context)),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  height: size.height * 0.5,
                  width: size.width * 1,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(welcomeContent[index].imagesPath),
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
              ],
            );
          }),
    );
  }

  Container buildDot(int index, BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(1),
      height: currentIndex == index ? 25 : 10,
      width: 10,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: currentIndex == index ? AppColors.kMainColor : Colors.grey,
      ),
    );
  }
}
