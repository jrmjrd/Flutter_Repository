import 'package:ecommerce/model/shoe.dart';
import 'package:flutter/material.dart';

class Cart extends ChangeNotifier{

  //list of shoes for sale
  List<Shoe> shoeItems = [
    Shoe(
      name: 'Shoe1', 
      price: '480', 
      imageSource: 'assets/shoe_images/shoe1.png', 
      description: 'Lopet lods'
    ),
    Shoe(
      name: 'Shoe2', 
      price: '570', 
      imageSource: 'assets/shoe_images/shoe2.png', 
      description: 'Agnas lods'
    ),
    Shoe(
      name: 'Shoe3', 
      price: '900', 
      imageSource: 'assets/shoe_images/shoe3.png', 
      description: 'Sheeshable lods'
    ),
    Shoe(
      name: 'Shoe4', 
      price: '100', 
      imageSource: 'assets/shoe_images/shoe4.png', 
      description: 'HEY HET HEY'
    ),
  ];

  //list of shoes user putin cart
  List<Shoe> cartItems = [];


  //get list shoes for sale
  List<Shoe> getShoeList(){
    return shoeItems;
  }

  //get cart lsit
  List<Shoe> getUserCart(){
    return cartItems;
  }

  //add items in cart
  void addItem(Shoe shoe){
    cartItems.add(shoe);
    notifyListeners();
  }


  //remove item in cart
  void deleteItem(Shoe shoe){
    cartItems.remove(shoe);
    notifyListeners();
  }
}