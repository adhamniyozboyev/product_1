import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class ShowDetails extends StatefulWidget {
  final int index;
  const ShowDetails({super.key, required this.index});

  @override
  State<ShowDetails> createState() => _ShowDetailsState();
}

class _ShowDetailsState extends State<ShowDetails> {
  List<String> img = [
    'images/captiva.jpg',
    'images/gentra.jpg',
    'images/malibu.jpg',
    'images/kia.jpg',
    'images/hyunadi.jpg',
    'images/ferrari.jpg',
    'images/bugatti.jpeg',
    'images/bmw.jpg',
    'images/mers.jpg',
    'images/rolce.jpg'
  ];
  List<String> info = [
    'Kaptiva avtomobili birinchi marta 2006- yilda sotuvga qo\'yilgan va hozirda narxi o\'rtacha 12 ming dollar',
    'Gentra avtomobili Birinchi marta 2015- yilda sotuvga qo`yilgan va hozirda narxo o`rtacha 12,5 ming dollar',
    'Malibu avtomobili birinchi marta 2018- yilda sotuvga qo\'yilgan va hozirda narxi o\'rtacha 28 ming dollar',
    'Kia avtomobili Birinchi marta 2015- yilda sotuvga qo`yilgan va hozirda narxo o`rtacha 30,5 ming dollar',
    'Hyundai  avtomobili birinchi marta 2010- yilda sotuvga qo\'yilgan va hozirda narxi o\'rtacha 32 ming dollar',
    'Ferrari avtomobili Birinchi marta 2005- yilda sotuvga qo`yilgan va hozirda narxo o`rtacha 92 ming dollar',
    'Bugatti  avtomobili birinchi marta 2001- yilda sotuvga qo\'yilgan va hozirda narxi o\'rtacha 89 ming dollar',
    'BMW avtomobili Birinchi marta 2002- yilda sotuvga qo`yilgan va hozirda narxo o`rtacha 100 ming dollar',
    'Mersades avtomobili birinchi marta 2000- yilda sotuvga qo\'yilgan va hozirda narxi o\'rtacha 95 ming dollar',
    'Rolce Roys avtomobili Birinchi marta 1997- yilda sotuvga qo`yilgan va hozirda narxo o`rtacha 300 ming dollar',
  ];

  Widget func(int ind) {
    return Column(
      children: [
        Image.asset(img[ind]),
        Card(
            child: Text(
          info[ind],
          style: TextStyle(fontSize: 20),
        ))
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Detail Cars number ${widget.index + 1}'),
        ),
        body: func(widget.index));
  }
}
