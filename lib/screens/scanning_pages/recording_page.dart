import 'package:brainburst/screens/scanning_pages/scanning_index.dart';
import 'package:flutter/material.dart';

class RecordingPage extends StatefulWidget {
  const RecordingPage({super.key});

  @override
  State<RecordingPage> createState() => _RecordingPageState();
}

class _RecordingPageState extends State<RecordingPage> {
  bool showText = true;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 852,
      width: 393,
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment(0.39, 0.92),
          end: Alignment(-0.39, -0.92),
          colors: [Color(0xFFF7D5E5), Color(0x00FA99C8)],
        ),
      ),
      child: Column(
        children: [
          const ScanningPageLogo(),
          Padding(
            padding: const EdgeInsets.only(top: 150,bottom: 100),
            child: MaterialButton(
                onPressed: () {
                  setState(() { 
                    showText = !showText;
                  });
                },
                child: Image.asset('assets/recording_page/recording_logo.png')),
          ),
          showText
              ? const Text(
                  '   മലയാളം',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 48,
                    fontFamily: 'Marko One',
                    fontWeight: FontWeight.w400,
                    height: 0,
                  ),
                )
              : Container()
        ],
      ),
    );
  }
}
