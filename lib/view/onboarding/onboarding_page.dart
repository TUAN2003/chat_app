import 'package:chat_app/core/constant/app_color.dart';
import 'package:chat_app/view/onboarding/step1_tab.dart';
import 'package:chat_app/view/onboarding/step2_tab.dart';
import 'package:chat_app/view/onboarding/step3_tab.dart';
import 'package:chat_app/view/onboarding/step4_tab.dart';
import 'package:flutter/material.dart';

class OnboardingPage extends StatefulWidget {
  const OnboardingPage({super.key});

  @override
  State<OnboardingPage> createState() => _OnboardingPageState();
}

class _OnboardingPageState extends State<OnboardingPage>
    with TickerProviderStateMixin {
  late final TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 4, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.lightBlue100,
      appBar: AppBar(backgroundColor: AppColor.white, elevation: 0),
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: Stack(
                clipBehavior: Clip.hardEdge,
                alignment: Alignment.center,
                children: [
                  Positioned(
                    top: -180,
                    child: Container(
                      width: 520,
                      height: 520,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        shape: BoxShape.circle,
                        border: Border.all(
                          color: AppColor.lightBlue50, // màu viền
                          width: 60, // độ dày
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    child: TabBarView(
                      controller: _tabController,
                      physics: const BouncingScrollPhysics(),
                      children: const [
                        Step1Tab(),
                        Step2Tab(),
                        Step3Tab(),
                        Step4Tab(),
                      ],
                    ),
                  ),
                ],
              ),
            ),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: SizedBox(
                width: double.infinity,
                height: 52,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: AppColor.lightBlue500,
                    foregroundColor: AppColor.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(28),
                    ),
                  ),
                  onPressed: () {
                    Navigator.pushNamed(context, '/login');
                  },
                  child: const Text(
                    'Get started',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ),

            const SizedBox(height: 16),

            /// ==== BOTTOM CONTROLS ====
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  TextButton(onPressed: () {}, child: const Text('Skip')),

                  TabPageSelector(
                    controller: _tabController,
                    indicatorSize: 10,
                    color: AppColor.lightBlue300,
                    selectedColor: AppColor.lightBlue500,
                    borderStyle: BorderStyle.none,
                  ),

                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      shape: const CircleBorder(),
                      padding: const EdgeInsets.all(14),
                      backgroundColor: AppColor.lightBlue200,
                      foregroundColor: AppColor.lightBlue900,
                      elevation: 4,
                    ),
                    onPressed: () {
                      if (_tabController.index < _tabController.length - 1) {
                        _tabController.animateTo(_tabController.index + 1);
                      }
                    },
                    child: const Text('Next'),
                  ),
                ],
              ),
            ),

            const SizedBox(height: 16),
          ],
        ),
      ),
    );
  }
}
