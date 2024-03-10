import 'package:ecommerce/components/shoe_tile.dart';
import 'package:ecommerce/model/cart.dart';
import 'package:ecommerce/model/shoe.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';


class ShopPage extends StatefulWidget {
  const ShopPage({super.key});

  @override
  State<ShopPage> createState() => _ShopPageState();
}

class _ShopPageState extends State<ShopPage> {

  void addItems(Shoe shoe){
    Provider.of<Cart>(context, listen: false).addItem(shoe);

    //Alert for added item
    showDialog(
      context: context,
      builder: (context) => 
        const AlertDialog(
          title: Text('Shoe added to cart'),
          content: Text('Check cart'),
        )
    );
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<Cart>(
      builder: (context, value, child) => 
        Column(
          children: [
            //Search Bar
            Container(
              padding: const EdgeInsets.all(15),
              margin: const EdgeInsets.symmetric(horizontal: 28),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10)
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Search',
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w500,
                      color: Colors.grey[400]
                    ),
                  ),
                  Icon(
                    Icons.search,
                    color: Colors.grey[400],
                    size: 25,
                  )
                ],
              ),
            ),

            //Catchy quotes
            const Padding(
              padding: EdgeInsets.symmetric(vertical: 26),
              child: Text(
                'Lorem ipsum dolor sit amet, consectetur adipiscing elit.',
                style: TextStyle(
                  fontSize: 13,
                  fontWeight: FontWeight.w400,
                  color: Colors.black54
                ),
              ),
            ),

            //Items
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 25),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    'Top Picks',
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                      
                    ),
                  ),
                  Text(
                    'See all',
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w500,
                      shadows: [
                        Shadow(
                          color: Colors.black38,
                          offset: Offset(0, 2),
                          blurRadius: 2
                        )
                      ]
                    ),
                  )
                ],
              ),
            ),

            const SizedBox(height: 40,),

            //Shoe List
            Expanded(
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 4,
                itemBuilder: (context, index){
                  Shoe shoe = value.getShoeList()[index];

                  return ShoeTile(
                    shoe: shoe,
                    onTap: () => addItems(shoe),
                  );
                }
              )
            ),

            const Padding(
              padding: EdgeInsets.only(top: 20, left: 20, right: 20),
              child: Divider(
                color: Colors.white,
              ),
            )
          ],
        ),
    );
  }
}