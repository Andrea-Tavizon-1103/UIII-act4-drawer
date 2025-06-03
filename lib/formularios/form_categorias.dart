import 'package:flutter/material.dart';
import 'package:myapp/formularios/detailss.dart'; // Asegúrate de que esta ruta sea correcta

class Categorias extends StatefulWidget {
  const Categorias({Key? key}) : super(key: key);

  @override
  State<Categorias> createState() => _CategoriasState();
}

class _CategoriasState extends State<Categorias> {
  final _idController = TextEditingController();
  final _nameController = TextEditingController();
  final _descriptionController = TextEditingController();
  final _fechaController = TextEditingController();
  final _estadoController = TextEditingController();
  final _ordenController = TextEditingController();
  final _marcaController = TextEditingController();

  @override
  void dispose() {
    _idController.dispose();
    _nameController.dispose();
    _descriptionController.dispose();
    _fechaController.dispose();
    _estadoController.dispose();
    _ordenController.dispose();
    _marcaController.dispose();
    super.dispose();
  }

  OutlinedButton myBtn(BuildContext context) {
    return OutlinedButton(
      style: OutlinedButton.styleFrom(minimumSize: const Size(200, 50)),
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => Details(
              idProducto: _idController.text,
              nombre: _nameController.text,
              descripcion: _descriptionController.text,
              fechaAgregado: _fechaController.text,
              estado: _estadoController.text,
              orden: _ordenController.text,
              marca: _marcaController.text,
            ),
          ),
        );
      },
      child: const Text('Ver Detalles'),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Categorias'),
        backgroundColor: const Color.fromRGBO(255, 173, 200, 1),
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 16),
            child: Icon(Icons.category), // Icono de teléfono
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: SingleChildScrollView(
          child: Column(
            children: [
              TextField(controller: _idController, decoration: const InputDecoration(labelText: 'ID')),
              TextField(controller: _nameController, decoration: const InputDecoration(labelText: 'Nombre')),
              TextField(controller: _descriptionController, decoration: const InputDecoration(labelText: 'Descripción')),
              TextField(controller: _fechaController, decoration: const InputDecoration(labelText: 'Fecha de creación')),
              TextField(controller: _estadoController, decoration: const InputDecoration(labelText: 'Estado')),
              TextField(controller: _ordenController, decoration: const InputDecoration(labelText: 'Orden')),
              TextField(controller: _marcaController, decoration: const InputDecoration(labelText: 'Marca')),
              const SizedBox(height: 20),
              myBtn(context),
            ],
          ),
        ),
      ),
    );
  }
}
