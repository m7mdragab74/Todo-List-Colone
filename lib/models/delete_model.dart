import 'package:flutter/material.dart';

class DeleteModel extends StatelessWidget {
  const DeleteModel({super.key});

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () {
        showDialog(
            context: context,
            builder: (context) {
              return AlertDialog(
                actionsPadding: const EdgeInsets.all(3),
                actions: [
                  TextButton(
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    child: const Text('Cancel'),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: const Text(
                      'Yes',
                      style: TextStyle(color: Colors.red),
                    ),
                  ),
                ],
                titlePadding: const EdgeInsets.only(top: 5, left: 18),
                title: const Text(
                  'Delete',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
                ),
                contentPadding: const EdgeInsets.only(
                    top: 6, left: 18, right: 18, bottom: 5),
                content:
                    const Text('Are you sure you want to delete this task?'),
              );
            });
      },
      icon: const Icon(
        Icons.delete,
        color: Colors.white,
      ),
    );
  }
}
