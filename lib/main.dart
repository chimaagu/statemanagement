import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:statemanagement_work/Providers/products_provider.dart';
import 'package:statemanagement_work/app.dart';
import 'package:statemanagement_work/provider_texts.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => MoneyHide(),),
        ChangeNotifierProvider(create: (context) => ProductsProvider(),)
      ],
      child: const MyApp(),
    ),
  );
}
