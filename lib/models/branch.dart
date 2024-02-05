import 'package:brainburst/screens/scanning_pages/alphabets_page.dart';
import 'package:brainburst/screens/scanning_pages/recording_page.dart';
import 'package:brainburst/screens/scanning_pages/uploading_page.dart';
import 'package:brainburst/screens/video_page.dart';
import 'package:flutter/material.dart';

class BranchProvider extends ChangeNotifier {
  int branchIndex = 0;

  Widget getBranchWidget() {
    switch (branchIndex) {
      case 1:
        return const VideoPage();
      case 2:
        return const RecordingPage();
      case 3:
        return const UplaodingPage();
      case 4:
        return const AlphabetsPage();
      default:
        return const Text('Invalid branch index');
    }
  }

  void changeBranchIndex(int newIndex) {
    branchIndex = newIndex;
    notifyListeners();
  }
}
