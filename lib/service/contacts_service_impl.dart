import 'package:flutter_contacts/flutter_contacts.dart';

import 'contacts_service.dart';

class ContactsService implements ContactsServiceInterface {
  @override
  Future<Contact?> getContact(String id) async {
    return await FlutterContacts.getContact(id);
  }

  @override
  Future<List<Contact>> getContacts([bool fullyFetched = true]) async {
    if (fullyFetched) {
      return await FlutterContacts.getContacts(
        withProperties: true,
        withThumbnail: true,
        withPhoto: true,
        withGroups: true,
        withAccounts: true,
      );
    } else {
      return await FlutterContacts.getContacts();
    }
  }

  @override
  Future<Contact> createContact({
    required String firstName,
    required List<String> phones,
    String lastName = '',
  }) async {
    final contact = Contact()
      ..name.first = firstName
      ..name.last = lastName
      ..phones = phones
          .map(
            (phone) => Phone(phone),
          )
          .toList(growable: false);
    await contact.insert();

    return contact;
  }
}
