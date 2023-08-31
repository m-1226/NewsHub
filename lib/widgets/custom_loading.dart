import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class CustomLoading extends StatelessWidget {
  final double width;
  final double height;

  const CustomLoading({
    super.key,
    required this.width,
    required this.height,
  });

  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
      baseColor: Colors.grey,
      highlightColor: Colors.white,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(6),
        child: Container(
          width: width,
          height: height,
          decoration: const BoxDecoration(
            color: Colors.black,
          ),
        ),
      ),
    );
  }
}
