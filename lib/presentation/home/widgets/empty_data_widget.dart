import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lottie/lottie.dart';

class EmptyData extends StatelessWidget {
  const EmptyData({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Center(
        child: LottieBuilder.asset(
          'assets/empty-data.json',
          width: 180.sp,
          height: 180.sp,
        ),
      ),
    );
  }

}