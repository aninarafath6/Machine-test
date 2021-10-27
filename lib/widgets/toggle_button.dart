import 'package:flutter/material.dart';
import 'package:test_app/constants/app_colors.dart';

class ToggleButton extends StatefulWidget {
  const ToggleButton({
    Key? key,
    this.onToggle,
  }) : super(key: key);
  final Function(bool)? onToggle;

  @override
  State<ToggleButton> createState() => _ToggleButtonState();
}

class _ToggleButtonState extends State<ToggleButton> {
  void toggle() {
    setState(() {
      isSelected = !isSelected;
    });
    widget.onToggle?.call(isSelected);
  }

  bool isSelected = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: toggle,
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 200),
        alignment: !isSelected ? Alignment.centerRight : Alignment.centerLeft,
        padding: const EdgeInsets.symmetric(horizontal: 4),
        width: 80,
        height: 40,
        decoration: BoxDecoration(
          color: isSelected ? Colors.grey : Colors.blue,
          borderRadius: const BorderRadius.all(Radius.circular(30)),
        ),
        child: Container(
          height: 30,
          width: 30,
          decoration: const BoxDecoration(
            color: Colors.white,
            shape: BoxShape.circle,
          ),
        ),
      ),
    );
  }
}
