import 'package:earth_141/presentation/home/home_provider.dart';
import 'package:earth_141/presentation/home/widgets/country_card.dart';
import 'package:earth_141/presentation/home/widgets/loading_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lottie/lottie.dart';
import 'package:provider/provider.dart';

class AsiaPage extends StatelessWidget {
  const AsiaPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<HomeProvider>(builder: (context, state, child) {
      if (state.loaded) {
        return const LoadingWidget();
      }
      if (state.asiaCountries != null &&
          state.asiaCountries!.isNotEmpty) {
        return SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
          child: Wrap(
            spacing: 12,
            runSpacing: 12,
            children:
            state.asiaCountries!.map((country) {
              return CountryCard(country: country);
            }).toList(),
          ),
        );
      }
      return Center(
        child: LottieBuilder.asset(
          'assets/empty-data.json',
          width: 180.sp,
          height: 180.sp,
        ),
      );
    });
    
  }
}
