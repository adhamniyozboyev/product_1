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
  List<String> name = [
    'Captiva',
    'Gentra',
    'Malibu',
    'Kia',
    'Hyundai',
    'Ferrari',
    'Bugatti',
    'BMW',
    'Mersades Bens',
    'Rolce Royse'
  ];
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
              color: Colors.grey.shade300,
              shadowColor: Colors.red,
              child: ListTile(
                leading: Icon(
                  Icons.car_rental,
                  color: Colors.red,
                ),
                title: Text(
                  '${name[index]}',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                subtitle: Text('Price$price'),
                trailing: IconButton(
                  onPressed: () => {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => ShowDetails(index: index)))
                  },
                  icon: Icon(
                    Icons.arrow_forward_ios,
                    color: Colors.purple,
                  ),
                ),
              ),
            );
          }),
    );
  }
}
