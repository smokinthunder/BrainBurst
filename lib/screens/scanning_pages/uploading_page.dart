import 'dart:io';

import 'package:brainburst/screens/scanning_pages/scanning_index.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:image_picker/image_picker.dart';

class UplaodingPage extends StatefulWidget {
  const UplaodingPage({super.key});

  @override
  State<UplaodingPage> createState() => _UplaodingPageState();
}

class _UplaodingPageState extends State<UplaodingPage> {
  @override
  Widget build(BuildContext context) {
    // final branchProvider = context.watch<BranchProvider>();
    File? _imageFile;
    Future<void> _getImage() async {
      final pickedFile =
          await ImagePicker().pickImage(source: ImageSource.gallery);
      if (pickedFile != null) {
        setState(() {
          _imageFile = File(pickedFile.path);
        });
      }
    }

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
          Container(
            width: 358,
            height: 252,
            margin: const EdgeInsets.only(top: 50),
            padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 50),
            decoration: ShapeDecoration(
              color: const Color(0xB2FAFAFA),
              shape: RoundedRectangleBorder(
                side: const BorderSide(
                  width: 0,
                  color: Color(0xFF9E9E9E),
                ),
                borderRadius: BorderRadius.circular(8.66),
              ),
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                InkWell(
                  onTap: _getImage,
                  child: Container(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 36, vertical: 16),
                    decoration: ShapeDecoration(
                      color: const Color(0x191A524E),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(50),
                      ),
                    ),
                    child: Container(
                      width: 20,
                      height: 20,
                      clipBehavior: Clip.antiAlias,
                      decoration: const BoxDecoration(),
                      child: const Icon(Icons.upload,
                          color: Color.fromARGB(255, 151, 150, 150)),
                    ),
                  ),
                ),
                Container(
                  width: double.infinity,
                  height: 52,
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 40),
                    child: Row(
                      children: [
                        Text(
                          'Click here',
                          style: GoogleFonts.inter(
                            color: const Color(0xFF136DC7),
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                            height: 0.12,
                          ),
                        ),
                        Text(
                          ' to upload the അക്ഷരം',
                          style: GoogleFonts.inter(
                            color: const Color(0xFF1A524E),
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                            height: 0.12,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            width: 344,
            height: 231,
            margin: const EdgeInsets.only(top: 50),
            decoration: ShapeDecoration(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
            ),
            child: Stack(
              children: [
                _imageFile != null ? Image.file(_imageFile!) : Container(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    InkWell(
                      onTap: () {
                        setState(() {
                          _imageFile = null;
                        });
                      },
                      child: Container(
                        margin: const EdgeInsets.all(5),
                        decoration: const ShapeDecoration(
                            color: Colors.red, shape: CircleBorder()),
                        child: const Icon(Icons.close, color: Colors.white),
                      ),
                    ),
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
