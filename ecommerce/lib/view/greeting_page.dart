import 'package:ecommerce/view/home_page.dart';
import 'package:flutter/material.dart';

class GreetingPage extends StatelessWidget {
  const GreetingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              //Logo of the app
              AspectRatio(
                aspectRatio: 16/9,
                child: 
                Image.asset(
                  'assets/logos/adidas_logo.png',
                  height: 200,
                ),
              ),
          
              const SizedBox(height: 50,),
          
              //Name of the app
              const Text(
                'Impossible is Nothing',
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 20
                ),
              ),
          
              const SizedBox(height: 30,),
          
              //Catch Phrase
              Text(
                'Sneakers that will fit your way in any day',
                style: TextStyle(
                  fontSize: 15,
                  color: Colors.grey[400],
                ),
                textAlign: TextAlign.center,
              ),
          
              const SizedBox(height: 50,),

              //start botton
              GestureDetector(
                onTap: ()=> Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const HomePage()
                  )
                ),
                child: AspectRatio(
                  aspectRatio: 2/.3,
                  child: Container(
                    width: 100,
                    height: 100,
                    decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(10)
                    ),
                    // padding: const EdgeInsets.all(25),
                    child: const Center(
                      child: Text(
                        'Shop Now',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                          color: Colors.white
                        ),
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}