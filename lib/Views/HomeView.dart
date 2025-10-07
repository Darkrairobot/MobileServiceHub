import 'package:flutter/material.dart';
import 'package:servicehub/Views/FinancialResume.dart';
import 'InvoiceListView.dart';
import 'CreateInvoiceView.dart';
import 'ProfileView.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _currentIndex = 0;

  final List<Widget> _screens = const [
    InvoiceListScreen(),
    CreateInvoiceScreen(),
    ProfileScreen(),
    FinancialResume(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("ServiceHub")),
      body: _screens[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (index) => setState(() => _currentIndex = index),
        selectedItemColor: Colors.blue,         
        unselectedItemColor: Colors.grey[500],  
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.list), label: 'Notas'),
          BottomNavigationBarItem(icon: Icon(Icons.add_circle_outline), label: 'Nova Nota'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Perfil'),
          BottomNavigationBarItem(icon: Icon(Icons.attach_money), label: 'Resumo'),
        ],
      ),
    );
  }
}
