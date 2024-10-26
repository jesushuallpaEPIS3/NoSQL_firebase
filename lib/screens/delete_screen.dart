import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class DeleteScreen extends StatelessWidget {
  final String itemId;

  DeleteScreen({required this.itemId});

  final FirebaseFirestore firestore = FirebaseFirestore.instance;

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text('Eliminar Ítem'),
      content: Text('¿Estás seguro de que deseas eliminar este ítem?'),
      actions: [
        TextButton(
          onPressed: () {
            // Si el usuario confirma, elimina el documento
            firestore.collection('items').doc(itemId).delete().then((_) {
              Navigator.of(context).pop(true); // Cerrar diálogo
            });
          },
          child: Text('Sí'),
        ),
        TextButton(
          onPressed: () {
            Navigator.of(context).pop(false); // Cerrar diálogo
          },
          child: Text('No'),
        ),
      ],
    );
  }
}
