import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomHeight extends StatelessWidget {
  final height;
  const CustomHeight({super.key, required this.height});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
    );
  }
}

class CustomWidth extends StatelessWidget {
  final width;
  const CustomWidth({super.key, required this.width});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: width,
    );
  }
}

