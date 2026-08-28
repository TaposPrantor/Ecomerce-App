

class ProductModel {
  int id;
  String title;
  double reg_price;
  double dis_price;
  int? rating;

  ProductModel({required this.id, required this .title, required this.dis_price, required this.reg_price, this.rating});

}