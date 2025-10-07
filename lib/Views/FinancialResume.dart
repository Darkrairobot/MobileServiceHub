import 'package:flutter/material.dart';
import 'package:servicehub/Models/Invcoices.dart';

class FinancialResume extends StatelessWidget {
  const FinancialResume({super.key});

  @override
  Widget build(BuildContext context) {
    final invoices = Invoices.invoices;

    // Total de serviços
    final totalServices = invoices.length;

    // Soma total de todos os valores
    double totalValue = 0;

    invoices.forEach((inv) {
      totalValue += inv.valor;
    });

    return Scaffold(
      appBar: AppBar(
        title: const Text('Resumo Financeiro'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Card(
              margin: const EdgeInsets.only(bottom: 12),
              child: ListTile(
                leading: const Icon(Icons.list_alt, color: Colors.blue, size: 40),
                title: const Text("Total de serviços"),
                trailing: Text(
                  totalServices.toString(),
                  style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                ),
              ),
            ),
            Card(
              margin: const EdgeInsets.only(bottom: 12),
              child: ListTile(
                leading: const Icon(Icons.attach_money, color: Colors.green, size: 40),
                title: const Text("Valor total"),
                trailing: Text(
                  "R\$ ${totalValue.toStringAsFixed(2)}",
                  style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
