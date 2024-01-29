import 'dart:ui';

import 'package:flutter/material.dart';

class DailogBayar extends StatefulWidget {
  const DailogBayar({super.key});

  @override
  State<DailogBayar> createState() => _DailogBayarState();
}

class _DailogBayarState extends State<DailogBayar> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return BackdropFilter(
      filter: ImageFilter.blur(
        sigmaX: 2,
        sigmaY: 2,
      ),
      child: IntrinsicWidth(
        child: Dialog(
            child: SizedBox(
          width: size.width / 2,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              AppBar(
                title: Text("Konfirmasi Pembayaran"),
                backgroundColor: Colors.transparent,
              ),
            ],
          ),
        )),
      ),
    );
  }
}
