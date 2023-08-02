import 'package:flutter_contacts/flutter_contacts.dart';

abstract interface class ContactsServiceInterface {
  Future<List<Contact>> getContacts([bool fullyFetched = true]);
  Future<Contact?> getContact(String id);
  Future<Contact> createContact({
    required String firstName,
    required List<String> phones,
    String lastName,
  });
}
