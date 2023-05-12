import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:statemanagement_work/Providers/products_provider.dart';

class AllProductsPage extends StatelessWidget {
  const AllProductsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final products = Provider.of<ProductsProvider>(context);
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          ElevatedButton(onPressed: () {
            products.fetchAllProducts();
          }, child: const Text("fetchProducts"),)
        ],
      ),
    );
  }
}
