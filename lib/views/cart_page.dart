import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shop/components/cart_item_widget.dart';
import 'package:shop/models/cart.dart';

class CartPage extends StatelessWidget {
  const CartPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Cart cart = Provider.of(context);
    final items = cart.items.values.toList();

    return Scaffold(
      appBar: AppBar(
        title: Text('Carrinho'),
      ),
      body: Column(
        children: [
          Card(
            margin: const EdgeInsets.all(16),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Total',
                    style: TextStyle(fontSize: 20),
                  ),
                  SizedBox(width: 8),
                  Chip(
                    backgroundColor: Theme.of(context).colorScheme.primary,
                    label: Text(
                      'R\$ ${cart.totalAmount}',
                      style: TextStyle(
                        fontSize: 20,
                        color: Theme.of(context).primaryTextTheme.headline6?.color,
                      ),
                    ),
                  ),
                  Spacer(),
                  TextButton(
                    onPressed: () {},
                    child: Text('Comprar'),
                    style: TextButton.styleFrom(
                      textStyle: TextStyle(
                        color: Theme.of(context).colorScheme.primary,
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: items.length,
              itemBuilder: (ctx, i) => CartItemWidget(cartItem: items[i]),
            ),
          )
        ],
      ),
    );
  }
}
