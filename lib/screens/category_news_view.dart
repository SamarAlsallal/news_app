import 'package:flutter/material.dart';

import 'package:news_app/Models/category_model.dart';
import 'package:news_app/widgets/news_view_builder.dart';

class CategoryNewsview extends StatelessWidget {
  const CategoryNewsview({super.key, required this.category});
  final CategoryModel category;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(elevation: 0),
      body: Padding(
        padding: const EdgeInsets.only(left: 10, top: 10, right: 10),
        child: CustomScrollView(
          slivers: [Newsviewbuilder(categoryName: category.text)],
        ),
      ),
    );
  }
}
