import 'package:flutter/material.dart';

class Details extends StatelessWidget {
  final String idProducto;
  final String nombre;
  final String descripcion;
  final String fechaAgregado;
  final String estado;
  final String orden;
  final String marca;

  const Details({
    Key? key,
    required this.idProducto,
    required this.nombre,
    required this.descripcion,
    required this.fechaAgregado,
    required this.estado,
    required this.orden,
    required this.marca,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Detalles del Producto"),
        leading: IconButton(
          onPressed: () => Navigator.pop(context),
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
            _buildTile("Fecha de Creación", fechaAgregado, Icons.calendar_today),
            _buildTile("Estado", estado, Icons.toggle_on),
            _buildTile("Orden", orden, Icons.format_list_numbered),
            _buildTile("Marca", marca, Icons.branding_watermark),
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
