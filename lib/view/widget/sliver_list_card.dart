import 'package:flutter/material.dart';
import 'package:flutter_slivers/view/slivers/model/user.dart';

class SliverListCard extends StatelessWidget {
  final List<User> items;

  const SliverListCard({Key? key, required this.items}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildBuilderDelegate(
        (context, index) {
          return Card(
            elevation: 5,
            child: ListTile(
              leading: CircleAvatar(
                radius: 35,
                backgroundImage: NetworkImage(items[index].img ?? ""),
              ),
              title: Text(items[index].title ?? ""),
              subtitle: Text(items[index].subtitle ?? ""),
            ),
          );
        },
        childCount: items.length,
      ),
    );
  }
}
