import 'package:flutter/material.dart';

import 'package:cached_network_image/cached_network_image.dart';

class CategoryTile extends StatelessWidget {
  final String logo;
  CategoryTile(this.logo);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        margin: EdgeInsets.only(right: 10),
        child: Stack(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(6),
              child: CachedNetworkImage(
                imageUrl: logo,
                width: 150,
                height: 120,
                fit: BoxFit.fill,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
