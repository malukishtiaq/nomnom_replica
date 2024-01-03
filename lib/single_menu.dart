import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:nomnom_replica/single_menu_payload.dart';

class SingleMenu extends StatefulWidget {
  final SingleMenuPayload payload;

  const SingleMenu({super.key, required this.payload});

  @override
  State<SingleMenu> createState() => _SingleMenuState();
}

class _SingleMenuState extends State<SingleMenu> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: widget.payload.onSelect,
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          if (widget.payload.index != 0) const SizedBox(width: 10),
          Container(
            width: widget.payload.boxWidth,
            height: widget.payload.boxWidth,
            alignment: Alignment.center,
            decoration: BoxDecoration(
              color: widget.payload.isSelected
                  ? Theme.of(context).primaryColor
                  : Theme.of(context).canvasColor,
              borderRadius: BorderRadius.circular(10),
              boxShadow: [
                BoxShadow(
                  color: Theme.of(context).shadowColor,
                  spreadRadius: 1,
                  blurRadius: 1,
                  offset: const Offset(0, 1),
                ),
              ],
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              children: [
                SvgPicture.asset(
                  widget.payload.entry.icon,
                  height: 32,
                  colorFilter: ColorFilter.mode(
                    widget.payload.isSelected
                        ? Theme.of(context).canvasColor
                        : Theme.of(context).disabledColor,
                    BlendMode.srcIn,
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),
                Text(
                  widget.payload.entry.title,
                  textAlign: TextAlign.center,
                  style: Theme.of(context).textTheme.bodySmall?.copyWith(
                        fontWeight: FontWeight.w500,
                      ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
