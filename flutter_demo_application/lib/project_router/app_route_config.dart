import 'package:flutter/material.dart';
import 'package:flutter_demo_application/project_router/app_route_constant.dart';
import 'package:go_router/go_router.dart';

class MyAppRouter {
  GoRouter route = GoRouter(
    routes: [
      // GoRoute(
      //   name: MyAppConstant().homeRouteName,
      //   path: "/",
      //   pageBuilder: (context, state) {
      //     return MaterialPage(child: MyHomePage(title: "Stock Market"));
      //   },
      // ),
      // GoRoute(
      //   name: MyAppConstant().detailsRouteName,
      //   path: "/details",
      //   pageBuilder: (context, state) {
      //     return MaterialPage(child: StockDetails());
      //   },
      // ),
    ]
    );
}