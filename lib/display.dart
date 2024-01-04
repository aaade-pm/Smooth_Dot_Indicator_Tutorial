import 'package:flutter/material.dart';
import 'package:fun_dot_indicators/widgets/page_five.dart';
import 'package:fun_dot_indicators/widgets/page_four.dart';
import 'package:fun_dot_indicators/widgets/page_one.dart';
import 'package:fun_dot_indicators/widgets/page_three.dart';
import 'package:fun_dot_indicators/widgets/page_two.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class Display extends StatefulWidget {
  const Display({super.key});

  @override
  State<Display> createState() => _DisplayState();
}

class _DisplayState extends State<Display> {
  //The controller for the pageview
  final _controller = PageController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: SizedBox(
              height: 400,
              width: MediaQuery.of(context).size.width * 0.8,
              child: PageView(
                controller: _controller,
                scrollDirection: Axis.horizontal,
                children: const [
                  PageOne(),
                  PageTwo(),
                  PageThree(),
                  PageFour(),
                  PageFive(),
                ],
              ),
            ),
          ),

          //spacing
          const SizedBox(
            height: 20,
          ),

          //smooth page indicator
          // SmoothPageIndicator(
          //   controller: _controller,
          //   count: 5,
          //   effect: const ExpandingDotsEffect(
          //     //It determines the width of the expanding dot by multiplying with the dotWidth.
          //     expansionFactor: 4,
          //     //It increases or decreases the width of the dots.
          //     dotWidth: 25,
          //     //It increases or decreases the height of the dots.
          //     dotHeight: 25,
          //     //It is used to control the radius of the dots. Making the the radius = 0 can turn the dots to a square or rectangle.
          //     radius: 6,
          //     //It gives space between each dots.
          //     spacing: 10,
          //     //It gives color to the dot of the presently viewed page
          //     activeDotColor: Color.fromARGB(255, 122, 11, 3),
          //     //It gives color to other dots asides from the active one.
          //     dotColor: Color.fromARGB(255, 227, 149, 149),
          //   ),
          // )

          // SmoothPageIndicator(
          //   controller: _controller,
          //   count: 5,
          //   effect: const JumpingDotEffect(
          //     jumpScale: 2.4,
          //     // verticalOffset: 20, //Optional depending on the design.
          //     dotWidth: 25,
          //     dotHeight: 25,
          //     spacing: 10,
          //     activeDotColor: Color.fromARGB(255, 122, 11, 3),
          //     dotColor: Color.fromARGB(255, 227, 149, 149),
          //   ),
          // ),

          // SmoothPageIndicator(
          //   controller: _controller,
          //   count: 5,
          //   effect: ScrollingDotsEffect(
          //     activeDotScale: 2,
          //     maxVisibleDots: 5,
          //     // fixedCenter: true,
          //     dotHeight: 25,
          //     dotWidth: 25,
          //     spacing: 20,
          //     activeDotColor: Color.fromARGB(255, 122, 11, 3),
          //     dotColor: Color.fromARGB(255, 227, 149, 149),
          //   ),
          // ),

          // SmoothPageIndicator(
          //   controller: _controller,
          //   count: 5,
          //   effect: const SwapEffect(
          //     type: SwapType.zRotation, // can also be SwapType.yRotation
          //     dotHeight: 25,
          //     dotWidth: 25,
          //     spacing: 20,
          //     activeDotColor: Color.fromARGB(255, 122, 11, 3),
          //     dotColor: Color.fromARGB(255, 227, 149, 149),
          //   ),
          // ),

          // SmoothPageIndicator(
          //   controller: _controller,
          //   count: 5,
          //   effect: const WormEffect(
          //     //The type can also be;
          //     // WormType.thin
          //     // WormType.thinUnderground
          //     // WormType.underground
          //     type: WormType.underground,
          //     dotHeight: 25,
          //     dotWidth: 25,
          //     spacing: 20,
          //     activeDotColor: Color.fromARGB(255, 122, 11, 3),
          //     dotColor: Color.fromARGB(255, 227, 149, 149),
          //   ),
          // ),

          SmoothPageIndicator(
            controller: _controller,
            count: 5,
            effect: CustomizableEffect(
              activeDotDecoration: DotDecoration(
                color: Colors.purple,
                width: 30,
                height: 30,
                borderRadius: BorderRadius.circular(50),
                dotBorder: DotBorder(
                  width: 3,
                  color: Colors.purple,
                  padding: 6,
                  type: DotBorderType.solid,
                ),
              ),
              dotDecoration: const DotDecoration(
                color: Colors.black,
                width: 20,
                height: 20,
                verticalOffset: 20,
                rotationAngle: 140,
              ),
              spacing: 20,
            ),
          ),
        ],
      ),
    );
  }
}
