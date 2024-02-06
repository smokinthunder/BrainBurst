import 'package:brainburst/screens/scanning_pages/scanning_index.dart';
import 'package:flutter/material.dart';

class CameraPage extends StatelessWidget {
  const CameraPage({super.key});

  @override
  Widget build(BuildContext context) {
    // final branchProvider = context.watch<BranchProvider>();

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
      child:  Column(children: [
        const ScanningPageLogo(),
        Container(
          height: 400,
          width: 320,
          color: Colors.grey,
        )
      ]),
    );
  }
}
