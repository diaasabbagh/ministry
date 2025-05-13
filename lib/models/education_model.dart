import 'package:flutter/material.dart';

class Certificate {
  String name;
  List<Subject> subjects;

  IconData icon;
  String imageAsset;

  Certificate({
    required this.name,
    required this.subjects,
   
    required this.icon,
    required this.imageAsset,
  });
}

class Subject {
  String name;
  int maxMark;

  Subject({required this.name, required this.maxMark});
}