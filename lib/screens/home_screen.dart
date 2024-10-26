import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'delete_screen.dart'; // Importa el nuevo archivo

class HomeScreen extends StatelessWidget {
  final FirebaseFirestore firestore = FirebaseFirestore.instance;

  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _typeController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('CRUD Firestore'),
      ),
      body: StreamBuilder<QuerySnapshot>(
        stream: firestore.collection('items').snapshots(),
        builder: (context, snapshot) {
          if (!snapshot.hasData) {
            return Center(child: CircularProgressIndicator());
          }

          final items = snapshot.data!.docs;

          return ListView.builder(
            itemCount: items.length,
            itemBuilder: (context, index) {
              var item = items[index];
              return ListTile(
                title: Text(item['nombre'] ?? 'Sin nombre'),
                subtitle: Text(item['tipo'] ?? 'Sin tipo'),
                trailing: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    IconButton(
                      icon: Icon(Icons.edit),
                      onPressed: () {
                        _nameController.text = item['nombre'];
                        _typeController.text = item['tipo'];
                        _showEditDialog(context, item.id);
                      },
                    ),
                    IconButton(
                      icon: Icon(Icons.delete),
                      onPressed: () {
                        showDialog(
                          context: context,
                          builder: (context) {
                            return DeleteScreen(itemId: item.id);
                          },
                        );
                      },
                    ),
                  ],
                ),
              );
            },
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          _showAddDialog(context);
        },
        child: Icon(Icons.add),
      ),
    );
  }

  void _showAddDialog(BuildContext context) {
    // ... (tu método existente)
  }

  void _showEditDialog(BuildContext context, String itemId) {
    // ... (tu método existente)
  }
}
