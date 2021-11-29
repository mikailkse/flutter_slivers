import 'package:flutter/material.dart';

class HomePageGridDelegate extends SliverGridDelegateWithFixedCrossAxisCount {
  HomePageGridDelegate()
      : super(
          crossAxisCount: 2,
          mainAxisSpacing: 10,
          crossAxisSpacing: 10,
          childAspectRatio: 1,
        );
}
