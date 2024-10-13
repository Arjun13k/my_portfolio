import 'package:flutter/material.dart';

class ProjectDetails with ChangeNotifier {
  final List<String> projectTitle = [
    "Weather App",
    "E-Learning",
    "News App",
    "Note App",
    "ToDo Application",
    "Facebook Messenger"
  ];

  final Map<String, dynamic> images = {
    "Weather App": [
      "asset/image/WhatsApp Image 2024-10-12 at 23.33.05_79e686ee.jpg",
      "asset/image/IMG-20241012-WA0063.jpg",
      "asset/image/IMG-20241012-WA0064.jpg",
      "asset/image/IMG-20241012-WA0065.jpg",
      "asset/image/IMG-20241012-WA0066.jpg",
      "asset/image/IMG-20241012-WA0067.jpg"
    ],
    "E-Learning": [
      "Flutter",
      "Dart",
      "Provider",
      "RestApi",
      "FIrebase",
      "Youtube Player",
    ],
    "News App": [
      "Flutter",
      "Dart",
      "Provider",
      "RestApi",
    ],
    "Note App": [
      "asset/image/IMG-20241013-WA0021.jpg",
      "asset/image/IMG-20241013-WA0022.jpg",
      "asset/image/IMG-20241013-WA0023.jpg",
      "asset/image/IMG-20241013-WA0024.jpg",
    ],
    "ToDo Application": [
      "asset/image/WhatsApp Image 2024-10-13 at 09.41.22_7f1f2acd.jpg",
      // "asset/image/WhatsApp Image 2024-10-13 at 09.41.22_fa0dac80.jpgart",
      "asset/image/WhatsApp Image 2024-10-13 at 09.41.23_e265a07e.jpg",
    ],
    "Facebook Messenger": [
      "asset/image/IMG-20241013-WA0007.jpg",
      "asset/image/IMG-20241013-WA0008.jpg",
      "asset/image/IMG-20241013-WA0009.jpg",
      "asset/image/IMG-20241013-WA0010.jpg",
      "asset/image/IMG-20241013-WA0011.jpg",
      "asset/image/IMG-20241013-WA0012.jpg",
      "asset/image/IMG-20241013-WA0013.jpg",
      "asset/image/IMG-20241013-WA0014.jpg"
    ],
  };
  final Map<String, dynamic> source = {
    "Weather App": [
      "Flutter",
      "Dart",
      "Provider",
      "RestApi",
    ],
    "E-Learning": [
      "Flutter",
      "Dart",
      "Provider",
      "RestApi",
      "FIrebase",
      "Youtube Player",
    ],
    "News App": [
      "Flutter",
      "Dart",
      "Provider",
      "RestApi",
    ],
    "Note App": ["Flutter", "Dart", "Type Adapter", "Hive"],
    "ToDo Application": ["Flutter", "Dart", "Type Adapter", "Hive"],
    "Facebook Messenger": [
      "Flutter",
      "Dart",
    ],
  };
}
