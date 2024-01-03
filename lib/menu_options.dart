import 'package:flutter/material.dart';
import 'package:nomnom_replica/helpers.dart';
import 'package:nomnom_replica/mock_api.dart';
import 'package:nomnom_replica/single_menu.dart';
import 'package:nomnom_replica/single_menu_payload.dart';

class MenuOptions extends StatefulWidget {
  const MenuOptions({super.key});

  @override
  State<MenuOptions> createState() => _MenuOptionsState();
}

class _MenuOptionsState extends State<MenuOptions> {
  int? selectedMenuIndex;
  @override
  Widget build(BuildContext context) {
    const double minWidth = 75;
    const double maxWidth = 150;
    double calculatedWidth = pageWidth(context) * 0.1;
    double boxWidth = calculatedWidth.clamp(minWidth, maxWidth);
    double listViewHeight = (boxWidth + 20).clamp(minWidth, 170);
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Menu',
            style: Theme.of(context)
                .textTheme
                .titleLarge
                ?.copyWith(fontWeight: FontWeight.w500),
          ),
          SizedBox(
            height: listViewHeight,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: categories.asMap().entries.map((entry) {
                int index = entry.key;

                return SingleMenu(
                  payload: SingleMenuPayload(
                    boxWidth: boxWidth,
                    index: index,
                    entry: entry.value,
                    isSelected: entry.key == selectedMenuIndex,
                    onSelect: () => selectMenu(entry.key),
                  ),
                );
              }).toList(),
            ),
          ),
        ],
      ),
    );
  }

  void selectMenu(int index) {
    setState(() {
      selectedMenuIndex = index;
    });
  }
}
