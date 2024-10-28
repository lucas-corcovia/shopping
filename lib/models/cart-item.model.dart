class CartItemModel {
  late String id;
  late String title;
  late int quantity;
  late double price;
  late String image;

  CartItemModel(
      {required this.id,
      required this.title,
      required this.quantity,
      required this.price,
      required this.image});

  CartItemModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    title = json['title'];
    quantity = json['quantity'];
    price = json['price'];
    image = json['image'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['title'] = title;
    data['quantity'] = quantity;
    data['price'] = price;
    data['image'] = image;
    return data;
  }
}
