import 'dart:convert';

import 'package:bwa_cozy/models/space.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class SpaceProvider extends ChangeNotifier {
  Future<List<Space>> getRecommendedSpaces() async {
    var result = await http.get(
      Uri.parse(
        'https://bwa-cozy.herokuapp.com/recommended-spaces',
      ),
    );

    if (result.statusCode == 200) {
      List<Space> spaces = [];
      List data = jsonDecode(result.body);
      spaces = data.map((e) => Space.fromJson(e)).toList();
      return spaces;
    } else {
      return [];
    }
  }
}
