import 'package:flutter/material.dart';

class CustomIcon extends StatelessWidget {
  const CustomIcon({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Stack(
          children: const [
            Icon(
              Icons.notifications,
              color: Colors.grey,
              size: 28,
            ),
            Positioned(
              left: 11,
              child: Icon(
                Icons.brightness_1,
                size: 12,
                color: Colors.white,
              ),
            ),
            Positioned(
              left: 12,
              child: Icon(
                Icons.brightness_1,
                size: 10,
                color: Colors.red,
              ),
            ),
          ],
        ),
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Icon(
            Icons.person,
            color: Colors.grey,
            size: 28,
          ),
        ),
      ],
    );
  }
}