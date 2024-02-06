import 'package:brainburst/screens/scanning_pages/scanning_index.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AlphabetsPage extends StatelessWidget {
  const AlphabetsPage({super.key});

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
      child: const Column(
        children: [
          ScanningPageLogo(),
          // Container(
          //   padding: const EdgeInsets.all(10),
          //   margin: const EdgeInsets.all(10),
          //   child: ListView(
          //     // crossAxisCount: 1,
          //     // mainAxisSpacing: 10,
          //     // crossAxisSpacing: 10,
          //     children: const [
          //       // AlphabetBox('a'),
          //       Text('data'),
          //       Text('data'),
          //       Text('data'),
          //       Text('data'),
          //       Text('data'),
          //       Text('data'),
          //       Text('data'),
          //       Text('data'),
          //       Text('data'),
          //       Text('data'),
          //     ],
          //   ),
          // )
        ],
      ),
    );
  }
}

class AlphabetBox extends StatelessWidget {
  final String data;
  const AlphabetBox(this.data, {super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 94,
      height: 84,
      decoration: ShapeDecoration(
        color: const Color(0xFFEBE8B1),
        shape: RoundedRectangleBorder(
          side: BorderSide(
            width: 5,
            strokeAlign: BorderSide.strokeAlignOutside,
            color: Colors.black.withOpacity(0.20000000298023224),
          ),
          borderRadius: BorderRadius.circular(10),
        ),
      ),
      child: Center(
          child: Text(
        data,
        style: GoogleFonts.markoOne(
          color: Colors.black,
          fontSize: 32,
          fontWeight: FontWeight.w400,
          height: 0,
        ),
      )),
    );
  }
}
