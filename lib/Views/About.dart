import 'package:flutter/material.dart';

class AboutScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Sobre o ServiceHub")),
      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("ServiceHub", style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold, color: Color(0xFF1565C0))),
            SizedBox(height: 16),
            Text(
              "O ServiceHub é um aplicativo desenvolvido para facilitar a emissão e o gerenciamento de notas de serviço. "
              "Com uma interface simples e intuitiva, você pode registrar clientes, descrever serviços e emitir notas rapidamente.",
              style: TextStyle(fontSize: 16, height: 1.5),
            ),
            SizedBox(height: 24),
            Text("Versão: 1.0.0", style: TextStyle(color: Colors.grey[600])),
            SizedBox(height: 8),
            Text("Desenvolvido por: Maycon e Rafael", style: TextStyle(color: Colors.grey[600])),
            Spacer(),
            Center(
              child: Text("© 2025 ServiceHub. Todos os direitos reservados.",
                  style: TextStyle(color: Colors.grey[500], fontSize: 12)),
            )
          ],
        ),
      ),
    );
  }
}
