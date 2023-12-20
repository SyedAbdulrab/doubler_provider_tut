import "package:flutter/material.dart";
import "package:provider/provider.dart";
import "package:tut_provider/numbersListProvider.dart";

class Guest extends StatefulWidget {
  const Guest({super.key});

  @override
  State<Guest> createState() => _GuestState();
}

class _GuestState extends State<Guest> {
  @override
  Widget build(BuildContext context) {
    return Consumer<NumbersListProvider>(
      builder: (context, numbersListProvider, child) {
        return Scaffold(
          floatingActionButton: FloatingActionButton(
            onPressed: () {
              numbersListProvider.double();
            },
            child: const Icon(Icons.add),
          ),
          appBar: AppBar(
            title: const Text("Flutter Provider Tut"),
          ),
          body: ListView.builder(
            itemCount: numbersListProvider.numbers.length,
            itemBuilder: (context, index) => ListTile(
              title: Text(numbersListProvider.numbers[index].toString()),
            ),
          ),
        );
      },
    );
  }
}
