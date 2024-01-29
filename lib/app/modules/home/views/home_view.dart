import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:kasir_desktop/app/theme/app_theme.dart';

import '../../../data/random/random_produk.dart';
import '../../report/views/report_view.dart';
import '../controllers/home_controller.dart';
import 'widget/home_drawer.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      drawer: const HomeDrawer(),
      appBar: AppBar(
        title: const Text('KASIR DESKTOP'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(5),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            // Expanded(
            //   flex: 1,
            //   child: IntrinsicHeight(
            //     child: ListView(
            //       shrinkWrap: true,
            //       scrollDirection: Axis.horizontal,
            //       children: [
            //         for (var i = 0; i < 20; i++)
            //           Card(
            //             color: appColor(context).useScheme.primaryContainer,
            //             child: Padding(
            //               padding: const EdgeInsets.all(15),
            //               child: Column(
            //                 crossAxisAlignment: CrossAxisAlignment.center,
            //                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //                 children: [
            //                   Text(
            //                     "F$i",
            //                     style: appFont(context).headlineSmall?.copyWith(
            //                           color:
            //                               appColor(context).useScheme.primary,
            //                         ),
            //                   ),
            //                   Text(
            //                     "To something F$i",
            //                     style: appFont(context).bodySmall?.copyWith(
            //                           color:
            //                               appColor(context).useScheme.primary,
            //                         ),
            //                   ),
            //                 ],
            //               ),
            //             ),
            //           ),
            //       ],
            //     ),
            //   ),
            // ),
            Expanded(
              flex: 10,
              child: Row(
                children: [
                  Expanded(
                    flex: 3,
                    child: Card(
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(
                          8,
                        ),
                        child: Column(
                          children: [
                            IntrinsicHeight(
                              child: Row(
                                children: [
                                  Expanded(
                                    flex: 1,
                                    child: Container(
                                      padding: const EdgeInsets.all(10),
                                      decoration: BoxDecoration(
                                        color:
                                            appColor(context).useScheme.primary,
                                      ),
                                      child: Text(
                                        "No",
                                        style: appFont(context)
                                            .bodyLarge
                                            ?.copyWith(
                                              fontWeight: FontWeight.bold,
                                              color: appColor(context)
                                                  .useScheme
                                                  .background,
                                            ),
                                      ),
                                    ),
                                  ),
                                  VerticalDivider(
                                    thickness: 2,
                                    color: appColor(context).useScheme.primary,
                                  ),
                                  Expanded(
                                    flex: 2,
                                    child: Container(
                                      padding: const EdgeInsets.all(10),
                                      decoration: BoxDecoration(
                                        color:
                                            appColor(context).useScheme.primary,
                                      ),
                                      child: Text(
                                        "Kode Produk",
                                        style: appFont(context)
                                            .bodyLarge
                                            ?.copyWith(
                                              fontWeight: FontWeight.bold,
                                              color: appColor(context)
                                                  .useScheme
                                                  .background,
                                            ),
                                      ),
                                    ),
                                  ),
                                  VerticalDivider(
                                    thickness: 2,
                                    color: appColor(context).useScheme.primary,
                                  ),
                                  Expanded(
                                    flex: 3,
                                    child: Container(
                                      padding: const EdgeInsets.all(10),
                                      decoration: BoxDecoration(
                                        color:
                                            appColor(context).useScheme.primary,
                                      ),
                                      child: Text(
                                        "Nama Produk",
                                        style: appFont(context)
                                            .bodyLarge
                                            ?.copyWith(
                                              fontWeight: FontWeight.bold,
                                              color: appColor(context)
                                                  .useScheme
                                                  .background,
                                            ),
                                      ),
                                    ),
                                  ),
                                  VerticalDivider(
                                    thickness: 2,
                                    color: appColor(context).useScheme.primary,
                                  ),
                                  Expanded(
                                    flex: 2,
                                    child: Container(
                                        padding: const EdgeInsets.all(10),
                                        decoration: BoxDecoration(
                                          color: appColor(context)
                                              .useScheme
                                              .primary,
                                        ),
                                        child: Text(
                                          "@Harga",
                                          style: appFont(context)
                                              .bodyLarge
                                              ?.copyWith(
                                                fontWeight: FontWeight.bold,
                                                color: appColor(context)
                                                    .useScheme
                                                    .background,
                                              ),
                                        )),
                                  ),
                                  VerticalDivider(
                                    thickness: 2,
                                    color: appColor(context).useScheme.primary,
                                  ),
                                  Expanded(
                                    flex: 1,
                                    child: Container(
                                        padding: const EdgeInsets.all(10),
                                        decoration: BoxDecoration(
                                          color: appColor(context)
                                              .useScheme
                                              .primary,
                                        ),
                                        child: Text(
                                          "Qty",
                                          style: appFont(context)
                                              .bodyLarge
                                              ?.copyWith(
                                                fontWeight: FontWeight.bold,
                                                color: appColor(context)
                                                    .useScheme
                                                    .background,
                                              ),
                                        )),
                                  ),
                                  // VerticalDivider(
                                  //   thickness: 2,
                                  //   color: appColor(context).useScheme.primary,
                                  // ),
                                  // Expanded(
                                  //   flex: 1,
                                  //   child: Container(
                                  //       padding: const EdgeInsets.all(10),
                                  //       decoration: BoxDecoration(
                                  //         color:
                                  //             appColor(context).useScheme.primary,
                                  //       ),
                                  //       child: Text(
                                  //         "Diskon",
                                  //         style: appFont(context)
                                  //             .bodyLarge
                                  //             ?.copyWith(
                                  //               fontWeight: FontWeight.bold,
                                  //               color: appColor(context)
                                  //                   .useScheme
                                  //                   .background,
                                  //             ),
                                  //       )),
                                  // ),
                                  VerticalDivider(
                                    thickness: 2,
                                    color: appColor(context).useScheme.primary,
                                  ),
                                  Expanded(
                                    flex: 2,
                                    child: Container(
                                        padding: const EdgeInsets.all(10),
                                        decoration: BoxDecoration(
                                          color: appColor(context)
                                              .useScheme
                                              .primary,
                                        ),
                                        child: Text(
                                          "Total Harga",
                                          style: appFont(context)
                                              .bodyLarge
                                              ?.copyWith(
                                                fontWeight: FontWeight.bold,
                                                color: appColor(context)
                                                    .useScheme
                                                    .background,
                                              ),
                                        )),
                                  ),
                                ],
                              ),
                            ),

                            ///
                            ///
                            ///
                            ///
                            ///
                            ///
                            ///
                            ///
                            ///
                            ///
                            ///
                            ///
                            ///
                            Expanded(
                              child: ListView(
                                children: [
                                  for (var i = 0; i < dataProduk.length; i++)
                                    Container(
                                      decoration: BoxDecoration(
                                        color: i.isOdd
                                            ? appColor(context)
                                                .useScheme
                                                .secondaryContainer
                                            : Colors.transparent,
                                      ),
                                      child: IntrinsicHeight(
                                        child: Row(
                                          children: [
                                            Expanded(
                                              flex: 1,
                                              child: Container(
                                                padding:
                                                    const EdgeInsets.all(10),
                                                decoration: const BoxDecoration(
                                                    // color: appColor(context)
                                                    //     .useScheme
                                                    //     .primary,
                                                    ),
                                                child: Text(
                                                  (i + 1).toString(),
                                                  style: appFont(context)
                                                      .bodyLarge
                                                      ?.copyWith(
                                                        fontWeight:
                                                            FontWeight.bold,
                                                        color: appColor(context)
                                                            .useScheme
                                                            .onBackground,
                                                      ),
                                                ),
                                              ),
                                            ),
                                            VerticalDivider(
                                              thickness: 2,
                                              color: appColor(context)
                                                  .useScheme
                                                  .primary,
                                            ),
                                            Expanded(
                                              flex: 2,
                                              child: Container(
                                                padding:
                                                    const EdgeInsets.all(10),
                                                decoration: const BoxDecoration(
                                                    // color: appColor(context)
                                                    //     .useScheme
                                                    //     .primary,
                                                    ),
                                                child: Text(
                                                  dataProduk[i].kodeProduk ??
                                                      "0000",
                                                  style: appFont(context)
                                                      .bodyLarge
                                                      ?.copyWith(
                                                        fontWeight:
                                                            FontWeight.bold,
                                                        color: appColor(context)
                                                            .useScheme
                                                            .onBackground,
                                                      ),
                                                ),
                                              ),
                                            ),
                                            VerticalDivider(
                                              thickness: 2,
                                              color: appColor(context)
                                                  .useScheme
                                                  .primary,
                                            ),
                                            Expanded(
                                              flex: 3,
                                              child: Container(
                                                padding:
                                                    const EdgeInsets.all(10),
                                                decoration: const BoxDecoration(
                                                    // color: appColor(context)
                                                    //     .useScheme
                                                    //     .primary,
                                                    ),
                                                child: Text(
                                                  dataProduk[i].namaProduk ??
                                                      "ANONIM PRODUK",
                                                  style: appFont(context)
                                                      .bodyLarge
                                                      ?.copyWith(
                                                        fontWeight:
                                                            FontWeight.bold,
                                                        color: appColor(context)
                                                            .useScheme
                                                            .onBackground,
                                                      ),
                                                ),
                                              ),
                                            ),
                                            VerticalDivider(
                                              thickness: 2,
                                              color: appColor(context)
                                                  .useScheme
                                                  .primary,
                                            ),
                                            Expanded(
                                              flex: 2,
                                              child: Container(
                                                  padding:
                                                      const EdgeInsets.all(10),
                                                  decoration: const BoxDecoration(
                                                      // color: appColor(context)
                                                      //     .useScheme
                                                      //     .primary,
                                                      ),
                                                  child: Text(
                                                    dataProduk[i]
                                                            .harga
                                                            ?.toString() ??
                                                        "0000",
                                                    style: appFont(context)
                                                        .bodyLarge
                                                        ?.copyWith(
                                                          fontWeight:
                                                              FontWeight.bold,
                                                          color:
                                                              appColor(context)
                                                                  .useScheme
                                                                  .onBackground,
                                                        ),
                                                  )),
                                            ),
                                            VerticalDivider(
                                              thickness: 2,
                                              color: appColor(context)
                                                  .useScheme
                                                  .primary,
                                            ),
                                            Expanded(
                                              flex: 1,
                                              child: Container(
                                                  padding:
                                                      const EdgeInsets.all(10),
                                                  decoration: const BoxDecoration(
                                                      // color: appColor(context)
                                                      //     .useScheme
                                                      //     .primary,
                                                      ),
                                                  child: Text(
                                                    "1",
                                                    style: appFont(context)
                                                        .bodyLarge
                                                        ?.copyWith(
                                                          fontWeight:
                                                              FontWeight.bold,
                                                          color:
                                                              appColor(context)
                                                                  .useScheme
                                                                  .onBackground,
                                                        ),
                                                  )),
                                            ),
                                            // VerticalDivider(
                                            //   thickness: 2,
                                            //   color: appColor(context)
                                            //       .useScheme
                                            //       .primary,
                                            // ),
                                            // Expanded(
                                            //   flex: 1,
                                            //   child: Container(
                                            //       padding:
                                            //           const EdgeInsets.all(10),
                                            //       decoration: const BoxDecoration(
                                            //           // color: appColor(context)
                                            //           //     .useScheme
                                            //           //     .primary,
                                            //           ),
                                            //       child: Text(
                                            //         dataProduk[i].diskon ?? "0%",
                                            //         style: appFont(context)
                                            //             .bodyLarge
                                            //             ?.copyWith(
                                            //               fontWeight:
                                            //                   FontWeight.bold,
                                            //               color: appColor(context)
                                            //                   .useScheme
                                            //                   .onBackground,
                                            //             ),
                                            //       )),
                                            // ),
                                            VerticalDivider(
                                              thickness: 2,
                                              color: appColor(context)
                                                  .useScheme
                                                  .primary,
                                            ),
                                            Expanded(
                                              flex: 2,
                                              child: Container(
                                                  padding:
                                                      const EdgeInsets.all(10),
                                                  decoration: const BoxDecoration(
                                                      // color: appColor(context)
                                                      //     .useScheme
                                                      //     .primary,
                                                      ),
                                                  child: Text(
                                                    "Total Harga",
                                                    style: appFont(context)
                                                        .bodyLarge
                                                        ?.copyWith(
                                                          fontWeight:
                                                              FontWeight.bold,
                                                          color:
                                                              appColor(context)
                                                                  .useScheme
                                                                  .onBackground,
                                                        ),
                                                  )),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),

                  ///
                  ///
                  ///
                  ///
                  ///
                  ///
                  ///
                  /// PROMO
                  Expanded(
                    flex: 1,
                    child: Card(
                        color: appColor(context).useScheme.primary,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(
                            8,
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(20),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Text(
                                  "PROMO",
                                  style: appFont(context).bodyLarge?.copyWith(
                                        color: appColor(context)
                                            .useScheme
                                            .onPrimary,
                                      ),
                                ),
                              ],
                            ),
                          ),
                        )),
                  ),
                ],
              ),
            ),

            ///
            ///
            ///
            ///
            ///
            ///
            ///
            ///
            SizedBox(
              width: size.width,
              height: size.height / 8,
              child: Row(
                children: [
                  Expanded(
                      flex: 3,
                      child: Card(
                        color: appColor(context).useScheme.primary,
                      )),
                  Expanded(
                    flex: 1,
                    child: Card(
                      color: appColor(context).useScheme.primary,
                      child: Padding(
                        padding: const EdgeInsets.all(20),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Expanded(
                              flex: 2,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    "Total Belanja",
                                    style: appFont(context).bodyLarge?.copyWith(
                                          color: appColor(context)
                                              .useScheme
                                              .onPrimary,
                                        ),
                                  ),
                                  Text(
                                    "Rp100.000",
                                    style: appFont(context)
                                        .headlineSmall
                                        ?.copyWith(
                                          color: appColor(context)
                                              .useScheme
                                              .onPrimary,
                                          fontWeight: FontWeight.bold,
                                        ),
                                    textAlign: TextAlign.end,
                                  ),
                                ],
                              ),
                            ),
                            const SizedBox(
                              width: 20,
                            ),
                            Expanded(
                              child: Container(
                                decoration: BoxDecoration(
                                  color: appColor(context).useScheme.background,
                                  borderRadius: BorderRadius.circular(8),
                                ),
                                child: InkWell(
                                  onTap: () {
                                    Get.to(() => const CustomTable());
                                  },
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        "BAYAR",
                                        style: appFont(context)
                                            .bodyMedium
                                            ?.copyWith(
                                              fontWeight: FontWeight.bold,
                                              color: appColor(context)
                                                  .useScheme
                                                  .primary,
                                            ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
