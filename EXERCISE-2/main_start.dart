
import 'package:flutter/material.dart';
import 'package:flutter_1/W6-S2-Practice/EXERCISE-2/model/profile_tile_model.dart';
import 'package:flutter_1/W6-S2-Practice/EXERCISE-2/data/profile_data.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: ProfileApp(profileData: thidaProfile),
  ));
}