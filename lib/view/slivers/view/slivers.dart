import 'package:flutter/material.dart';
import 'package:flutter_slivers/view/slivers/model/user.dart';
import 'package:flutter_slivers/view/widget/grid_util.dart';
import 'package:flutter_slivers/view/widget/sliver_list_card.dart';

class Slivers extends StatefulWidget {
  @override
  State<Slivers> createState() => _SliversState();
}

class _SliversState extends State<Slivers> {
  final _backImage = 'https://picsum.photos/1200';
  late final List<User> _items;
  @override
  void initState() {
    super.initState();
    _items = UserCardList.init().items;
  }

  @override
  Widget build(BuildContext context) {
    return NestedScrollView(
      headerSliverBuilder: (context, innerBoxIsScrolled) {
        return [
          sliverAppBar(context),
        ];
      },
      body: Scaffold(
        body: CustomScrollView(
          slivers: [
            SliverListCard(items: _items),
            SliverGrid(
              gridDelegate: HomePageGridDelegate(),
              delegate: SliverChildBuilderDelegate(
                (BuildContext context, int index) {
                  return Container(
                    margin: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      color: Colors.teal,
                    ),
                    child: Center(
                      child: Text(
                        "Sliver Grid",
                        textAlign: TextAlign.center,
                        style: Theme.of(context)
                            .textTheme
                            .headline5!
                            .copyWith(color: Colors.white),
                      ),
                    ),
                  );
                },
                childCount: 6,
              ),
            ),
            SliverFixedExtentList(
              itemExtent: 60,
              delegate: SliverChildListDelegate([
                _buildFixedList(Colors.cyan, "Cyan"),
                _buildFixedList(Colors.green, "Green"),
                _buildFixedList(Colors.orange, "Orange"),
                _buildFixedList(Colors.amberAccent, "AmberAccent"),
                _buildFixedList(Colors.blueGrey, "Blue Grey"),
              ]),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildFixedList(Color color, String _text) {
    return Container(
      color: color,
      child: Center(
        child: Text(
          _text,
          style: TextStyle(color: Colors.white, fontSize: 25),
        ),
      ),
    );
  }

  SliverAppBar sliverAppBar(BuildContext context) {
    return SliverAppBar(
      title: Text(
        'Hello Sliver',
        style: Theme.of(context)
            .textTheme
            .headline5!
            .copyWith(color: Colors.white)
            .copyWith(fontWeight: FontWeight.bold),
      ),
      backgroundColor: Colors.teal,
      leading: (Icon(Icons.menu)),
      expandedHeight: MediaQuery.of(context).size.height * 0.35,
      pinned: true,
      stretch: true,
      flexibleSpace: FlexibleSpaceBar(
        stretchModes: [StretchMode.zoomBackground],
        background: Image.network(_backImage, fit: BoxFit.cover),
      ),
    );
  }
}
