import 'package:brainburst/models/branch.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart';
import 'package:provider/provider.dart';

class LearningPage extends StatelessWidget {
  const LearningPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 393,
      height: 852,
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment(0.39, 0.92),
          end: Alignment(-0.39, -0.92),
          colors: [Color(0xFFF7D5E5), Color(0x00FA99C8)],
        ),
      ),
      child: const Column(
        children: [
          LearningPageLogo(),
          LearningPageImage(),
          LearningPageTitle(),
          LearningPageContent(),
        ],
      ),
    );
  }
}

class LearningPageLogo extends StatelessWidget {
  const LearningPageLogo({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            width: 45,
            height: 40,
            decoration: ShapeDecoration(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(75),
              ),
            ),
            child: Image.asset(
              'assets/learning_page/app_bar_logo.png',
            ),
          ),
        ),
      ],
    );
  }
}

class LearningPageImage extends StatelessWidget {
  const LearningPageImage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 30),
      padding: const EdgeInsets.all(20),
      width: 365,
      height: 148,
      decoration: ShapeDecoration(
        color: const Color(0xFF29968E),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 60, top: 17),
            child: Transform(
              transform: Matrix4.identity()
                ..translate(0.0, 0.0)
                ..rotateZ(3.10),
              child: const Image(image: Svg('assets/learning_page/Group3.svg')),
            ),
          ),
          const Image(
            image: Svg(
              'assets/learning_page/Group6.svg',
              size: Size(48, 60),
            ),
          ),
          const Image(
            image: Svg(
              'assets/learning_page/Group5.svg',
              size: Size(125, 135),
            ),
          ),
        ],
      ),
    );
  }
}

class LearningPageTitle extends StatelessWidget {
  const LearningPageTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15),
      child: Row(
        children: [
          Container(
            margin: const EdgeInsets.only(left: 20),
            child: const Text(
              'Course Detail',
              style: TextStyle(
                color: Colors.black,
                fontSize: 18,
                fontFamily: 'Inter',
                fontWeight: FontWeight.w700,
                height: 0,
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.only(left: 70),
            width: 113,
            height: 26,
            decoration: ShapeDecoration(
              color: const Color(0xFF60E5AE),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(6)),
            ),
            child: const Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Icon(
                  Icons.alarm,
                  color: Colors.white,
                  size: 13,
                ),
                Text(
                  '3 hours, 20 min',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 10,
                    fontFamily: 'Inter',
                    fontWeight: FontWeight.w800,
                    height: 0,
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}

class LearningPageContentTile extends StatelessWidget {
  final int index;
  final bool played;
  const LearningPageContentTile(
      {super.key, required this.index, required this.played});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 20),
      width: 332,
      height: 56,
      decoration: ShapeDecoration(
        color: const Color(0xFF60E5AF),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
      ),
      child: Row(
        children: [
          Container(
            margin: const EdgeInsets.only(left: 16),
            width: 30,
            height: 30,
            decoration: ShapeDecoration(
              color: played ? const Color(0xFF1A524E) : const Color(0xFFD9F0E6),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(11),
              ),
            ),
            child: Center(
              child: Image(
                image: played
                    ? const Svg('assets/learning_page/play.svg')
                    : const Svg('assets/learning_page/play2.svg'),
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.only(left: 30),
            width: 235,
            child: Text(
              'പാഠം- $index',
              style: TextStyle(
                color: played ? Colors.white : Colors.black,
                fontSize: 32,
                fontFamily: 'Marko One',
                fontWeight: FontWeight.w400,
                height: 0,
              ),
            ),
          )
        ],
      ),
    );
  }
}

class LearningPageContent extends StatefulWidget {
  const LearningPageContent({super.key});

  @override
  State<LearningPageContent> createState() => _LearningPageContentState();
}

class _LearningPageContentState extends State<LearningPageContent> {
  @override
  Widget build(BuildContext context) {
    final branchProvider = context.watch<BranchProvider>();

    return Container(
      padding: const EdgeInsets.all(20),
      width: 367,
      height: 483,
      decoration: ShapeDecoration(
        color: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
      ),
      child: ListView(
        children: [
          const LearningPageContentTile(index: 1, played: true),
          const LearningPageContentTile(index: 2, played: false),
          const LearningPageContentTile(index: 3, played: false),
          const LearningPageContentTile(index: 4, played: false),
          InkWell(
            onTap: () {
              branchProvider.changeBranchIndex(1);
            },
            child:
             const LearningPageContentTile(index: 5, played: false),
          ),
          const LearningPageContentTile(index: 6, played: false),
          const LearningPageContentTile(index: 7, played: false),
        ],
      ),
    );
  }
}
