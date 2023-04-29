import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lottie/lottie.dart';
import 'package:mobile_emotion_app/horizontal_listview.dart';

class DetailScreen extends StatefulWidget {
  const DetailScreen({Key? key}) : super(key: key);

  @override
  State<DetailScreen> createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: Text('Statistics', style: TextStyle(color: Colors.black, fontSize: 23.sp, fontWeight: FontWeight.w500, letterSpacing: 1)),
      ),
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(left: 17.w, right: 17.w),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  height: 50.h,
                  width: 50.w,
                  decoration: const BoxDecoration(shape: BoxShape.circle, color: Color(0xf5eeebff)),
                  child: Icon(Icons.arrow_back_ios_new, color: Colors.black45, size: 20.sp),
                ),
                Text('July 11 - 17', style: TextStyle(fontSize: 15.sp, fontWeight: FontWeight.w400, color: Colors.black45)),
                Container(
                  height: 50.h,
                  width: 50.w,
                  decoration: const BoxDecoration(shape: BoxShape.circle, color: Color(0xf5eeebff)),
                  child: Icon(Icons.arrow_forward_ios, color: Colors.black45, size: 20.sp),
                ),
              ],
            ),
          ),
          SizedBox(height: 13.h),
          Padding(
            padding: EdgeInsets.only(left: 4.w, right: 4.w),
            child: const HorizontalListview(),
          ),
        ],
      ),
    );
  }
}
