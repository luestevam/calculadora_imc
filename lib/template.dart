import 'package:calculadora_imc/widgets/imc_gauge.dart';
import 'package:currency_text_input_formatter/currency_text_input_formatter.dart';
import 'package:flutter/material.dart';

class SetState extends StatefulWidget {
  const SetState({Key? key}) : super(key: key);

  @override
  _SetStateState createState() => _SetStateState();
}

class _SetStateState extends State<SetState> {
  final pesoEC = TextEditingController();
  final alturaEC = TextEditingController();

  @override
  void dispose() {
    pesoEC.dispose();
    alturaEC.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('SetState'),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(8),
        child: Column(
          children: [
            ImcGauge(imc: 0),
            SizedBox(
              height: 20,
            ),
            TextFormField(
              controller: pesoEC,
              inputFormatters: [
                CurrencyTextInputFormatter(
                  locale: 'pt_BR',
                  symbol: '',
                  decimalDigits: 2,
                  turnOffGrouping: true,
                ),
              ],
              keyboardType: TextInputType.number,
              decoration: InputDecoration(labelText: 'PESO:'),
            ),
            TextFormField(
              controller: alturaEC,
              inputFormatters: [
                CurrencyTextInputFormatter(
                  locale: 'pt_BR',
                  symbol: '',
                  decimalDigits: 2,
                  turnOffGrouping: true,
                ),
              ],
              keyboardType: TextInputType.number,
              decoration: InputDecoration(labelText: 'ALTURA:'),
            ),
            SizedBox(height: 20),
            ElevatedButton(onPressed: () {}, child: Text('Calcular IMC'))
          ],
        ),
      ),
    );
  }
}
