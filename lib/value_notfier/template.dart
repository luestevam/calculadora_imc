import 'package:calculadora_imc/widgets/imc_gauge_rage.dart';
import 'package:currency_text_input_formatter/currency_text_input_formatter.dart';
import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_gauges/gauges.dart';

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
            SfRadialGauge(
              axes: [
                RadialAxis(
                  showLabels: false,
                  showAxisLine: false,
                  showTicks: false,
                  minimum: 12.5,
                  maximum: 47.9,
                  ranges: [
                    ImcGaugeRange(
                      color: Colors.blue,
                      start: 12.5,
                      end: 18.5,
                      label: 'MAGREZA',
                    ),
                    ImcGaugeRange(
                      color: Colors.green,
                      start: 18.5,
                      end: 24.5,
                      label: 'NORMAL',
                    ),
                    ImcGaugeRange(
                      color: Colors.yellow[600]!,
                      start: 24.5,
                      end: 29.9,
                      label: 'SOBREPESO',
                    ),
                    ImcGaugeRange(
                      color: Colors.red[500]!,
                      start: 29.9,
                      end: 39.9,
                      label: 'OBSIDADE',
                    ),
                    ImcGaugeRange(
                      color: Colors.red[900]!,
                      start: 39.9,
                      end: 47.9,
                      label: 'OBSIDADE GRAVE',
                    ),
                  ],
                  pointers: [
                    NeedlePointer(
                      value: 15,
                      enableAnimation: true,
                    ),
                  ],
                ),
              ],
            ),
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
