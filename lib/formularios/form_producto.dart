import 'package:flutter/material.dart';
import 'package:myapp/formularios/details.dart'; // Asegúrate de que esta ruta sea correcta

class Productos extends StatefulWidget {
  const Productos({Key? key}) : super(key: key);

  @override
  State<Productos> createState() => _ProductosState();
}

class _ProductosState extends State<Productos> {
  final _idController = TextEditingController();
  final _nameController = TextEditingController();
  final _descriptionController = TextEditingController();
  final _stockController = TextEditingController();
  final _priceController = TextEditingController();
  final _categoryController = TextEditingController();
  final _dateController = TextEditingController();

  @override
  void dispose() {
    _idController.dispose();
    _nameController.dispose();
    _descriptionController.dispose();
    _stockController.dispose();
    _priceController.dispose();
    _categoryController.dispose();
    _dateController.dispose();
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
              stock: _stockController.text,
              precio: _priceController.text,
              categoria: _categoryController.text,
              fechaAgregado: _dateController.text,
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
      appBar: AppBar( title: const Text('Productos'),
        backgroundColor: const Color.fromRGBO(255, 173, 200, 1),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: SingleChildScrollView(
          child: Column(
            children: [
              TextField(controller: _idController, decoration: const InputDecoration(labelText: 'ID')),
              TextField(controller: _nameController, decoration: const InputDecoration(labelText: 'Nombre')),
              TextField(controller: _descriptionController, decoration: const InputDecoration(labelText: 'Descripción')),
              TextField(controller: _stockController, decoration: const InputDecoration(labelText: 'Stock')),
              TextField(controller: _priceController, decoration: const InputDecoration(labelText: 'Precio')),
              TextField(controller: _categoryController, decoration: const InputDecoration(labelText: 'Categoría')),
              TextField(controller: _dateController, decoration: const InputDecoration(labelText: 'Fecha Agregado')),
              const SizedBox(height: 20),
              myBtn(context),
            ],
          ),
        ),
      ),
    );
  }
}
