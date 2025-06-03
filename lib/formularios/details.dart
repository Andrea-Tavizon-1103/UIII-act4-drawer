import 'package:flutter/material.dart';

class Details extends StatelessWidget {
  final String idProducto;
  final String nombre;
  final String descripcion;
  final String stock;
  final String precio;
  final String categoria;
  final String fechaAgregado;

  const Details({
    Key? key,
    required this.idProducto,
    required this.nombre,
    required this.descripcion,
    required this.stock,
    required this.precio,
    required this.categoria,
    required this.fechaAgregado,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Detalles del Producto"),
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(Icons.arrow_back),
        ),
      ),
      body: Container(
        padding: const EdgeInsets.all(8.0),
        child: ListView(
          children: [
            _buildTile("ID Producto", idProducto, Icons.confirmation_number),
            _buildTile("Nombre", nombre, Icons.label),
            _buildTile("Descripción", descripcion, Icons.description),
            _buildTile("Stock", stock, Icons.storage),
            _buildTile("Precio", "\$$precio", Icons.attach_money),
            _buildTile("Categoría", categoria, Icons.category),
            _buildTile("Fecha Agregado", fechaAgregado, Icons.date_range),
          ],
        ),
      ),
    );
  }

  Widget _buildTile(String title, String value, IconData icon) {
    return ListTile(
      shape: RoundedRectangleBorder(
        side: BorderSide(width: 1.0, color: Colors.grey.shade300),
      ),
      leading: Icon(icon, color: const Color.fromARGB(153, 102, 102, 102)),
      title: Text(
        title,
        style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),
      ),
      subtitle: Text(value),
      trailing: const Icon(Icons.info_outline, color: Colors.grey),
    );
  }
}