/**
 *  {
                            "name": "Apple",
                            "quantity": 4,
                            "price": '10',
                            "currency": "USD"
                          }
 */
class ItemModel {
  final String name;
  final int quantity;
  final String price;
  final String currency;

  ItemModel({
    required this.name,
    required this.quantity,
    required this.price,
    required this.currency,
  });
  Map<String, dynamic> toMap() {
    return {
      'name': name,
      'quantity': quantity,
      'price': price,
      'currency': currency,
    };
  }
}
