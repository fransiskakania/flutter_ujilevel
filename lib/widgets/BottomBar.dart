import 'package:flutter/material.dart';
import 'package:uji_level/widgets/BottomCartSheet.dart';

class BottomBar extends StatelessWidget {
  final List<String> itemPrices;
  final double totalPrice; // Change to double type and make it non-nullable

  BottomBar({
    required this.itemPrices,
    this.totalPrice = 0, // Set default value to 0
  });

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 10),
        height: 50,
        decoration: BoxDecoration(
          color: Colors.white,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            // Display total price
            Text(
              "\$$totalPrice",
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
                color: Color(0xFF80CC28),
              ),
            ),
            // Custom button using InkWell
            InkWell(
              onTap: () {
                // Assuming you have a method to add items to the cart
                addToCart(totalPrice, itemPrices); // You need to define this method

                // Optionally, if you use a bottom sheet to show the cart, you might want to show it here
                showModalBottomSheet(
                  context: context,
                  builder: (BuildContext context) {
                    return BottomCartSheet(); // You need to define this widget
                  },
                );

                print("Item added to cart!");
              },
              child: Container(
                padding: EdgeInsets.symmetric(vertical: 15, horizontal: 30),
                decoration: BoxDecoration(
                  color: Color(0xFF80CC28),
                  borderRadius: BorderRadius.circular(30),
                ),
                child: Row(
                  children: [
                    Icon(
                      Icons.add_shopping_cart,
                      color: Colors.white,
                      size: 28,
                    ),
                    SizedBox(width: 5),
                    Text(
                      "Add To Cart",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

void addToCart(double totalPrice, List<String> itemPrices) {
  print("Total Price: $totalPrice");
  print("Item Prices: $itemPrices");
  // Here you would typically update your cart model or state
}
