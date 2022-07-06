import 'package:flutter/material.dart';

class ListViewww extends StatefulWidget {
  const ListViewww({Key? key}) : super(key: key);

  @override
  State<ListViewww> createState() => _ListViewwwState();
}

class _ListViewwwState extends State<ListViewww> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("List View Example"),
        ),
        body: ListView.builder(
            // physics is used to bounce your list even if it is stopped.
            physics: const BouncingScrollPhysics(),
            // reverse is used to reverse your list.
            reverse: true,
            // item extent is used to add the space between your lists.
            itemExtent: 75,
            itemCount: 100,
            itemBuilder: (context, index) {
              return ListTile(
                title: Text("Item Number $index"),
              );
            }));
  }
}
