import 'package:flutter/material.dart';
import 'package:platform_channels/src/pet_list_message_channel.dart';

class AddPetDetails extends StatefulWidget {
  @override
  _AddPetDetailsState createState() => _AddPetDetailsState();
}

class _AddPetDetailsState extends State<AddPetDetails> {
  final breedTextController = TextEditingController();
  String petType = 'Dog';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Add Pet Details'),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.add),
            onPressed: () {
              PetListMessageChannel.addPetDetails(<String, String>{
                'petType': petType,
                'breed': breedTextController.value.text
              });

              Navigator.pop(context);
            },
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            TextField(
              controller: breedTextController,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                filled: true,
                hintText: 'Breed of pet',
                labelText: 'Breed',
              ),
            ),
            SizedBox(
              height: 8,
            ),
            RadioListTile<String>(
              title: const Text('Dog'),
              value: 'Dog',
              groupValue: petType,
              onChanged: (value) {
                setState(() {
                  petType = value;
                });
              },
            ),
            RadioListTile<String>(
              title: const Text('Cat'),
              value: 'Cat',
              groupValue: petType,
              onChanged: (value) {
                setState(() {
                  petType = value;
                });
              },
            ),
          ],
        ),
      ),
    );
  }
}
