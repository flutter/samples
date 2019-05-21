import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_shopper/models/cart.dart';

class MyAppBar extends StatelessWidget {
  const MyAppBar({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      title: Text('Catalog', style: Theme.of(context).textTheme.display4),
      floating: true,
      actions: [
        IconButton(
            icon: Icon(Icons.shopping_cart),
            onPressed: () => Navigator.pushNamed(context, '/cart')),
      ],
    );
  }
}

class MyCatalog extends StatelessWidget {
  MyCatalog({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          MyAppBar(),
          SliverToBoxAdapter(child: SizedBox(height: 12)),
          SliverList(
              delegate:
                  SliverChildBuilderDelegate((_, index) => MyListItem(index))),
        ],
      ),
    );
  }
}

class MyListItem extends StatelessWidget {
  final int index;

  MyListItem(this.index) : super(key: ValueKey(index));

  @override
  Widget build(BuildContext context) {
    var item = Item(index);

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      child: LimitedBox(
        maxHeight: 48,
        child: Row(
          children: [
            AspectRatio(
              aspectRatio: 1,
              child: Container(
                color: Colors.primaries[index % Colors.primaries.length],
              ),
            ),
            SizedBox(width: 24),
            Expanded(
              child: Text(item.name, style: Theme.of(context).textTheme.title),
            ),
            SizedBox(width: 24),
            _AddButton(item: item),
          ],
        ),
      ),
    );
  }
}

class _AddButton extends StatelessWidget {
  final Item item;

  const _AddButton({
    Key key,
    @required this.item,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer<CartModel>(
      builder: (context, cart, child) => FlatButton(
            onPressed: cart.items.contains(item) ? null : () => cart.add(item),
            splashColor: Theme.of(context).primaryColor,
            child: cart.items.contains(item)
                ? Icon(Icons.check, semanticLabel: 'ADDED')
                : Text('ADD'),
          ),
    );
  }
}
