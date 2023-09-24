
// Test parpass



// import 'package:flutter/material.dart';
//
// void main() {
//   runApp(MyApp());
// }
//
// class Product {
//   final String name;
//   final double price;
//
//   Product(this.name, this.price);
// }
//
// class MyApp extends StatelessWidget {
//   final Map<String, int> cart = {};
//
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       home: Scaffold(
//         appBar: AppBar(
//           centerTitle: true,
//           title: Text('Product List'),
//           actions: <Widget>[
//             IconButton(
//               icon: Icon(Icons.shopping_cart),
//               onPressed: () {
//                 Navigator.push(
//                   context,
//                   MaterialPageRoute(
//                     builder: (context) => CartPage(cart: cart),
//                   ),
//                 );
//               },
//             ),
//           ],
//         ),
//         body: ProductList(cart: cart),
//       ),
//     );
//   }
// }
//
// class ProductList extends StatefulWidget {
//   final Map<String, int> cart;
//
//   ProductList({required this.cart});
//
//   @override
//   _ProductListState createState() => _ProductListState();
// }
//
// class _ProductListState extends State<ProductList> {
//   List<Product> products = [
//     Product('Product 1', 10.0),
//     Product('Product 2', 15.0),
//     Product('Product 3', 20.0),
//     Product('Product 4', 30.0),
//     Product('Product 5', 40.0),
//     Product('Product 6', 50.0),
//     Product('Product 7', 60.0),
//     Product('Product 8', 70.0),
//     Product('Product 9', 80.0),
//     Product('Product 10', 90.0),
//     Product('Product 11', 75.0),
//     Product('Product 12', 65.0),
//     Product('Product 13', 85.0),
//     Product('Product 14', 25.0),
//     Product('Product 15', 15.0),
//
//   ];
//
//   void _buyProduct(Product product) {
//     final productName = product.name;
//     setState(() {
//       widget.cart[productName] = (widget.cart[productName] ?? 0) + 1;
//       if (widget.cart[productName] == 5) {
//         showDialog(
//           context: context,
//           builder: (BuildContext context) {
//             return AlertDialog(
//               title: Text('Congratulations!'),
//               content: Text('You\'ve bought 5 $productName!'),
//               actions: <Widget>[
//                 TextButton(
//                   onPressed: () {
//                     Navigator.of(context).pop();
//                   },
//                   child: Text('OK'),
//                 ),
//               ],
//             );
//           },
//         );
//       }
//     });
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return ListView.builder(
//       itemCount: products.length,
//       itemBuilder: (BuildContext context, int index) {
//         return ListTile(
//           title: Text(products[index].name),
//           subtitle: Text('\$${products[index].price.toStringAsFixed(2)}'),
//           trailing: Column(
//             mainAxisSize: MainAxisSize.min,
//             children: <Widget>[
//               Text('${widget.cart[products[index].name] ?? 0}'),
//               ElevatedButton(
//                 child: Text("Buy"),
//                 onPressed: () => _buyProduct(products[index]),
//               ),
//             ],
//           ),
//         );
//       },
//     );
//   }
// }
//
// class CartPage extends StatelessWidget {
//   final Map<String, int> cart;
//
//   CartPage({required this.cart});
//
//   int get totalItems {
//     return cart.values.fold(0, (sum, count) => sum + count);
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Cart'),
//       ),
//       body: Center(
//         child: Text('Total Items in Cart: $totalItems'),
//       ),
//     );
//   }
// }
