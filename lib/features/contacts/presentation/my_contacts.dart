import 'package:flutter/material.dart';

class MyContacts extends StatelessWidget {
  const MyContacts({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold();
  }

  List<Contact> generateContacts() {
    List<Contact> contacts = [];

    contacts.add(Contact(name: "John Doe", phoneNumber: "+1 (555) 123-4567"));
    contacts.add(Contact(name: "Jane Smith", phoneNumber: "+1 (555) 234-5678"));
    contacts
        .add(Contact(name: "David Johnson", phoneNumber: "+1 (555) 345-6789"));
    contacts
        .add(Contact(name: "Emily Wilson", phoneNumber: "+1 (555) 456-7890"));
    contacts
        .add(Contact(name: "Michael Davis", phoneNumber: "+1 (555) 567-8901"));
    contacts
        .add(Contact(name: "Olivia Taylor", phoneNumber: "+1 (555) 678-9012"));
    contacts
        .add(Contact(name: "Daniel Brown", phoneNumber: "+1 (555) 789-0123"));
    contacts
        .add(Contact(name: "Sophia Miller", phoneNumber: "+1 (555) 890-1234"));
    contacts
        .add(Contact(name: "Ethan Anderson", phoneNumber: "+1 (555) 901-2345"));
    contacts
        .add(Contact(name: "Ava Martinez", phoneNumber: "+1 (555) 012-3456"));
    return contacts;
  }
}

class Contact {
  final String name;
  final String phoneNumber;

  Contact({required this.name, required this.phoneNumber});
}
