// ignore_for_file: must_be_immutable

import 'package:ecommerce/model/cart.dart';
import 'package:ecommerce/model/shoe.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CartItem extends StatefulWidget {
  Shoe shoe;


  CartItem({
    super.key,
    required this.shoe,

  });

  @override
  State<CartItem> createState() => _CartItemState();
}

class _CartItemState extends State<CartItem> {

  void removeItem(){
    Provider.of<Cart>(context, listen: false).deleteItem(widget.shoe);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 10),
      decoration: BoxDecoration(
        color: Colors.grey[100],
        borderRadius: BorderRadius.circular(10)
      ),
      child: ListTile(
        leading: Image.asset(widget.shoe.imageSource),
        title: Text(widget.shoe.name),
        subtitle: Text(widget.shoe.price),
        trailing: IconButton(
          onPressed: removeItem,
          icon: const Icon(Icons.delete),
        ),
      ),
    );
  }
}