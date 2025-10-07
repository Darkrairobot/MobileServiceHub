import 'package:flutter/material.dart';
import 'package:servicehub/Models/Invcoices.dart';

class InvoiceListScreen extends StatefulWidget {
  const InvoiceListScreen({super.key});

  @override
  State<InvoiceListScreen> createState() => _InvoiceListScreenState();
}

class _InvoiceListScreenState extends State<InvoiceListScreen> {
  @override
  Widget build(BuildContext context) {
    final invoices = Invoices.invoices;

    return ListView.builder(
      padding: const EdgeInsets.all(16),
      itemCount: invoices.length,
      itemBuilder: (context, i) {
        final inv = invoices[i];
        return Card(
          margin: const EdgeInsets.only(bottom: 12),
          child: ListTile(
            title: Text(inv.cliente),
            subtitle: Text(inv.servico),
            trailing: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  "R\$ ${inv.valor.toStringAsFixed(2)}",
                  style: const TextStyle(fontWeight: FontWeight.bold),
                ),
                IconButton(
                  icon: const Icon(Icons.delete, color: Colors.red),
                  onPressed: () {
                    setState(() {
                      invoices.removeAt(i);
                    });
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(content: Text("Serviço '${inv.servico}' excluído.")),
                    );
                  },
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
