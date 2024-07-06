import 'package:flutter/material.dart';
import 'package:task_2/models/delete_model.dart';

// ignore: must_be_immutable
class HomeView extends StatelessWidget {
  HomeView({super.key});
  List todoList = [
    {
      "Todo": "Communication System Quiz",
      "Time": "10:00 AM",
    },
    {
      "Todo": "OS Report",
      "Time": "11:00 AM",
    },
    {
      "Todo": "Buy Some Stuff",
      "Time": "1:00 PM",
    },
    {
      "Todo": "Go To The Gym",
      "Time": "2:00 PM",
    },
    {
      "Todo": "Flutter Task",
      "Time": "4:00 PM",
    },
    {
      "Todo": "Flutter Task بردو",
      "Time": "6:00 PM",
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff4368ff),
      appBar: AppBar(
        backgroundColor: const Color(0xff4368ff),
        title: const Center(
          child: Text(
            'Todo List',
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
          ),
        ),
      ),
      body: ListView.builder(
        itemCount: todoList.length,
        itemBuilder: (context, x) {
          return Padding(
            padding: const EdgeInsets.only(
              left: 15,
            ),
            child: ListTile(
              title: Text(
                "${todoList[x]["Todo"]}",
                style: const TextStyle(color: Colors.white),
              ),
              subtitle: Text(
                "${todoList[x]["Time"]}",
                style: const TextStyle(color: Colors.white),
              ),
              trailing: const DeleteModel(),
            ),
          );
        },
      ),
    );
  }
}
