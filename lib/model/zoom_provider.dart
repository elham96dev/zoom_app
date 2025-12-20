

import 'package:flutter/material.dart';

class ZoomProvider extends ChangeNotifier{
  double sliderValue = 5;
  double get value => sliderValue;

  set setValue(double value){
    sliderValue = value;
    notifyListeners();
  }
}