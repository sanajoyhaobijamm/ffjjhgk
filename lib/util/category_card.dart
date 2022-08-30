import 'package:flutter/material.dart';

class CategoryCard extends StatelessWidget {
  final iconImagesPath;
  final String categoryName;
  final Widget btnpress;
  CategoryCard({
    required this.iconImagesPath,
    required this.categoryName,
    required this.btnpress,
  });
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => btnpress));
      },
      child: Padding(
        padding: const EdgeInsets.only(left: 25),
        child: Container(
          padding: EdgeInsets.all(20),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            color: Colors.deepPurple[100],
          ),
          child: Row(
            children: [
              Image.asset(
                iconImagesPath,
                height: 30,
              ),
              SizedBox(width: 10),
              Text(categoryName),
            ],
          ),
        ),
      ),
    );
  }
}
