import 'package:flutter/material.dart';
import 'package:mythika/shared/colors.dart';

class MyStyles {
  static const kTextStyle = TextStyle(color: Colors.white, fontSize: 20);
  static const kHeadingTextStyle =
      TextStyle(fontSize: 50, fontWeight: FontWeight.w900, color: Colors.white);
  static final textFieldInputDecoration = InputDecoration(
    filled: true,
    fillColor: MyColors.textFieldFillColor,
    contentPadding: const EdgeInsets.symmetric(vertical: 12, horizontal: 25),
    hintText: 'E-mail ID',
    hintStyle: const TextStyle(
        color: Colors.black, fontSize: 20, fontWeight: FontWeight.w200),
    enabledBorder: OutlineInputBorder(
      borderSide: const BorderSide(color: Colors.transparent, width: 0),
      borderRadius: BorderRadius.circular(12),
    ),
    focusedBorder: OutlineInputBorder(
      borderSide: const BorderSide(color: Colors.transparent, width: 0),
      borderRadius: BorderRadius.circular(12),
    ),
    border: OutlineInputBorder(
      borderSide: const BorderSide(color: Colors.transparent, width: 0),
      borderRadius: BorderRadius.circular(12),
    ),
  );
}
