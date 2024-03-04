import 'package:ecommerce/components/cart_item.dart';
import 'package:ecommerce/model/cart.dart';
import 'package:ecommerce/model/shoe.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CartPage extends StatefulWidget {
  const CartPage({super.key});

  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  @override
  Widget build(BuildContext context) {
    return Consumer<Cart>(
      builder: (context, value, child) => 
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25),
          child: Column(
            children: [
              const Text('My Cart'),

              const SizedBox(height: 10,),

              Expanded(
                child: ListView.builder(
                  itemCount: value.getUserCart().length,
                  itemBuilder: (context, index){
                    Shoe shoeInCart = value.getUserCart()[index];

                    return CartItem(
                      shoe: shoeInCart,
                    );
                  }
                ),
              )
            ],
          ),
        ),
    );
  }
}