import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:kasir_desktop/app/theme/app_theme.dart';

import '../../../data/random/random_produk.dart';
import '../controllers/home_controller.dart';
import 'widget/home_drawer.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    // var size = MediaQuery.of(context).size;
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
            Expanded(
              flex: 1,
              child: IntrinsicHeight(
                child: ListView(
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  children: [
                    for (var i = 0; i < 20; i++)
                      Card(
                        color: appColor(context).useScheme.primaryContainer,
                        child: Padding(
                          padding: const EdgeInsets.all(15),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "F$i",
                                style: appFont(context).headlineSmall?.copyWith(
                                      color:
                                          appColor(context).useScheme.primary,
                                    ),
                              ),
                              Text(
                                "To something F$i",
                                style: appFont(context).bodySmall?.copyWith(
                                      color:
                                          appColor(context).useScheme.primary,
                                    ),
                              ),
                            ],
                          ),
                        ),
                      ),
                  ],
                ),
              ),
            ),
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
                                      style:
                                          appFont(context).bodyLarge?.copyWith(
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
                                      style:
                                          appFont(context).bodyLarge?.copyWith(
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
                                      style:
                                          appFont(context).bodyLarge?.copyWith(
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
                                        color:
                                            appColor(context).useScheme.primary,
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
                                VerticalDivider(
                                  thickness: 2,
                                  color: appColor(context).useScheme.primary,
                                ),
                                Expanded(
                                  flex: 1,
                                  child: Container(
                                      padding: const EdgeInsets.all(10),
                                      decoration: BoxDecoration(
                                        color:
                                            appColor(context).useScheme.primary,
                                      ),
                                      child: Text(
                                        "Diskon",
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
                                  flex: 2,
                                  child: Container(
                                      padding: const EdgeInsets.all(10),
                                      decoration: BoxDecoration(
                                        color:
                                            appColor(context).useScheme.primary,
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
                          const Divider(),

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
                                              padding: const EdgeInsets.all(10),
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
                                              padding: const EdgeInsets.all(10),
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
                                              padding: const EdgeInsets.all(10),
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
                                                        color: appColor(context)
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
                                                        color: appColor(context)
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
                                                  dataProduk[i].diskon ?? "0%",
                                                  style: appFont(context)
                                                      .bodyLarge
                                                      ?.copyWith(
                                                        fontWeight:
                                                            FontWeight.bold,
                                                        color: appColor(context)
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
                                                        color: appColor(context)
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
                    )),
                  ),
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
                                  "Total",
                                  style: appFont(context).bodyLarge?.copyWith(
                                        color: appColor(context)
                                            .useScheme
                                            .onPrimary,
                                      ),
                                ),
                                Text(
                                  "Rp100.000",
                                  style:
                                      appFont(context).headlineLarge?.copyWith(
                                            color: appColor(context)
                                                .useScheme
                                                .onPrimary,
                                            fontWeight: FontWeight.bold,
                                          ),
                                ),
                                const SizedBox(
                                  height: 20,
                                ),
                                Column(
                                  children: [
                                    const SizedBox(
                                      height: 10,
                                    ),
                                    Row(
                                      children: [
                                        Expanded(
                                          child: Text(
                                            "Total",
                                            style: appFont(context)
                                                .bodyLarge
                                                ?.copyWith(
                                                  color: appColor(context)
                                                      .useScheme
                                                      .onPrimary,
                                                ),
                                          ),
                                        ),
                                        Expanded(
                                          child: Text(
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
                                        ),
                                      ],
                                    ),
                                    const SizedBox(
                                      height: 10,
                                    ),
                                    Divider(
                                      height: 0,
                                      color:
                                          appColor(context).useScheme.onPrimary,
                                    ),
                                  ],
                                ),
                                Column(
                                  children: [
                                    const SizedBox(
                                      height: 10,
                                    ),
                                    Row(
                                      children: [
                                        Expanded(
                                          child: Text(
                                            "Diskon",
                                            style: appFont(context)
                                                .bodyLarge
                                                ?.copyWith(
                                                  color: appColor(context)
                                                      .useScheme
                                                      .onPrimary,
                                                ),
                                          ),
                                        ),
                                        Expanded(
                                          child: Text(
                                            "10%",
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
                                        ),
                                      ],
                                    ),
                                    const SizedBox(
                                      height: 10,
                                    ),
                                    Divider(
                                      height: 0,
                                      color:
                                          appColor(context).useScheme.onPrimary,
                                    ),
                                  ],
                                ),
                                Column(
                                  children: [
                                    const SizedBox(
                                      height: 10,
                                    ),
                                    Row(
                                      children: [
                                        Expanded(
                                          child: Text(
                                            "Total Final",
                                            style: appFont(context)
                                                .bodyLarge
                                                ?.copyWith(
                                                  color: appColor(context)
                                                      .useScheme
                                                      .onPrimary,
                                                ),
                                          ),
                                        ),
                                        Expanded(
                                          child: Text(
                                            "Rp300.000",
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
                                        ),
                                      ],
                                    ),
                                    const SizedBox(
                                      height: 10,
                                    ),
                                    Divider(
                                      height: 0,
                                      color:
                                          appColor(context).useScheme.onPrimary,
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        )),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
