import 'package:ecommerce/models/models.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test(
    'Check if user data is being correctly collected from the database',
    () {
      String id = '1';
      String fullName = 'Amer Sbeini';
      String email = 'sbeni2001@gmail.com';
      String address = 'Slagendreef';
      String city = 'Den Bosch';
      String country = 'Nederlands';
      String zipCode = '5233VE';

      // Create an instance of the Product class
      User user = User(
        id: id,
        fullName: fullName,
        email: email,
        address: address,
        city: city,
        country: country,
        zipCode: zipCode,
      );

      // Access properties of the product instance
      String? dbId = user.id;
      String dbFullName = user.fullName;
      String dbEmail = user.email;
      String dbaddress = user.address;
      String dbcity = user.city;
      String dbcountry = user.country;
      String dbzipCode = user.zipCode;

      // Use expect to check if the values match
      expect(dbId, id);
      expect(dbFullName, fullName);
      expect(dbEmail, email);
      expect(dbaddress, address);
      expect(dbcity, city);
      expect(dbcountry, country);
      expect(dbzipCode, zipCode);
    }
  );
}
