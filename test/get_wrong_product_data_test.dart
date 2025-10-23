import 'package:ecommerce/models/models.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test(
    'Check if 1st product data is being wrongly collected from the database',
    () {
      String id = '1';
      String category = 'Soft Drinks';
      String description =
          "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.";
      String imageUrl =
          'https://images.unsplash.com/photo-1534057308991-b9b3a578f1b1?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=634&q=80';
      bool isPopular = false;
      bool isRecommended = true;
      String name = 'Soft Drinks';
      double price = 2.99;

      // Create an instance of the Product class
      Product product = Product(
        id: id,
        category: "Water",
        description: "cold water",
        imageUrl: "google.com",
        isPopular: true,
        isRecommended: false,
        name: "Water",
        price: 5,
      );

      // Access properties of the product instance
      String dbCategory = product.category;
      String? dbDescription = product.description;
      String dbIamgeUrl = product.imageUrl;
      bool dbIsPopular = product.isPopular;
      bool dbIsRecommended = product.isRecommended;
      String dbName = product.name;
      double dbPrice = product.price;

      // Use expect to check if the values match
      expect(dbCategory, category);
      expect(dbDescription, description);
      expect(dbIamgeUrl, imageUrl);
      expect(dbIsPopular, isPopular);
      expect(dbIsRecommended, isRecommended);
      expect(dbName, name);
      expect(dbPrice, price);
    }
  );
}
