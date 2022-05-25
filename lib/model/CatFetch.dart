class Category{

  String category_name;
  String image_url;

  Category({

    required this.category_name,
    required this.image_url,
  });

  Map<String, dynamic> toMap() {
    return {

      'category_name': this.category_name,
      'image_url': this.image_url,
    };
  }

  factory Category.fromMap(Map<String, dynamic> map) {
    return Category(
      category_name: map['category_name'] as String,
      image_url: map['image_url'] as String,
    );
  }
}