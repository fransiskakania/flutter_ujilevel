import 'package:flutter/material.dart';
import 'ItemPage.dart';
import 'BottomCartSheet.dart'; // Import the BottomCartSheet widget

class ItemsWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final List<String> itemTitles = [
      "Salad Mix",
      "Fruit Bowl",
      "Vegetable Stir",
      "Berry Blast",
      "Exotic Mix",
      "Green Delight",
      "Protein Salad"
    ];

    final List<String> itemPrices = [
      "\$28",
      "\$28",
      "\$28",
      "\$28",
      "\$28",
      "\$28",
      "\$28"
    ];

    final List<String> itemDescriptions = [
      "A classic mix of fresh greens and vegetables. Perfect for those who crave a healthy and satisfying meal, this salad blend offers a variety of textures and flavors that will leave you feeling nourished and energized.",
      "A refreshing bowl of assorted fruits, carefully selected for their sweetness and juiciness. This fruit bowl is a delightful treat for any time of the day, providing a burst of vitamins and natural sugars to keep you refreshed.",
      "A stir-fry of fresh vegetables, lightly seasoned and cooked to perfection. This vegetable stir is a quick and easy meal option that is both delicious and nutritious, packed with vitamins and minerals to fuel your day.",
      "A burst of berry flavors in every bite, this berry blast salad is a tantalizing mix of fresh berries and crisp greens. With its vibrant colors and refreshing taste, it's the perfect choice for a light and satisfying meal.",
      "An exotic combination of fruits and greens, this exotic mix salad transports your taste buds to tropical paradise. With a symphony of flavors and textures, it's a culinary adventure you won't want to miss.",
      "A delightful mix of fresh green vegetables, this green delight salad is a feast for the senses. Bursting with flavor and packed with nutrients, it's the perfect choice for a healthy and satisfying meal.",
      "A protein-packed salad for a healthy meal, this protein salad is loaded with lean proteins and nutritious greens. With its satisfying texture and delicious flavor, it's the perfect choice for fueling your body and satisfying your cravings."
    ];

    final List<String> modifiedItemTitles = itemTitles.map((title) {
      if (title != "Salad Mix" && title != "Protein Salad") {
        return "$title ";
      }
      return title;
    }).toList();

    return SingleChildScrollView(
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(left: 5, right: 5, top: 5),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Top",
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF80CC28),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    // Navigate to the BottomCartSheet when "See All" is tapped
                    Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => BottomCartSheet(),
                    ));
                  },
                  child: Text(
                    "See All",
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.normal,
                      color: Colors.black,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            child: GridView.count(
              crossAxisSpacing: 5,
              mainAxisSpacing: 5,
              physics: NeverScrollableScrollPhysics(),
              crossAxisCount: 2,
              childAspectRatio: 0.8,
              shrinkWrap: true,
              children: List.generate(modifiedItemTitles.length, (index) {
                return Container(
                  padding: EdgeInsets.symmetric(horizontal: 5),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(5),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 1,
                        blurRadius: 4,
                      ),
                    ],
                  ),
                  child: Column(
                    children: [
                      InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => ItemPage(
                                title: modifiedItemTitles[index],
                                price: itemPrices[index],
                                description: itemDescriptions[index],
                                imageIndex: index,
                              ),
                            ),
                          );
                        },
                        child: Container(
                          margin: EdgeInsets.all(5),
                          child: Image.asset(
                            "images/${index + 1}.png",
                            height: 100,
                            width: 100,
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(bottom: 5),
                        child: Container(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            modifiedItemTitles[index],
                            style: TextStyle(
                              fontSize: 25,
                              fontWeight: FontWeight.bold,
                              color: Color(0xFF555555),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(bottom: 5),
                        child: Container(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            "Fresh Salad",
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                              color: Color(0xFF555555),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(vertical: 10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              itemPrices[index],
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Color(0xFF80CC28),
                              ),
                            ),
                            InkWell(
                              onTap: () {
                                // Navigate to the BottomCartSheet when cart icon is tapped
                                Navigator.of(context).push(MaterialPageRoute(
                                  builder: (context) => BottomCartSheet(),
                                ));
                              },
                              child: Container(
                                padding: EdgeInsets.all(2),
                                decoration: BoxDecoration(
                                  color: Color(0xFF80CC28),
                                  borderRadius: BorderRadius.circular(2),
                                ),
                                child: Icon(
                                  Icons.add_shopping_cart_outlined,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                );
              }),
            ),
          ),
        ],
      ),
    );
  }
}
