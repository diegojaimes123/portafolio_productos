import 'package:flutter/material.dart';
import 'item_details_screen.dart' show ItemDetailsScreen;

class CartScreen extends StatelessWidget {
  const CartScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Carrito de compras'),
      ),
      body: ListView.separated(
        itemBuilder: (_, int index) => ListTile(
          onTap: () {
            Navigator.of(context).push(
              MaterialPageRoute(builder: (_) =>
                ItemDetailsScreen(
                  sup: index,
                  and: index,
                  product: 'producto  ${index + 1}',
                )
              )
            );
          },
          title: Text('producto  ${index + 1}'),
          trailing: Container(
            padding: const EdgeInsets.all(6),
            decoration: BoxDecoration(
              color: Colors.blueGrey,
              borderRadius: BorderRadius.circular(50),
            ),
            child: Text(' ${index + 1}'),
          ),
        ),
        separatorBuilder: (ctx,idx) => const Divider(),
        itemCount: 3,
      ),
    );
  }
}