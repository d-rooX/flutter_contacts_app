import 'package:bloc/bloc.dart';
import 'package:contact_book/service/contacts_service.dart';
import 'package:meta/meta.dart';

part 'contacts_state.dart';

class ContactsCubit extends Cubit<ContactsState> {
  final ContactsServiceInterface contactsService;
  ContactsCubit({required this.contactsService}) : super(ContactsInitial());
}
