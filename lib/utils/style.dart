import 'package:flutter/material.dart';

class Spacing {
  static const _multiplier = 6;
  static const tiny = SizedBox(height: _multiplier * 1);
  static const verySmall = SizedBox(height: _multiplier * 2);
  static const small = SizedBox(height: _multiplier * 3);
  static const medium = SizedBox(height: _multiplier * 4);
  static const large = SizedBox(height: _multiplier * 5);
  static const veryLarge = SizedBox(height: _multiplier * 6);
  static const gigantic = SizedBox(height: _multiplier * 7);
}
