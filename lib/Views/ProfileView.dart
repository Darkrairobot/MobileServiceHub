import 'package:flutter/material.dart';
import 'package:servicehub/Models/User.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Icon(Icons.person, size: 100, color: Color(0xFF1565C0)),
          const SizedBox(height: 16),
          const Text(
            "Perfil",
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 8),
          Text(
            User.currentUser?.name ?? "Usuário desconhecido",
            style: const TextStyle(color: Colors.grey),
          ),
        ],
      ),
    );
  }
}
