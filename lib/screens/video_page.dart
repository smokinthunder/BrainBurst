import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart';

class VideoPage extends StatelessWidget {
  const VideoPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      // padding: const EdgeInsets.all(20),
      margin: const EdgeInsets.only(top: 30),
      width: 393,
      height: 852,
      color: Colors.white,
      child: Stack(
        children: [
          
          const Column(
            children: [
              Text(
                'പാഠം-5',
                style: TextStyle(
                  color: Color(0xFFA10A77),
                  fontSize: 48,
                  fontFamily: 'Marcellus',
                  fontWeight: FontWeight.w400,
                  height: 0,
                  letterSpacing: 0.48,
                ),
              ),
              Image(image: Svg('assets/video_page/circle.svg'))
            ],
          ),
          Container(
            margin: const EdgeInsets.only(top: 100),
            width: 394,
            height: 373,
            decoration: ShapeDecoration( 
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(14),
              ),
            ),
            child: Image.asset('assets/video_page/elephant.png'),
          ),
        ],
      ),
    );
  }
}
