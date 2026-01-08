import 'package:flutter/material.dart';
import 'package:news_app/Models/category_model.dart';
import 'package:news_app/screens/category_news_view.dart';

class CategoryCard extends StatelessWidget {
  const CategoryCard({super.key, required this.item});
  final CategoryModel item;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => CategoryNewsview(
              category: CategoryModel(text: item.text, img: item.img),
            ),
          ),
        );
      },
      child: Padding(
        padding: const EdgeInsets.only(right: 15),
        child: Container(
          height: 90,
          width: 150,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(item.img),
              fit: BoxFit.fill,
            ),

            borderRadius: BorderRadius.circular(16),
          ),
          child: Center(
            child: Text(
              item.text,
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
