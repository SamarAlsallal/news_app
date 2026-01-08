import 'package:flutter/material.dart';
import 'package:news_app/widgets/category_view.dart';
import 'package:news_app/widgets/news_view_builder.dart';


class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.transparent,
        title: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text('News',style: TextStyle(fontWeight: FontWeight.bold),),
            Text('App', style: TextStyle(color: Colors.yellow ,fontWeight: FontWeight.bold)),
          ],
        ),
      ),
      body: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: CategoryView()
          ),
          SliverToBoxAdapter(
           child:SizedBox(
            height: 15,
           )
          ),
          
         Newsviewbuilder(categoryName: 'general'),
          
        ],
      )

    );
  }
}
