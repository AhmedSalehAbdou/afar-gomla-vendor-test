import 'package:flutter/material.dart';

bool isRtlDirection(context) {
  final TextDirection currentDirection = Directionality.of(context);
  final bool isRTL = currentDirection == TextDirection.rtl;
  return isRTL;
}
