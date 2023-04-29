// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:liquid_swipe/liquid_swipe.dart';
import 'package:lottie/lottie.dart';

class ItemData {
  final Color color;
  final String image;
  final String text1;
  final String text2;

  ItemData(this.color, this.image, this.text1, this.text2);
}

class WithBuilder extends StatefulWidget {
  const WithBuilder({super.key});

  @override
  _WithBuilder createState() => _WithBuilder();
}

class _WithBuilder extends State<WithBuilder> {
  int page = 0;
  late LiquidController liquidController;
  late UpdateType updateType;

  List<ItemData> data = [
    ItemData(const Color(0xffFC829F), "assets/good_emoji.json", "How are you\nfeeling today?", 'Very good!'),
    ItemData(const Color(0xffFFCF30), "assets/good_emoji.json", "How are you\nfeeling today?", 'Good!'),
    ItemData(const Color(0xff7DE4EA), "assets/not_good_emoji.json", "How are you\nfeeling today?", 'Not good...'),
    ItemData(const Color(0xff4370F2), "assets/awful_emoji.json", "How are you\nfeeling today?", 'Awful'),
    ItemData(const Color(0xffC6DBFE), "assets/so_good_emoji.json", "How are you\nfeeling today?", 'So good'),
    ItemData(const Color(0xffFF763C), "assets/angry_emoji.json", "How are you\nfeeling today?", 'Angry!'),
  ];

  @override
  void initState() {
    liquidController = LiquidController();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          LiquidSwipe.builder(
              itemCount: data.length,
              itemBuilder: (context, index) {
                return Container(
                  width: double.infinity,

                  /// ====================== Color ======================
                  color: data[index].color,
                  child: Column(
                    children: [
                      /// ====================== Text-1 ======================
                      SizedBox(height: 55.h),
                      Text(
                        data[index].text1,
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 30.sp, fontWeight: FontWeight.bold, letterSpacing: 2),
                      ),

                      /// ====================== Text-2 ======================
                      SizedBox(height: 50.h),
                      Text(data[index].text2, style: TextStyle(fontSize: 18.sp, fontWeight: FontWeight.w400)),

                      /// ====================== Lottie ======================
                      SizedBox(height: 50.h),
                      Lottie.asset(data[index].image, height: 140.h, width: 140.w),

                      /// ====================== Elevated Button ======================
                      SizedBox(height: 100.h),
                      SizedBox(
                        height: 40.h,
                        width: 300.w,
                        child: ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.r)), backgroundColor: Colors.black),
                          child: Text('Select', style: TextStyle(fontSize: 16.sp, fontWeight: FontWeight.bold)),
                        ),
                      ),
                    ],
                  ),
                );
              },
              positionSlideIcon: 0.8,
              onPageChangeCallback: pageChangeCallback,
              waveType: WaveType.liquidReveal,
              liquidController: liquidController,
              fullTransitionValue: 880,
              enableSideReveal: true,
              preferDragFromRevealedArea: true,
              enableLoop: true,
              ignoreUserGestureWhileAnimating: true),
        ],
      ),
    );
  }

  pageChangeCallback(int lpage) {
    setState(() {
      page = lpage;
    });
  }
}

class WithPages extends StatefulWidget {
  static const style = TextStyle(fontSize: 30, fontFamily: "Billy", fontWeight: FontWeight.w600);

  const WithPages({super.key});

  @override
  _WithPages createState() => _WithPages();
}

class _WithPages extends State<WithPages> {
  int page = 0;
  late LiquidController liquidController;
  late UpdateType updateType;
  final pages = [
    Container(
      color: Colors.blue,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Image.network('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQdhYaYsDh1RdhNgNoxBJSEEe35kScKz-Apyg&usqp=CAU', fit: BoxFit.cover),
          const Padding(
            padding: EdgeInsets.all(24.0),
          ),
          Column(
            children: const <Widget>[
              Text("Hi", style: WithPages.style),
              Text("It's Me", style: WithPages.style),
              Text("Sahdeep", style: WithPages.style),
            ],
          ),
        ],
      ),
    ),
    Container(
      color: Colors.deepPurpleAccent,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Image.network('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQdhYaYsDh1RdhNgNoxBJSEEe35kScKz-Apyg&usqp=CAU', fit: BoxFit.cover),
          const Padding(
            padding: EdgeInsets.all(24.0),
          ),
          Column(
            children: const <Widget>[
              Text("Take a", style: WithPages.style),
              Text("look at", style: WithPages.style),
              Text("Liquid Swipe", style: WithPages.style),
            ],
          ),
        ],
      ),
    ),
    Container(
      color: Colors.green,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Image.network('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQdhYaYsDh1RdhNgNoxBJSEEe35kScKz-Apyg&usqp=CAU', fit: BoxFit.cover),
          const Padding(
            padding: EdgeInsets.all(24.0),
          ),
          Column(
            children: const <Widget>[
              Text("Liked?", style: WithPages.style),
              Text("Fork!", style: WithPages.style),
              Text("Give Star!", style: WithPages.style),
            ],
          ),
        ],
      ),
    ),
    Container(
      color: Colors.yellow,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Image.network('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQdhYaYsDh1RdhNgNoxBJSEEe35kScKz-Apyg&usqp=CAU', fit: BoxFit.cover),
          const Padding(
            padding: EdgeInsets.all(24.0),
          ),
          Column(
            children: const <Widget>[
              Text("Can be", style: WithPages.style),
              Text("Used for", style: WithPages.style),
              Text("Onboarding Design", style: WithPages.style),
            ],
          ),
        ],
      ),
    ),
    Container(
      color: Colors.pink,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Image.network('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQdhYaYsDh1RdhNgNoxBJSEEe35kScKz-Apyg&usqp=CAU', fit: BoxFit.cover),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 70.0),
            child: ExampleSlider(),
          ),
          Column(
            children: const <Widget>[
              Text("Example", style: WithPages.style),
              Text("of a page", style: WithPages.style),
              Text("with Gesture", style: WithPages.style),
            ],
          ),
        ],
      ),
    ),
    Container(
      color: Colors.red,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Image.network('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQdhYaYsDh1RdhNgNoxBJSEEe35kScKz-Apyg&usqp=CAU', fit: BoxFit.cover),
          const Padding(
            padding: EdgeInsets.all(24.0),
          ),
          Column(
            children: const <Widget>[
              Text("Do", style: WithPages.style),
              Text("Try it", style: WithPages.style),
              Text("Thank You", style: WithPages.style),
            ],
          ),
        ],
      ),
    ),
  ];

  @override
  void initState() {
    liquidController = LiquidController();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Stack(
          children: <Widget>[
            LiquidSwipe(
                pages: pages,
                positionSlideIcon: 0.8,
                fullTransitionValue: 880,
                slideIconWidget: const Icon(Icons.arrow_back_ios),
                onPageChangeCallback: pageChangeCallback,
                waveType: WaveType.liquidReveal,
                liquidController: liquidController,
                preferDragFromRevealedArea: true,
                enableSideReveal: true,
                ignoreUserGestureWhileAnimating: true,
                enableLoop: true),
          ],
        ),
      ),
    );
  }

  pageChangeCallback(int lpage) {
    setState(() {
      page = lpage;
    });
  }
}

class ExampleSlider extends StatefulWidget {
  const ExampleSlider({Key? key}) : super(key: key);

  @override
  State<ExampleSlider> createState() => _ExampleSliderState();
}

class _ExampleSliderState extends State<ExampleSlider> {
  double sliderVal = 0;

  @override
  Widget build(BuildContext context) {
    return Slider(
        value: sliderVal,
        activeColor: Colors.white,
        inactiveColor: Colors.red,
        onChanged: (val) {
          setState(() {
            sliderVal = val;
          });
        });
  }
}
