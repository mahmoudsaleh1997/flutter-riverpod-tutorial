class ProductListModel {
  final List<Product>? products;

  ProductListModel({this.products});

  factory ProductListModel.fromJson(Map<String, dynamic> json) =>
      ProductListModel(
        products:
            json["products"] == null
                ? []
                : List<Product>.from(
                  json["products"]!.map((x) => Product.fromJson(x)),
                ),
      );

  Map<String, dynamic> toJson() => {
    "products":
        products == null
            ? []
            : List<dynamic>.from(products!.map((x) => x.toJson())),
  };
}

class Product {
  final String? name;
  final double? price;
  final String? description;
  final String? image;

  Product({this.name, this.price, this.description, this.image});

  factory Product.fromJson(Map<String, dynamic> json) => Product(
    name: json["name"],
    price: json["price"],
    description: json["description"],
    image: json["image"],
  );

  Map<String, dynamic> toJson() => {
    "name": name,
    "price": price,
    "description": description,
    "image": image,
  };
}

const productsData = {
  "products": [
    {
      "name": "Book",
      "price": 10.0,
      "description": "A book about everything",
      "image": "book.png"
    },
    {
      "name": "Laptop",
      "price": 999.99,
      "description": "A high-performance laptop",
      "image": "laptop.png"
    },
    {
      "name": "Smartphone",
      "price": 699.99,
      "description": "A latest model smartphone",
      "image": "smartphone.png"
    },
    {
      "name": "Headphones",
      "price": 199.99,
      "description": "Noise-canceling headphones",
      "image": "headphones.png"
    },
    {
      "name": "Watch",
      "price": 249.99,
      "description": "A stylish smartwatch",
      "image": "watch.png"
    },
    {
      "name": "Backpack",
      "price": 49.99,
      "description": "A durable travel backpack",
      "image": "backpack.png"
    },
    {
      "name": "Gaming Mouse",
      "price": 79.99,
      "description": "An ergonomic gaming mouse",
      "image": "mouse.png"
    },
    {
      "name": "Keyboard",
      "price": 129.99,
      "description": "A mechanical keyboard",
      "image": "keyboard.png"
    }
  ]
};

