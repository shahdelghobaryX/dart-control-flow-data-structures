import 'dart:io';

void main() {
  // Create a list to store the prices of the products.
  List<double> prices = [];

  // Ask the user to enter the prices of 5 products.
  for (int i = 0; i < 5; i++) {
    stdout.write('Enter the price of product ${i + 1}: ');
    double price = double.parse(stdin.readLineSync()!);

    prices.add(price);
  }

  // Calculate the total price.
  double total = 0;

  for (double price in prices) {
    total += price;
  }

  // Calculate the average price.
  double average = total / prices.length;

  // Display the results.
  print('\n--- Shopping Cart Summary ---');
  print('Product prices: $prices');
  print('Total price: ${total.toStringAsFixed(2)}');
  print('Average price: ${average.toStringAsFixed(2)}');
}