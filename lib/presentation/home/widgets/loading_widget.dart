import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lottie/lottie.dart';

class LoadingWidget extends StatelessWidget {
  const LoadingWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Center(
        child: LottieBuilder.asset(
          'assets/loading.json',
          width: 180.sp,
          height: 180.sp,
        ),
      ),
    );
  }

}