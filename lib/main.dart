import 'package:flutter/material.dart';
import 'package:product_1/product1.dart';

void main() {
  runApp(MaterialApp(
    home: MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Shop of Cars'),
      ),
      body: ListView.builder(
          itemCount: 10,
          itemBuilder: (context, index) {
            double price = index * 2.5;
            return Card(
              child: ListTile(
                leading: Icon(
                  Icons.car_rental,
                  color: Colors.red,
                ),
                title: Text(
                  'Car ${index + 1}',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                subtitle: Text('cost$price'),
                trailing: IconButton(onPressed: () => {
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>ShowDetails(index: index)))
                },icon: Icon(Icons.arrow_forward_ios,color: Colors.purple,),),
              ),
            );
          }),
    );
  }
}
