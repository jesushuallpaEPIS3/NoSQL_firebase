import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class EditScreen extends StatefulWidget {
  final String? itemId;

  const EditScreen({Key? key, this.itemId}) : super(key: key);

  @override
  _EditScreenState createState() => _EditScreenState();
}

class _EditScreenState extends State<EditScreen> {
  final FirebaseFirestore firestore = FirebaseFirestore.instance;
  final TextEditingController _controller = TextEditingController();

  @override
  void initState() {
    super.initState();
    if (widget.itemId != null) {
      _loadItem();
    }
  }

  Future<void> _loadItem() async {
    DocumentSnapshot doc =
        await firestore.collection('items').doc(widget.itemId).get();
    _controller.text = doc['name'];
  }

  Future<void> _saveItem() async {
    if (widget.itemId == null) {
      // Agregar nuevo documento
      await firestore.collection('items').add({'name': _controller.text});
    } else {
      // Actualizar documento existente
      await firestore
          .collection('items')
          .doc(widget.itemId)
          .update({'name': _controller.text});
    }
    Navigator.pop(context);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Edit Item')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              controller: _controller,
              decoration: const InputDecoration(labelText: 'Name'),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: _saveItem, // Llama a la función aquí
              child: const Text('Save'),
            ),
          ],
        ),
      ),
    );
  }
}
