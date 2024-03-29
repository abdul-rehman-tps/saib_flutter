import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:saib_flutter/ui/screen/auth/landing/landing_controller.dart';
import 'package:saib_flutter/ui/widget/custom_button.dart';

class LandingView extends StatefulWidget {
  const LandingView({super.key});

  @override
  State<LandingView> createState() => _LandingViewState();
}

class _LandingViewState extends State<LandingView> {
  @override
  Widget build(BuildContext context) {
    final LandingController c = Get.put(LandingController());

    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/bg_landing.png'),
            fit: BoxFit.cover,
          ),
        ),
        child: SafeArea(
          child: Stack(
            alignment: Alignment.topCenter,
            children: [
              Positioned(
                width: Get.mediaQuery.size.width,
                child: Image.asset(
                  'assets/images/map_dots.png',
                  fit: BoxFit.cover,
                ),
              ),
              Positioned(
                top: Get.mediaQuery.size.height * 0.12,
                width: Get.mediaQuery.size.width,
                child: Image.asset('assets/images/line.png'),
              ),
              Positioned(
                left: Get.mediaQuery.size.width * 0.30,
                top: Get.mediaQuery.size.height * 0.125,
                child: Image.asset(
                  'assets/icons/ic_plane.png',
                  width: Get.mediaQuery.size.width * 0.15,
                  height: Get.mediaQuery.size.width * 0.15,
                ),
              ),
              ListView(
                children: [
                  SizedBox(height: Get.mediaQuery.size.height * 0.33),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Image.asset(
                        'assets/images/logo_saib.png',
                        width: Get.mediaQuery.size.width * 0.6,
                      ),
                      SizedBox(height: Get.mediaQuery.size.height * 0.03),
                      const Text('Welcome', textAlign: TextAlign.center),
                      SizedBox(height: Get.mediaQuery.size.height * 0.03),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          IconButton(
                            icon: Column(
                              children: [
                                Image.asset(
                                  'assets/icons/ic_aboutus.png',
                                  width: Get.mediaQuery.size.width * 0.09,
                                ),
                                const Text('About Us'),
                              ],
                            ),
                            onPressed: () {},
                          ),
                          IconButton(
                            icon: Column(
                              children: [
                                Image.asset(
                                  'assets/icons/ic_locator.png',
                                  width: Get.mediaQuery.size.width * 0.09,
                                ),
                                const Text('ATM Locator'),
                              ],
                            ),
                            onPressed: () {},
                          ),
                          IconButton(
                            icon: Column(
                              children: [
                                Image.asset(
                                  'assets/icons/ic_phone.png',
                                  width: Get.mediaQuery.size.width * 0.09,
                                ),
                                const Text('Contact Us'),
                              ],
                            ),
                            onPressed: () {},
                          ),
                        ],
                      ),
                      SizedBox(height: Get.mediaQuery.size.height * 0.06),
                      SizedBox(
                        width: Get.mediaQuery.size.width * 0.65,
                        child: CustomButton(
                          actionText: 'Login',
                          onTap: () async => c.onLoginTap(),
                        ),
                      ),
                      SizedBox(height: Get.mediaQuery.size.height * 0.03),
                      SizedBox(
                        width: Get.mediaQuery.size.width * 0.65,
                        child: CustomButton(
                          actionText: 'Register',
                          onTap: () async => c.onRegisterTap(),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
