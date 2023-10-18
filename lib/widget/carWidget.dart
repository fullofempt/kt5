import 'package:flutter/material.dart';
import 'package:kt5d/models/car/car.dart';

class CarWidget extends StatelessWidget {
  final Car car;
  final index;

  const CarWidget({super.key, required this.car, required this.index});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color.fromARGB(255, 255, 255, 255),
        child: Card(
          color: const Color.fromARGB(255, 44, 44, 44),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30),
          ),
          child: ListTile(
              isThreeLine: true,
              title: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    children: [
                      Text(
                        " ${car.car} - ",
                        style: const TextStyle(
                            color: Color.fromARGB(255, 255, 255, 255),
                            fontSize: 14),
                      ),
                      Text(
                        " ${car.car_model} ",
                        style: const TextStyle(
                            color: Color.fromARGB(255, 255, 255, 255),
                            fontSize: 14),
                      ),
                    ],
                  )
                ],
              ),
              subtitle: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    'Car color: ${car.car_color}, available: ${car.availability}',
                    style: const TextStyle(
                      fontSize: 13,
                      color: Color.fromARGB(255, 218, 218, 218),
                    ),
                  ),
                ],
              ),
              leading: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Car №${index.toString()} ",
                      style: const TextStyle(
                          color: Color.fromARGB(255, 255, 255, 255),
                          fontSize: 15,
                          fontWeight: FontWeight.w300)),
                ],
              ),
              trailing: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Price: ${car.price.toString()}",
                    style: const TextStyle(
                        color: Color.fromARGB(255, 255, 255, 255),
                        fontWeight: FontWeight.bold,
                        fontSize: 10),
                  )
                ],
              )),
        ),
      );
  }
}
