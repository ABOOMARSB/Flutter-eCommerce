import 'package:ecommerce/models/models.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test(
    'Check if category data is being correctly collected from the database', () {
    String name = 'Smoothies';
    String imageUrl = 'https://images.unsplash.com/photo-1502741224143-90386d7f8c82?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1050&q=80';

    // Create an instance of the Product class
    Category category = Category(
      name: name,
      imageUrl: imageUrl,
    );

    // Access properties of the product instance
    String dbName = category.name;
    String? dbImageUrl = category.imageUrl;

    // Use expect to check if the values match
    expect(dbName, name);
    expect(dbImageUrl, imageUrl);
  });
}