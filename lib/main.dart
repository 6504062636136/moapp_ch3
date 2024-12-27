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
          title: const Text('Order Summary',style: TextStyle(fontWeight: FontWeight.bold),),
          leading: IconButton(
            icon: const Icon(Icons.menu),
            onPressed: () {
              debugPrint('Menu button pressed');
            },
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: Column(
                  children: [
                    Image.network(
                      'https://stickershop.line-scdn.net/stickershop/v1/product/1475/LINEStorePC/main.png?v=1',
                      width: 200,
                    ),
                    const SizedBox(height: 10),
                    const Text(
                      'Completed',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 30,
                        color: Colors.lightBlueAccent,
                      ),
                    ),
                    const SizedBox(height: 5),
                    const Text(
                      'Thank you! We love you so much.',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.pinkAccent,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 20),
              const Text(
                'Order Details',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
              const SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      const Icon(Icons.date_range, size: 24),
                      const SizedBox(width: 10),
                      const Text(
                        'Date:',
                        style: TextStyle(fontSize: 18),
                      ),
                    ],
                  ),
                  const Text(
                    '12/28/2024',
                    style: TextStyle(fontSize: 18),
                  ),
                ],
              ),
              const SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      const Icon(Icons.payment, size: 24),
                      const SizedBox(width: 10),
                      const Text(
                        'Payment Type:',
                        style: TextStyle(fontSize: 18),
                      ),
                    ],
                  ),
                  const Text(
                    'Banking',
                    style: TextStyle(fontSize: 18),
                  ),
                ],
              ),
              const SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      const Icon(Icons.account_balance_outlined, size: 24),
                      const SizedBox(width: 10),
                      const Text(
                        'Bank Name:',
                        style: TextStyle(fontSize: 18),
                      ),
                    ],
                  ),
                  const Text(
                    'SCB',
                    style: TextStyle(fontSize: 18),
                  ),

                ],
              ),
              const SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      const Icon(Icons.numbers, size: 24),
                      const SizedBox(width: 10),
                      const Text(
                        'Account No. :',
                        style: TextStyle(fontSize: 18),
                      ),
                    ],
                  ),
                  const Text(
                    '123-456-789',
                    style: TextStyle(fontSize: 18),
                  ),
                ],
              ),
              const SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      const Icon(Icons.access_time_outlined, size: 24),
                      const SizedBox(width: 10),
                      const Text(
                        'Time :',
                        style: TextStyle(fontSize: 18),
                      ),
                    ],
                  ),
                  const Text(
                    '14:20',
                    style: TextStyle(fontSize: 18),
                  ),
                ],
              ),
              const SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      const Icon(Icons.shopping_cart_rounded, size: 24),
                      const SizedBox(width: 10),
                      const Text(
                        'Item Quantity:',
                        style: TextStyle(fontSize: 18),
                      ),
                    ],
                  ),
                  const Text(
                    '3',
                    style: TextStyle(fontSize: 18),
                  ),
                ],
              ),
              const SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      const Icon(Icons.price_change_outlined, size: 24),
                      const SizedBox(width: 10),
                      const Text(
                        'Item Price:',
                        style: TextStyle(fontSize: 18),
                      ),
                    ],
                  ),
                  const Text(
                    '1,500 THB',
                    style: TextStyle(fontSize: 18),
                  ),
                ],
              ),
              const SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      const Icon(Icons.local_shipping_rounded, size: 24),
                      const SizedBox(width: 10),
                      const Text(
                        'Shipping Fee:',
                        style: TextStyle(fontSize: 18),
                      ),
                    ],
                  ),
                  const Text(
                    '50 THB',
                    style: TextStyle(fontSize: 18),
                  ),
                ],
              ),
              const SizedBox(height: 50),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      const Icon(Icons.attach_money, size: 30),
                      const SizedBox(width: 10),
                      const Text(
                        'Total Price :',
                        style: TextStyle(fontSize: 30),
                      ),
                    ],
                  ),
                  const Text(
                    '1,550 THB',
                    style: TextStyle(fontSize: 30),
                  ),
                ],
              ),

              /*const SizedBox(height: 10),
              buildOrderDetailRow(Icons.date_range, 'Date:', '12/28/2024'),
              buildOrderDetailRow(Icons.payment, 'Payment Type:', 'Banking'),
              buildOrderDetailRow(Icons.account_balance, 'Bank Name:', 'ABC Bank'),
              buildOrderDetailRow(Icons.numbers, 'Account No.:', '123-456-789'),
              buildOrderDetailRow(Icons.access_time, 'Time:', '14:30'),
              buildOrderDetailRow(Icons.shopping_bag, 'Item Quantity:', '3'),
              buildOrderDetailRow(Icons.price_change, 'Item Price:', '1,500 THB'),
              buildOrderDetailRow(Icons.local_shipping, 'Shipping Fee:', '50 THB'),
              buildOrderDetailRow(Icons.attach_money, 'Total Price:', '1,550 THB',),
              const SizedBox(height: 20),*/

              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      debugPrint('Pressed button');
                    },
                    style: ElevatedButton.styleFrom(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 24, vertical: 12),
                    ),
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
