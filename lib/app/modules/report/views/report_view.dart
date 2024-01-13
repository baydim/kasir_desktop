import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class CustomTable extends StatefulWidget {
  const CustomTable({super.key});

  @override
  State<CustomTable> createState() => _CustomTableState();
}

class _CustomTableState extends State<CustomTable> {
  List<Map<String, dynamic>> data = [
    {
      "kode_produk": "KP001",
      "nama_produk": "nama",
      "harga": 10000,
      "diskon": "5%"
    },
    {
      "kode_produk": "KP002",
      "nama_produk": "Crunchy Delights Cereal",
      "harga": 8500,
      "diskon": "3%"
    },
    {
      "kode_produk": "KP003",
      "nama_produk": "Sparkling Aqua Splash",
      "harga": 12000,
      "diskon": "8%"
    },
    {
      "kode_produk": "KP004",
      "nama_produk": "Zesty Zucchini Chips",
      "harga": 9500,
      "diskon": "6%"
    },
    {
      "kode_produk": "KP005",
      "nama_produk": "Velvet Vanilla Dream Ice Cream",
      "harga": 18000,
      "diskon": "10%"
    },
    {
      "kode_produk": "KP006",
      "nama_produk": "Wholesome Honey Nut Granola",
      "harga": 11000,
      "diskon": "7%"
    },
  ];

  int rowCount = 0;
  int colCount = 0;
  int currentRow = 0;
  int currentCol = 0;
  FocusNode focusNode = FocusNode();

  Color focusedCellColor = Colors.lightBlueAccent.withOpacity(0.3);

  @override
  void initState() {
    super.initState();
    rowCount = data.length + 1; // Add 1 for header row
    colCount = data.isNotEmpty ? data[0].length : 0;
    focusNode = FocusNode();
  }

  @override
  void dispose() {
    focusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Data Table Example'),
        automaticallyImplyLeading: false,
      ),
      body: RawKeyboardListener(
        focusNode: focusNode,
        onKey: _handleKeyEvent,
        child: Table(
          columnWidths: const {
            // ... your column widths ...
            0: FlexColumnWidth(1.0),
            1: FlexColumnWidth(2.0),
            2: FlexColumnWidth(3.0),
            3: FlexColumnWidth(1.5),
            4: FlexColumnWidth(1.0),
            5: FlexColumnWidth(1.0),
            6: FlexColumnWidth(1.5),
          },
          border: TableBorder.all(),
          children: [
            _buildHeaderRow(),
            ...List.generate(
                data.length, (rowIndex) => _buildDataRow(rowIndex)),
          ],
        ),
      ),
    );
  }

  TableRow _buildHeaderRow() {
    return TableRow(
      children: [
        _buildTableCell('No', 0, 0),
        _buildTableCell('Kode Produk', 0, 1),
        _buildTableCell('Nama Produk', 0, 2),
        _buildTableCell('Harga', 0, 3),
        _buildTableCell('Diskon', 0, 4),
        _buildTableCell('Qty', 0, 5),
        _buildTableCell('Total Harga', 0, 6),
        // ... other header cells ...
      ],
    );
  }

  TableRow _buildDataRow(int rowIndex) {
    final datas = data[rowIndex];
    return TableRow(
      children: [
        _buildTableCell((rowIndex + 1).toString(), rowIndex, 0),
        _buildTableCell(datas['kode_produk'], rowIndex, 1),
        _buildTableCell(datas['nama_produk'], rowIndex, 2),
        _buildTableCell(datas['harga'].toString(), rowIndex, 3),
        _buildTableCell(datas['diskon'], rowIndex, 4),
        _buildTableCell('', rowIndex, 5), // Placeholder for Qty
        _buildTableCell('', rowIndex, 6), // Placeholder for Total Harga
        // ... other data cells ...
      ],
    );
  }

  Widget _buildTableCell(String text, int rowIndex, int columnIndex) {
    bool isFocused = currentRow == rowIndex && currentCol == columnIndex;
    return TableCell(
      child: Container(
        decoration: isFocused ? BoxDecoration(color: focusedCellColor) : null,
        padding: const EdgeInsets.all(8.0),
        child: Text(text),
      ),
    );
  }

  void _handleKeyEvent(RawKeyEvent event) {
    if (event is RawKeyDownEvent) {
      if (event.logicalKey == LogicalKeyboardKey.arrowUp) {
        _moveFocus(-1, 0);
      } else if (event.logicalKey == LogicalKeyboardKey.arrowDown) {
        _moveFocus(1, 0);
      } else if (event.logicalKey == LogicalKeyboardKey.arrowLeft) {
        _moveFocus(0, -1);
      } else if (event.logicalKey == LogicalKeyboardKey.arrowRight) {
        _moveFocus(0, 1);
      }
    }
  }

  void _moveFocus(int rowChange, int colChange) {
    int newRow = currentRow + rowChange;
    int newCol = currentCol + colChange;

    if (newRow >= 0 && newRow < rowCount && newCol >= 0 && newCol < colCount) {
      setState(() {
        currentRow = newRow;
        currentCol = newCol;
      });
      focusNode.requestFocus();
    }
  }
}
