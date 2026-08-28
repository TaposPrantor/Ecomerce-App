

import 'package:ecommerce/model/product_model.dart';

class ProductData{
  static List<ProductModel> pd = [
    // {
    //   "id" : 101,
    //   "title" : "Mens Polo T Shirt",
    //   "image" : "https://newworld.co.za/cdn/shop/files/a5.webp?v=1750595591",
    //   "dis_price" : 1200,
    //   "reg_price" : 1500,
    //   "dis_percentage" : 20,
    //   "rating" : 4.5,
    //   "reviews" : 365,
    //   "Stock" : 450,
    // }

    ProductModel(id: 1010, title: "POLO T Shirt for Men",dis_price: 500, reg_price: 600),
    ProductModel(id: 1011, title: "T-Shirt for Women",dis_price: 400, reg_price: 500),
    ProductModel(id: 1012, title: "Men's Smart Watch",dis_price: 800, reg_price: 1000),
    ProductModel(id: 1013, title: "Women's Smart Watch",dis_price: 900, reg_price: 1200),

  ];
}