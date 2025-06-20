import 'package:flutter/material.dart';

class CertTypeModel {
  final int id;
  final int certId;
  final String name;
  final String certificationName;
  final String name;

  CertTypeModel({
    required this.id,
 codex/add-dropdown-for-certification-list
    required this.certId,
    required this.name,
    required this.certificationName,
  });

  factory CertTypeModel.fromJson(Map<String, dynamic> json) {
    return CertTypeModel(
      id: json['id'],
 codex/add-dropdown-for-certification-list
      certId: json['certId'],
      name: json['name'],
      certificationName: json['certification']['name'],
    );
  }
}

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
