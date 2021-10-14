import 'package:calculadora_imc/setState/imc_setstate_page.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  void _goToPage(BuildContext context, Widget page) {
    Navigator.of(context).push(MaterialPageRoute(builder: (context) => page));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Page'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () => _goToPage(
                context,
                SetState(),
              ),
              child: Text('SetState'),
            ),
            ElevatedButton(
              onPressed: () {},
              child: Text('ValueNotifier'),
            ),
            ElevatedButton(
              onPressed: () {},
              child: Text('ChangeNotifier'),
            ),
            ElevatedButton(
              onPressed: () {},
              child: Text('ValueNotifier'),
            ),
            ElevatedButton(
              onPressed: () {},
              child: Text('Bloc Pattern (Streams'),
            ),
          ],
        ),
      ),
    );
  }
}
