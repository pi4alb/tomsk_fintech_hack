import 'package:tomks_fintech_hack/app/top_level_providers.dart';
import 'package:tomks_fintech_hack/constants/pages_ids.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class MyFloatingActionButton extends ConsumerWidget {
  const MyFloatingActionButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, watch) {
    final bottomNavIndex = watch(bottomNavIndexProvider);

    return FloatingActionButton(
      child: Icon(Icons.business_center, size: 36,),
      onPressed: () {
        bottomNavIndex.state = PORTFOLIO_PAGE;
      },
    );
  }
}
