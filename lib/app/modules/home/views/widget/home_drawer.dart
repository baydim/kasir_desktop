import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kasir_desktop/app/routes/app_pages.dart';

import '../../../report/views/report_view.dart';

class HomeDrawer extends StatelessWidget {
  const HomeDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          // for (var i = 0; i < 10; i++)
          ListTile(
            title: const Text("Master Barang"),
            onTap: () {
              // Navigator.pop(context);
              // Get.to(() => const CustomTable());
              Get.toNamed(Routes.MASTER_BARANG);
            },
          ),
          ListTile(
            title: const Text("App v2 Beta"),
            onTap: () {
              // Navigator.pop(context);
              Get.to(() => const CustomTable());
            },
          ),
        ],
      ),
    );
  }
}
