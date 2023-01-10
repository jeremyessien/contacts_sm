import 'main.dart';

class ContactBook {
  ContactBook._sharedInstance();

  static final ContactBook _shared = ContactBook._sharedInstance();

  factory ContactBook() {
    return _shared;
  }

  final List<Contacts> _contacts = [];

  int get length => _contacts.length;

  void add({required Contacts contact}) {
    _contacts.add(contact);
  }

  void remove({required Contacts contact}) {
    _contacts.remove(contact);
  }

  Contacts? contact({required int atIndex}) {
    return _contacts.length > atIndex ? _contacts[atIndex] : null;
  }
}
