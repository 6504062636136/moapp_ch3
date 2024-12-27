import 'package:flutter/material.dart';

void main() {
runApp(const MyApp());
}

class MyApp extends StatelessWidget {
const MyApp({super.key});

@override
Widget build(BuildContext context) {
return MaterialApp(
debugShowCheckedModeBanner: false,
theme: ThemeData(
appBarTheme: const AppBarTheme(
color: Color.fromARGB(255, 183, 223, 184),
),
colorScheme: ColorScheme.fromSeed(seedColor: Colors.blueGrey),
useMaterial3: true,
),
home: Scaffold(
appBar: AppBar(
title: const Text('Hew Kao'),
leading: IconButton(
icon: const Icon(Icons.menu),
onPressed: () {
debugPrint('Menu button pressed');
},
),
),
body: Center(
child: Column(
mainAxisAlignment: MainAxisAlignment.center,
children: [
Image.network(
'https://stickershop.line-scdn.net/stickershop/v1/product/1475/LINEStorePC/main.png?v=1',
width: 120,
),
const Text('Order is completed'),
const Text('Thank u,We Love U so Much'),
/* Image.asset(
'assets/images/com.jpg',
width: 120,
),*/
Row(
children: [
IconButton(
icon: const Icon(Icons.favorite_border),
onPressed: () {
debugPrint('Leading icon pressed');
},
),
],
),
Row(
mainAxisAlignment: MainAxisAlignment.spaceEvenly,
children: [
const Icon(
Icons.favorite,
size: 60,
),
const SizedBox(width: 20),
ElevatedButton(
onPressed: () {
debugPrint('Pressed button');
},
child: const Text(
'Submit',
style: TextStyle(fontSize: 20),
),
),
],
),
],
),
),
floatingActionButton: FloatingActionButton(
onPressed: () {
debugPrint('Shopping cart button pressed');
},
child: const Icon(Icons.shopping_cart),
),
),
);
}
}
