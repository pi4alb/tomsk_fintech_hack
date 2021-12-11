import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:tomks_fintech_hack/data/company.dart';
import 'package:tomks_fintech_hack/data/request.dart';

final CATEGORY_UP = 'category_up';
final CATEGORY_DOWN = 'category_down';
final RATING_UP = 'rating_up';
final RATING_DOWN = 'rating_down';
final RATE_UP = 'rate_up';
final RATE_DOWN = 'rate_down';

final categoryArrowUpProvider = StateProvider<bool>((ref) => true);
final reliabilityArrowUpProvider = StateProvider<bool>((ref) => false);
final rateArrowUpProvider = StateProvider<bool>((ref) => false);
final pressedButtonProvider = StateProvider<String>((ref) => CATEGORY_UP);

final searchCompanyProvider = StateProvider<String>((ref) => "");


final requestsProvider = FutureProvider<List<Request>>((ref) async {
  final fakeRequests = [
    Request(
        companyName:"ООО Амбит",
        minPayment: 1000,
        rating: "CCC",
        rate: 12.4,
        goal: 'на проект',
        softCap: 900000,
        hardCap: 1000000,
        accumulatedSum: 1000,
        softEndDate: DateTime(2021, 12),
        hardEndDate: DateTime(2022, 2)),
    Request(
        companyName: "ZENNEX",
        minPayment: 1000,
        rating: "AAA",
        rate: 13.7,
        goal: 'На сайт',
        softCap: 900000,
        hardCap: 1000000,
        accumulatedSum: 500000,
        softEndDate: DateTime(2021, 12),
        hardEndDate: DateTime(2022, 2)),
    Request(
        companyName: "АО ГАРАНТ",
        minPayment: 1000,
        rating: "BBB",
        rate: 23.7,
        goal: 'На сайт',
        softCap: 900000,
        hardCap: 1000000,
        accumulatedSum: 870000,
        softEndDate: DateTime(2021, 12),
        hardEndDate: DateTime(2022, 2)),

  ];
  return Future.delayed(Duration(seconds: 2)).then((value) => fakeRequests);
});
