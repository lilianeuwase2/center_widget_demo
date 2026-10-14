import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

// The root of the app.
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: const Color(0xFF315E2E),
        scaffoldBackgroundColor: const Color(0xFFFFF8F3),
        fontFamily: 'Roboto',
      ),
      home: const CartScreen(),
    );
  }
}
//
class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'My Cart',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        backgroundColor: const Color(0xFF315E2E),
        foregroundColor: Colors.white,
        elevation: 0,
      ),


      body: const ColoredBox(
        color: Color(0xFFCFE8CC),


        child: Center(

          // null which is default as wide as the parent allows.
          widthFactor: null,

          // null which is default as tall as the parent allows
          heightFactor: null,

          //
          child: EmptyCartCard()
        ),
        // -------------------------------------------------
      ),
    );
  }
}

// Shown when the cart is loading
class LoadingCard extends StatelessWidget {
  const LoadingCard({super.key});

  @override
  Widget build(BuildContext context) {
    return const InfoCard(
      top: CircularProgressIndicator(
        color: Color(0xFF196023),
        strokeWidth: 3,
      ),
      title: 'Loading cart...',
      subtitle: 'Please wait a moment',
    );
  }
}

// Shown when the cart has no items
class EmptyCartCard extends StatelessWidget {
  const EmptyCartCard({super.key});

  @override
  Widget build(BuildContext context) {
    return const InfoCard(
      top: Icon(
        Icons.shopping_cart_outlined,
        size: 36,
        color: Color(0xFF196023),
      ),
      title: 'Your cart is empty',
      subtitle: 'Add items to get started',
    );
  }
}

// white cart design
class InfoCard extends StatelessWidget {
  const InfoCard({
    super.key,
    required this.top,
    required this.title,
    required this.subtitle,
  });

  final Widget top;
  final String title;
  final String subtitle;

  @override
  Widget build(BuildContext context) {
    return Container(
      // The margin keeps a little green visible around the card
      margin: const EdgeInsets.all(12),
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 24),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
        boxShadow: const [
          BoxShadow(
            color: Color(0x14000000),
            blurRadius: 20,
            offset: Offset(0, 8),
          ),
        ],
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          top,
          const SizedBox(height: 20),
          Text(
            title,
            style: const TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w600,
              color: Color(0xFF2D2D2D),
            ),
          ),
          const SizedBox(height: 6),
          Text(
            subtitle,
            style: const TextStyle(fontSize: 14, color: Color(0xFF9B9B9B)),
          ),
        ],
      ),
    );
  }
}
