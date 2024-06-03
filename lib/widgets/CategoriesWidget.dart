import 'package:flutter/material.dart';
import 'ItemPage.dart';

class CategoriesWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // List of category names, prices, and descriptions
    final List<Map<String, String>> categories = [
      {
        "title": "Salad Mix",
        "price": "\$28",
        "description": "A classic mix of fresh greens and vegetables.",
      },
      {
        "title": "Fruit Bowl",
        "price": "\$28",
        "description": "A refreshing bowl of assorted fruits."
      },
      {
        "title": "Vegetable Stir",
        "price": "\$28",
        "description": "A delightful stir-fry of mixed vegetables."
      },
      {
        "title": "Berry Blast",
        "price": "\$28",
        "description": "A berry-filled salad for a burst of flavor."
      },
      {
        "title": "Exotic Mix",
        "price": "\$28",
        "description": "An exotic blend of unique fruits and greens."
      },
      {
        "title": "Green Delight",
        "price": "\$28",
        "description": "A mix of the freshest green vegetables."
      },
      {
        "title": "Protein Salad",
        "price": "\$28",
        "description": "A protein-packed salad with nuts and seeds."
      },
    ];

    return Column(
      children: [
        Padding(
          padding: EdgeInsets.only(left: 5, right: 5, bottom: 5),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Category",
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF80CC28),
                ),
              ),
              Text(
                "See All",
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.normal,
                  color: Colors.black,
                ),
              ),
            ],
          ),
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              for (int i = 0; i < categories.length; i++)
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => ItemPage(
                          title: categories[i]["title"]!,
                          price: categories[i]["price"]!,
                          description: categories[i]["description"]!,
                          imageIndex: 1, // Meneruskan deskripsi dari daftar kategori
                        ),
                      ),
                    );
                  },
                  child: Container(
                    margin: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
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
                    child: Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.all(5),
                          child: Image.asset(
                            "images/${i + 1}.png",
                            height: 50,
                            width: 50,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(right: 5),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                categories[i]["title"]!,
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              SizedBox(height: 5),
                              Text(
                                categories[i]["price"]!, // Tambahkan harga di sini
                                style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xFF80CC28), // Atur warna harga sesuai kebutuhan
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
            ],
          ),
        ),
      ],
    );
  }
}
