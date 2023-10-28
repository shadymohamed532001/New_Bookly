import 'package:flutter/material.dart';

class CustomListViewItems extends StatelessWidget {
  const CustomListViewItems({super.key});

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1 / 2,
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(500),
            image: const DecorationImage(
                image: AssetImage('assets/images/listViewphoto.png'),
                fit: BoxFit.cover)),
      ),
    );
  }
}
