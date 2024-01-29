import 'package:get/get.dart';

import '../modules/home/bindings/home_binding.dart';
import '../modules/home/views/home_view.dart';
import '../modules/master_barang/bindings/master_barang_binding.dart';
import '../modules/master_barang/views/master_barang_view.dart';

// ignore_for_file: constant_identifier_names

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.HOME;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => const HomeView(),
      binding: HomeBinding(),
    ),
    // GetPage(
    //   name: _Paths.REPORT,
    //   page: () => const ReportView(),
    //   binding: ReportBinding(),
    // ),
    GetPage(
      name: _Paths.MASTER_BARANG,
      page: () => const MasterBarangView(),
      binding: MasterBarangBinding(),
    ),
  ];
}
