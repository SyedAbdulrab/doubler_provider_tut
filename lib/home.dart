import "package:flutter/material.dart";
import "package:provider/provider.dart";
import "package:tut_provider/guest.dart";
import "package:tut_provider/numbersListProvider.dart";

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  @override
  Widget build(BuildContext context) {
    return Consumer<NumbersListProvider>(
      builder: (context, numbersListProvider, child) {
        return Scaffold(
          floatingActionButton: FloatingActionButton(
            onPressed: () {
              numbersListProvider.double(); // Assuming double() method is defined in <link>NumbersListProvider</link>
            },
            child: const Icon(Icons.add),
          ),
          appBar: AppBar(
            actions: [
              IconButton(
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => const Guest(),
                  ));
                },
                icon: const Icon(Icons.girl_outlined),
              )
            ],
            title: const Text('Numbers List'), // Update the title as per your requirement
          ),
          body: ListView.builder(
            itemCount: numbersListProvider.numbers.length,
            itemBuilder: (context, index) =>
                ListTile(
                  title: Text(numbersListProvider.numbers[index].toString()),
                ),
          ),
        );
      },
    );
  }
}
