import 'package:flutter/material.dart';
import 'package:kt5d/models/car/car.dart';
import 'package:kt5d/models/carProd/carProd.dart';
import 'package:kt5d/widget/carWidget.dart';
import 'package:dio/dio.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var client = Dio();
  var url = 'https://myfakeapi.com/api/cars';
  List<Car> carList = [];

  void getNetworkData() async {
    var response = await client.get(url);
    carList = CarProd.fromJson(response.data).cars;
    setState(() {});
  }

  @override
  void initState() {
    getNetworkData();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 41, 41, 41),
        title: const Text('МАШИНЫ НА ЛЮБОЙ ВКУС!'),
        actions: [
          IconButton(
            icon: const Icon(Icons.shopping_cart),
            tooltip: 'Open shopping cart',
            onPressed: () {},
          ),
        ],
      ),
      body: ListView.builder(
        itemCount: carList.length,
        itemBuilder: (context, index) {
          return CarWidget(car: carList[index], index: index + 1);
        },
      ),
    );
  }
}
