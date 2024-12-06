import 'package:earth_141/presentation/home/home_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';

import 'pages/asia_page.dart';
import 'pages/europe_page.dart';

class HomeScreen extends StatefulWidget {
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> with TickerProviderStateMixin {
  late TabController tabController;

  @override
  void initState() {
    super.initState();
    tabController = TabController(length: 6, vsync: this);
    tabController.addListener(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: const Color(0xFF150948),
        title: Text(
          "Earth 141",
          style: TextStyle(color: Colors.white, fontSize: 22.sp),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          TabBar(
            tabAlignment: TabAlignment.start,
            controller: tabController,
            isScrollable: true,
            tabs: <Widget>[
              Tab(
                text: "Asia",
              ),
              Tab(
                text: "Europe",
              ),
              Tab(
                text: "North America",
              ),
              Tab(
                text: "South America",
              ),
              Tab(
                text: "Africa",
              ),
              Tab(
                text: "Oceania",
              ),
            ],
          ),
          Expanded(
            child: TabBarView(
              controller: tabController,
              physics: const NeverScrollableScrollPhysics(),
              children: [
                AsiaPage(),
                EuropePage(),
                EuropePage(),
                EuropePage(),
                EuropePage(),
                EuropePage(),
              ],
            ),
          )
        ],
      ),
      // body: Center(
      //   // child: FutureBuilder(future: context.read<HomeProvider>().getAsiaCountries(), builder: (context, snapshot) {
      //   //   if(snapshot.connectionState == ConnectionState.waiting) {
      //   //     return const CircularProgressIndicator(
      //   //       color: Color(0xFF150948),
      //   //     );
      //   //   } else if (snapshot.hasError) {
      //   //     return Text("Error: ${snapshot.error}", style: TextStyle(fontSize: 16.sp, color: Colors.red),);
      //   //   } else {
      //   //     return Consumer<HomeProvider>(
      //   //       builder: (context, state, child) {
      //   //         return Text(
      //   //           "Get Data Success",
      //   //           style: TextStyle(fontSize: 16.sp),
      //   //         );
      //   //       },
      //   //     );
      //   //   }
      //   // }),
      //   child: context.watch<HomeProvider>().loaded == true
      //       ? CircularProgressIndicator(
      //           color: Color(0xFF150948),
      //         )
      //       : Text(
      //           "Get Data Success",
      //           style: TextStyle(fontSize: 16.sp),
      //         ),
      // ),
    );
  }
}
