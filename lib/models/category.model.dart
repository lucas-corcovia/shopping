class CategoryModel {
  late String id;
  late String title;
  late String tag;

  CategoryModel({required this.id, required this.title, required this.tag});

  CategoryModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    title = json['title'];
    tag = json['tag'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['title'] = title;
    data['tag'] = tag;
    return data;
  }
}
