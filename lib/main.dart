import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:untitled1/intro.dart';
import 'package:untitled1/models/cart_model.dart';

void main() {
  runApp(App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => CartModel(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Intro(),
      ),
    );
  }
}
