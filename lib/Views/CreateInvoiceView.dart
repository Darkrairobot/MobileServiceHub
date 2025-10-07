import 'package:flutter/material.dart';
import 'package:servicehub/Models/Invcoices.dart';

class CreateInvoiceScreen extends StatelessWidget {
  const CreateInvoiceScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final clientController = TextEditingController();
    final serviceController = TextEditingController();
    final valueController = TextEditingController();

    return SingleChildScrollView(
      padding: const EdgeInsets.all(24),
      child: Column(
        children: [
          TextField(
            controller: clientController,
            decoration: const InputDecoration(labelText: 'Cliente', border: OutlineInputBorder()),
          ),
          const SizedBox(height: 16),
          TextField(
            controller: serviceController,
            decoration: const InputDecoration(labelText: 'Serviço', border: OutlineInputBorder()),
          ),
          const SizedBox(height: 16),
          TextField(
            controller: valueController,
            keyboardType: TextInputType.number,
            decoration: const InputDecoration(labelText: 'Valor (R\$)', border: OutlineInputBorder()),
          ),
          const SizedBox(height: 24),
          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
              onPressed: () {

                
                Invoices.invoices.add(Invoices(
                  cliente: clientController.text,
                  servico: serviceController.text,
                  valor: double.tryParse(valueController.text) ?? 0.0,
                ));


                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text("Nota emitida com sucesso!")),
                );
              },
              child: const Text("Emitir Nota"),
            ),
          ),
        ],
      ),
    );
  }
}
