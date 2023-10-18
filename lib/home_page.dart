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
      body: ListView.builder(
        itemCount: carList.length,
        itemBuilder: (context, index) {
          return CarWidget(
            car: carList[index],
            index: index + 1,
          );
        },
        // width: 500,
        // color: Color.fromARGB(255, 255, 217, 63),
        // child: Container(
        //   padding: const EdgeInsets.all(20),
        //   child: Container(
        //     margin: const EdgeInsets.all(10),
        //     child: const Column(
        //       mainAxisAlignment: MainAxisAlignment.start,
        //       children: <Widget>[],
        //     ),
        //   ),
        // ),
      ),
    );
  }
}
