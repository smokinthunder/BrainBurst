// import 'dart:html';
import 'dart:io';
import 'package:brainburst/models/branch.dart';
import 'package:brainburst/models/image_process.dart';
import 'package:brainburst/screens/scanning_pages/scanning_index.dart';
import 'package:flutter/material.dart';
import 'package:flutter_camera/flutter_camera.dart';
import 'package:http/http.dart';
import 'package:provider/provider.dart';

class CameraPage extends StatefulWidget {
  const CameraPage({Key? key}) : super(key: key);

  @override
  _CameraPageState createState() => _CameraPageState();
}

class _CameraPageState extends State<CameraPage> {
  @override
  Widget build(BuildContext context) {
    final branchProvider = context.watch<BranchProvider>();

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
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const ScanningPageLogo(),
           Padding(
            padding: const EdgeInsets.only(bottom: 400),
            child: InkWell(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const CameraPreview()));
              },
              child: const Text('Click here to take a picture'),
            ),
          ),
        ],
      ),
    );
  }
}

class CameraPreview extends StatelessWidget {
  const CameraPreview({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FlutterCamera(
        color: Colors.amber,
        onImageCaptured: (value) {
          final path = value.path;
          print("::::::::::::::::::::::::::::::::: $path");
          if (path.contains('.jpg')) {
            showDialog(
                context: context,
                builder: (context) {
                  return AlertDialog(
                    content: Column(
                      children: [
                        Image.file(File(path)),
                         Text(ImageProcess().imageProcess(path) as String),
                      ],
                    ),
                  );
                });
          }
        },
      ),
    );
  }
}
