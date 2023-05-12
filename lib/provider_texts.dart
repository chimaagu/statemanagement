import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ProviderScreen extends StatelessWidget {
  const ProviderScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final hidePrice = Provider.of<MoneyHide>(context);
    return Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
      children: [
        hidePrice.isPriceHidden ? const Text("20,000") : const Text("******"),
        const SizedBox(height: 30),
        ElevatedButton(
          onPressed: () {
            hidePrice.hidePrice();
          },
          child: const Text("Hide Balance"),
        )
      ],
    ));
  }
}

class MoneyHide with ChangeNotifier {
  bool isPriceHidden = false;

  hidePrice() {
    isPriceHidden = !isPriceHidden;
    notifyListeners();
  }
}
