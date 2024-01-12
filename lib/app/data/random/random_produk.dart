// To parse this JSON data, do
//
//     final modelRandomProduk = modelRandomProdukFromJson(jsonString);

import 'dart:convert';

List<ModelRandomProduk> modelRandomProdukFromJson(String str) =>
    List<ModelRandomProduk>.from(
        json.decode(str).map((x) => ModelRandomProduk.fromJson(x)));

String modelRandomProdukToJson(List<ModelRandomProduk> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class ModelRandomProduk {
  String? kodeProduk;
  String? namaProduk;
  int? harga;
  String? diskon;

  ModelRandomProduk({
    this.kodeProduk,
    this.namaProduk,
    this.harga,
    this.diskon,
  });

  factory ModelRandomProduk.fromJson(Map<String, dynamic> json) =>
      ModelRandomProduk(
        kodeProduk: json["kode_produk"],
        namaProduk: json["nama_produk"],
        harga: json["harga"],
        diskon: json["diskon"],
      );

  Map<String, dynamic> toJson() => {
        "kode_produk": kodeProduk,
        "nama_produk": namaProduk,
        "harga": harga,
        "diskon": diskon,
      };
}

var rawProduct = [
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
  {
    "kode_produk": "KP007",
    "nama_produk": "Midnight Munchies Popcorn",
    "harga": 7500,
    "diskon": "4%"
  },
  {
    "kode_produk": "KP008",
    "nama_produk": "Citrus Burst Energy Drink",
    "harga": 13000,
    "diskon": "9%"
  },
  {
    "kode_produk": "KP009",
    "nama_produk": "Cozy Chai Tea Blend",
    "harga": 9000,
    "diskon": "5%"
  },
  {
    "kode_produk": "KP010",
    "nama_produk": "Fiesta Fajita Wraps",
    "harga": 15000,
    "diskon": "8%"
  },
  {
    "kode_produk": "KP011",
    "nama_produk": "Berry Bliss Yogurt Parfait",
    "harga": 12000,
    "diskon": "6%"
  },
  {
    "kode_produk": "KP012",
    "nama_produk": "Golden Garlic Pita Chips",
    "harga": 9500,
    "diskon": "4%"
  },
  {
    "kode_produk": "KP013",
    "nama_produk": "Tropical Tango Fruit Punch",
    "harga": 11000,
    "diskon": "7%"
  },
  {
    "kode_produk": "KP014",
    "nama_produk": "Heavenly Hazelnut Coffee",
    "harga": 13000,
    "diskon": "9%"
  },
  {
    "kode_produk": "KP015",
    "nama_produk": "Cheesy Jalapeño Poppers",
    "harga": 14000,
    "diskon": "8%"
  },
  {
    "kode_produk": "KP016",
    "nama_produk": "Mocha Madness Brownie Bites",
    "harga": 16000,
    "diskon": "10%"
  },
  {
    "kode_produk": "KP017",
    "nama_produk": "Crispy Kale Crunch",
    "harga": 8500,
    "diskon": "5%"
  },
  {
    "kode_produk": "KP018",
    "nama_produk": "Raspberry Ripple Sorbet",
    "harga": 12000,
    "diskon": "6%"
  },
  {
    "kode_produk": "KP019",
    "nama_produk": "Quinoa Quake Protein Bars",
    "harga": 11000,
    "diskon": "7%"
  },
  {
    "kode_produk": "KP020",
    "nama_produk": "Caramel Swirl Lollipop",
    "harga": 8000,
    "diskon": "4%"
  },
  {
    "kode_produk": "KP021",
    "nama_produk": "Crispy Rice Treats",
    "harga": 7500,
    "diskon": "3%"
  },
  {
    "kode_produk": "KP022",
    "nama_produk": "Lemon Lime Sparkling Water",
    "harga": 10000,
    "diskon": "5%"
  },
  {
    "kode_produk": "KP023",
    "nama_produk": "Spicy Sriracha Popcorn",
    "harga": 9500,
    "diskon": "6%"
  },
  {
    "kode_produk": "KP024",
    "nama_produk": "Mediterranean Olive Mix",
    "harga": 12000,
    "diskon": "8%"
  },
  {
    "kode_produk": "KP025",
    "nama_produk": "Chocolate Almond Bliss Smoothie",
    "harga": 14000,
    "diskon": "9%"
  },
  {
    "kode_produk": "KP026",
    "nama_produk": "Veggie Delight Spring Rolls",
    "harga": 13000,
    "diskon": "7%"
  },
  {
    "kode_produk": "KP027",
    "nama_produk": "Maple Pecan Pancake Mix",
    "harga": 11000,
    "diskon": "6%"
  },
  {
    "kode_produk": "KP028",
    "nama_produk": "Sizzling Salsa Tortilla Chips",
    "harga": 9500,
    "diskon": "4%"
  },
  {
    "kode_produk": "KP029",
    "nama_produk": "Blueberry Burst Energy Bar",
    "harga": 12000,
    "diskon": "8%"
  },
  {
    "kode_produk": "KP030",
    "nama_produk": "Zesty Orange Zing Gum",
    "harga": 8000,
    "diskon": "5%"
  },
];

List<ModelRandomProduk> get dataProduk {
  rawProduct.shuffle();
  return modelRandomProdukFromJson(jsonEncode(rawProduct));
}
