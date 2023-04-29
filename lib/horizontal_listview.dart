// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import 'package:lottie/lottie.dart';

/// ============================= Cast Horizontal Listview =============================
class HorizontalListview extends StatelessWidget {
  const HorizontalListview({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 540.h,
      child: ListView(
        scrollDirection: Axis.vertical,
        children: [
          AnimationLimiter(
            child: Column(
              children: AnimationConfiguration.toStaggeredList(
                duration: const Duration(seconds: 1),
                childAnimationBuilder: (widget) => SlideAnimation(
                  verticalOffset: MediaQuery.of(context).size.height / 2,
                  child: FadeInAnimation(child: widget),
                ),
                children: [
                  const CastCategory(date: '11', day: "Monday", color: Color(0xff4370F2), image: "assets/awful_emoji.json"),
                ],
              ),
            ),
          ),
          AnimationLimiter(
            child: Column(
              children: AnimationConfiguration.toStaggeredList(
                duration: const Duration(seconds: 2),
                childAnimationBuilder: (widget) => SlideAnimation(
                  verticalOffset: MediaQuery.of(context).size.height / 2,
                  child: FadeInAnimation(child: widget),
                ),
                children: [
                  const CastCategory(date: '12', day: "Tuesday", color: Color(0xffFFCF30), image: "assets/happy_face_imoji.json"),
                ],
              ),
            ),
          ),
          AnimationLimiter(
            child: Column(
              children: AnimationConfiguration.toStaggeredList(
                duration: const Duration(seconds: 3),
                childAnimationBuilder: (widget) => SlideAnimation(
                  verticalOffset: MediaQuery.of(context).size.height / 2,
                  child: FadeInAnimation(child: widget),
                ),
                children: [
                  const CastCategory(date: '13', day: "Wednesday", color: Color(0xffFC829F), image: "assets/good_emoji.json"),
                ],
              ),
            ),
          ),
          AnimationLimiter(
            child: Column(
              children: AnimationConfiguration.toStaggeredList(
                duration: const Duration(seconds: 4),
                childAnimationBuilder: (widget) => SlideAnimation(
                  verticalOffset: MediaQuery.of(context).size.height / 2,
                  child: FadeInAnimation(child: widget),
                ),
                children: [
                  const CastCategory(date: '14', day: "Thursday", color: Color(0xffFF763C), image: "assets/angry_emoji.json"),
                ],
              ),
            ),
          ),
          AnimationLimiter(
            child: Column(
              children: AnimationConfiguration.toStaggeredList(
                duration: const Duration(seconds: 5),
                childAnimationBuilder: (widget) => SlideAnimation(
                  verticalOffset: MediaQuery.of(context).size.height / 2,
                  child: FadeInAnimation(child: widget),
                ),
                children: [
                  const CastCategory(date: '15', day: "Friday", color: Color(0xffC6DBFE), image: "assets/so_good_emoji.json"),
                ],
              ),
            ),
          ),
          AnimationLimiter(
            child: Column(
              children: AnimationConfiguration.toStaggeredList(
                duration: const Duration(seconds: 6),
                childAnimationBuilder: (widget) => SlideAnimation(
                  verticalOffset: MediaQuery.of(context).size.height / 2,
                  child: FadeInAnimation(child: widget),
                ),
                children: [
                  const CastCategory(date: '16', day: "Saturday", color: Color(0xff7DE4EA), image: "assets/not_good_emoji.json"),
                ],
              ),
            ),
          ),
          AnimationLimiter(
            child: Column(
              children: AnimationConfiguration.toStaggeredList(
                duration: const Duration(seconds: 7),
                childAnimationBuilder: (widget) => SlideAnimation(
                  verticalOffset: MediaQuery.of(context).size.height / 2,
                  child: FadeInAnimation(child: widget),
                ),
                children: [
                  const CastCategory(date: '17', day: "Sunday", color: Color(0xff4370F2), image: "assets/awful_emoji.json"),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class CastCategory extends StatelessWidget {
  final String date;
  final String day;
  final Color color;
  final String image;
  const CastCategory({super.key, required this.date, required this.day, required this.color, required this.image});

  @override
  Widget build(BuildContext context) {
    return AnimationLimiter(
      child: Column(
        children: AnimationConfiguration.toStaggeredList(
          duration: const Duration(seconds: 3),
          childAnimationBuilder: (widget) => SlideAnimation(
            verticalOffset: MediaQuery.of(context).size.height / 2,
            child: FadeInAnimation(child: widget),
          ),
          children: [
            ListTile(
              /// =================== Image ===================
              title: Container(
                padding: EdgeInsets.all(15.sp),
                height: 110.h,
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(20.r), color: color),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(date, style: TextStyle(fontSize: 17.sp, fontWeight: FontWeight.w500)),
                        Text(day, style: TextStyle(fontSize: 23.sp, fontWeight: FontWeight.w400, letterSpacing: 1)),
                      ],
                    ),
                    Container(
                      color: Colors.red,
                      height: 90.h,
                      width: 90.w,
                      child: Lottie.asset(image, height: 90.h, width: 90.w, fit: BoxFit.cover),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
