import 'package:flutter/material.dart';

class BasahBasih extends StatelessWidget {
  const BasahBasih({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Chat'),
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView(
              children: [
                // daftar pesan
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Form(
              child: Row(
                children: [
                  Expanded(
                    child: TextFormField(
                      // controller: _textEditingController,
                      decoration: InputDecoration(
                        hintText: 'Type your message',
                      ),
                    ),
                  ),
                  IconButton(
                    icon: Icon(Icons.send),
                    onPressed: () {
                      // aksi untuk mengirim pesan
                    },
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
