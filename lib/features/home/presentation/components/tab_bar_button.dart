import 'package:flutter/material.dart';

class TabBarButton extends StatelessWidget {
  final String title;
  final bool isSelected;
  const TabBarButton({super.key, required this.title, this.isSelected = false});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 37,
      // width: 114.50,
      decoration: BoxDecoration(
        // borderRadius: BorderRadius.circular(7.12),
        color: isSelected ? Colors.white : Color(0xFFD9D9D9),
      ),
      child: Center(
        child: Text(
          title,
          textAlign: TextAlign.center,
          style: Theme.of(context)
              .textTheme
              .labelMedium!
              .copyWith(fontSize: 12.1, fontWeight: FontWeight.w500),
        ),
      ),
    );
  }
}
