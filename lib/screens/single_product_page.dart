import 'package:flutter/material.dart';

class SingleProductPage extends StatefulWidget {
  const SingleProductPage({Key? key}) : super(key: key);

  @override
  State<SingleProductPage> createState() => _SingleProductPageState();
}

class _SingleProductPageState extends State<SingleProductPage> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Single Product"),
      ),

      body: Column(
        children: [],
      ),
    );
  }
}
