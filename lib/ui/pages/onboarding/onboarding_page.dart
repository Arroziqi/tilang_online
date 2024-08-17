import 'package:flutter/material.dart';
import 'package:flutter_app/shared/theme.dart';
import 'package:flutter_app/ui/pages/onboarding/components/button_get_started.dart';
import 'package:flutter_app/ui/pages/onboarding/components/custom_bottom_navigation.dart';
import 'package:flutter_app/ui/pages/splash_page.dart';
import 'package:gap/gap.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../../models/pages/onboarding/onboarding_contents.dart';

class OnboardingPage extends StatefulWidget {
  const OnboardingPage({super.key});

  @override
  State<OnboardingPage> createState() => _OnboardingPageState();
}

class _OnboardingPageState extends State<OnboardingPage> {
  // mengambil isi konten onboarding dari model OnBoardingContents
  final controller = OnBoardingContents();

  // ini widget untuk mengatur page, seperti navigasi antar page
  final pageController = PageController();

  // state apakah last page
  bool isLastPage = false;
  bool isFirstTime = true;

  void notFirstTime(){
    setState(() {
      isFirstTime = false;
    });
  }

  // widget untuk membuat konten dari onboarding pages
  Widget buildContent() {
    return SingleChildScrollView(
      child: SizedBox(
        height: 700,
        child: PageView.builder(
          onPageChanged: (index) =>
              setState(() => isLastPage = controller.items.length - 1 == index),
          itemCount: controller.items.length,
          controller: pageController,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.only(left: 45, right: 45, top: 70),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Image.asset(
                    controller.items[index].imageUrl,
                    width: 254,
                    height: 254,
                  ),
                  const Gap(24),
                  SizedBox(
                    width: 297,
                    child: Row(
                      children: [
                        Image.asset(
                          controller.items[index].iconUrl,
                          width: 32,
                          height: 32,
                        ),
                        const Gap(15),
                        Text(
                          controller.items[index].title,
                          style: whiteTextStyle.copyWith(
                            fontWeight: bold,
                            fontSize: 24,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const Gap(24),
                  SizedBox(
                    width: 297,
                    child: Text(
                      controller.items[index].description,
                      style: blackTextStyle.copyWith(
                        fontWeight: regular,
                        fontSize: 16,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  const Gap(50),
                ],
              ),
            );
          },
        ),
      ),
    );
  }

  // widget untuk membuat bottom navigation,
  Widget buildButtonNavigation() {
    return Container(
      height: 160,
      color: kBackgroundColor,
      padding: const EdgeInsets.all(24),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          if (isLastPage)
            ButtonGetStarted(
              pageController: pageController,
            )
          else
            Column(
              children: [
                SmoothPageIndicator(
                  controller: pageController,
                  count: controller.items.length,
                  onDotClicked: (index) => pageController.animateToPage(index,
                      duration: const Duration(milliseconds: 500),
                      curve: Curves.easeIn),
                  effect: const WormEffect(
                    activeDotColor: Colors.black,
                    dotColor: kGreyColor,
                    dotHeight: 9,
                    dotWidth: 9,
                  ),
                ),
                const Gap(40),
                CustomBottomNavigation(
                  pageController: pageController,
                ),
              ],
            ),
        ],
      ),
    );
  }

  PreferredSizeWidget buildAppBar() {
    return AppBar(
      leading: Container(
        padding: const EdgeInsets.only(
          left: 19,
          top: 15,
        ),
        child: Row(
          children: [
            Image.asset(
              'assets/img/logo.png',
              height: 68,
            ),
            const Gap(10),
            Image.asset(
              'assets/img/logo_text.png',
              width: 109,
              height: 44,
            ),
          ],
        ),
      ),
      leadingWidth: 250,
      toolbarHeight: 75,
    );
  }

  @override
  Widget build(BuildContext context) {
    return isFirstTime ? SplashPage(onPressed: notFirstTime) : Scaffold(
      backgroundColor: kBackgroundColor,
      appBar: buildAppBar(),
      body: SafeArea(
        child: buildContent(),
      ),
      bottomSheet: buildButtonNavigation(),
    );
  }
}
