import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../../data/random/random_produk.dart';
import '../../../theme/app_theme.dart';
import '../controllers/master_barang_controller.dart';

class MasterBarangView extends GetView<MasterBarangController> {
  const MasterBarangView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Master Barang'),
        centerTitle: true,
      ),
      body: Card(
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
                          color: appColor(context).useScheme.primary,
                        ),
                        child: Text(
                          "No",
                          style: appFont(context).bodyLarge?.copyWith(
                                fontWeight: FontWeight.bold,
                                color: appColor(context).useScheme.background,
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
                          color: appColor(context).useScheme.primary,
                        ),
                        child: Text(
                          "Kode Produk",
                          style: appFont(context).bodyLarge?.copyWith(
                                fontWeight: FontWeight.bold,
                                color: appColor(context).useScheme.background,
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
                          color: appColor(context).useScheme.primary,
                        ),
                        child: Text(
                          "Nama Produk",
                          style: appFont(context).bodyLarge?.copyWith(
                                fontWeight: FontWeight.bold,
                                color: appColor(context).useScheme.background,
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
                            color: appColor(context).useScheme.primary,
                          ),
                          child: Text(
                            "@Harga",
                            style: appFont(context).bodyLarge?.copyWith(
                                  fontWeight: FontWeight.bold,
                                  color: appColor(context).useScheme.background,
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
                            color: appColor(context).useScheme.primary,
                          ),
                          child: Text(
                            "Qty",
                            style: appFont(context).bodyLarge?.copyWith(
                                  fontWeight: FontWeight.bold,
                                  color: appColor(context).useScheme.background,
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
                            color: appColor(context).useScheme.primary,
                          ),
                          child: Text(
                            "",
                            style: appFont(context).bodyLarge?.copyWith(
                                  fontWeight: FontWeight.bold,
                                  color: appColor(context).useScheme.background,
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
                              ? appColor(context).useScheme.secondaryContainer
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
                                    style: appFont(context).bodyLarge?.copyWith(
                                          fontWeight: FontWeight.bold,
                                          color: appColor(context)
                                              .useScheme
                                              .onBackground,
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
                                  decoration: const BoxDecoration(
                                      // color: appColor(context)
                                      //     .useScheme
                                      //     .primary,
                                      ),
                                  child: Text(
                                    dataProduk[i].kodeProduk ?? "0000",
                                    style: appFont(context).bodyLarge?.copyWith(
                                          fontWeight: FontWeight.bold,
                                          color: appColor(context)
                                              .useScheme
                                              .onBackground,
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
                                  decoration: const BoxDecoration(
                                      // color: appColor(context)
                                      //     .useScheme
                                      //     .primary,
                                      ),
                                  child: Text(
                                    dataProduk[i].namaProduk ?? "ANONIM PRODUK",
                                    style: appFont(context).bodyLarge?.copyWith(
                                          fontWeight: FontWeight.bold,
                                          color: appColor(context)
                                              .useScheme
                                              .onBackground,
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
                                    decoration: const BoxDecoration(
                                        // color: appColor(context)
                                        //     .useScheme
                                        //     .primary,
                                        ),
                                    child: Text(
                                      dataProduk[i].harga?.toString() ?? "0000",
                                      style:
                                          appFont(context).bodyLarge?.copyWith(
                                                fontWeight: FontWeight.bold,
                                                color: appColor(context)
                                                    .useScheme
                                                    .onBackground,
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
                                    decoration: const BoxDecoration(
                                        // color: appColor(context)
                                        //     .useScheme
                                        //     .primary,
                                        ),
                                    child: Text(
                                      "1",
                                      style:
                                          appFont(context).bodyLarge?.copyWith(
                                                fontWeight: FontWeight.bold,
                                                color: appColor(context)
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
                                color: appColor(context).useScheme.primary,
                              ),
                              Expanded(
                                flex: 2,
                                child: InkWell(
                                  onTap: () {},
                                  child: Container(
                                      padding: const EdgeInsets.all(10),
                                      decoration: const BoxDecoration(
                                          // color: appColor(context)
                                          //     .useScheme
                                          //     .primary,
                                          ),
                                      child: Row(
                                        children: [
                                          Icon(
                                            Icons.delete_forever_rounded,
                                            color: appColor(context)
                                                .useScheme
                                                .error,
                                          ),
                                          const SizedBox(
                                            width: 10,
                                          ),
                                          Text(
                                            "Hapus",
                                            style: appFont(context)
                                                .bodyLarge
                                                ?.copyWith(
                                                  fontWeight: FontWeight.bold,
                                                  color: appColor(context)
                                                      .useScheme
                                                      .error,
                                                ),
                                          ),
                                        ],
                                      )),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    const SizedBox(
                      height: kToolbarHeight * 2,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {},
        label: const Text(
          "Tambah Barang",
        ),
      ),
    );
  }
}
