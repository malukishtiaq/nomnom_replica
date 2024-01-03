import 'package:flutter/material.dart';
import 'package:nomnom_replica/mock_api.dart';

class SingleMenuPayload {
  int index = 0;
  double boxWidth = 0;
  FoodCategory entry;
  bool isSelected;
  VoidCallback onSelect;

  SingleMenuPayload({
    required this.index,
    required this.boxWidth,
    required this.isSelected,
    required this.entry,
    required this.onSelect,
  });
}
