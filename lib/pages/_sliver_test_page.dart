import 'package:contact_book/bloc/contacts_cubit.dart';
import 'package:contact_book/service/contacts_service_impl.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class RoundIcon extends StatelessWidget {
  const RoundIcon(this.icon, {super.key});
  final Icon icon;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8),
      decoration: BoxDecoration(
        color: Colors.white.withAlpha(200),
        borderRadius: BorderRadius.circular(100),
      ),
      child: icon,
    );
  }
}

class SliverTestPage extends StatelessWidget {
  const SliverTestPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ContactsCubit(contactsService: ContactsService()),
      child: Scaffold(
        body: CustomScrollView(
          physics: const BouncingScrollPhysics(),
          slivers: [
            SliverAppBar(
              toolbarHeight: 90,
              title: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  RoundIcon(Icon(
                    Icons.clear,
                    color: Colors.black.withAlpha(225),
                    size: 20,
                  )),
                  RoundIcon(Icon(
                    Icons.shopping_cart_outlined,
                    color: Colors.black.withAlpha(225),
                    size: 20,
                  )),
                ],
              ),
              bottom: PreferredSize(
                preferredSize: const Size.fromHeight(15),
                child: Container(
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(25),
                      topRight: Radius.circular(25),
                    ),
                  ),
                  width: double.maxFinite,
                  child: const Center(
                    child: Text(
                      "Some flowers topic",
                      style: TextStyle(
                        fontSize: 26,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ),
              elevation: 0,
              pinned: true,
              backgroundColor: Colors.amber,
              flexibleSpace: FlexibleSpaceBar(
                background: Image.asset(
                  'assets/flowers.jpg',
                  fit: BoxFit.cover,
                ),
              ),
              expandedHeight: 300,
            ),
            const SliverToBoxAdapter(
              child: Padding(
                padding: EdgeInsets.all(16),
                child: Text(
                  "loremUtinam error tellus nisl donec. Natoque eget non erat massa. Sententiae movet persecuti porta convenire maecenas delicata est conubia. Et feugiat ubique wisi neglegentur aliquip tibique. Audire ac mei interdum partiendo brute elaboraret novum mel hendrerit. "
                  "loremUtinam error tellus nisl donec. Natoque eget non erat massa. Sententiae movet persecuti porta convenire maecenas delicata est conubia. Et feugiat ubique wisi neglegentur aliquip tibique. Audire ac mei interdum partiendo brute elaboraret novum mel hendrerit. "
                  "loremUtinam error tellus nisl donec. Natoque eget non erat massa. Sententiae movet persecuti porta convenire maecenas delicata est conubia. Et feugiat ubique wisi neglegentur aliquip tibique. Audire ac mei interdum partiendo brute elaboraret novum mel hendrerit. "
                  "loremUtinam error tellus nisl donec. Natoque eget non erat massa. Sententiae movet persecuti porta convenire maecenas delicata est conubia. Et feugiat ubique wisi neglegentur aliquip tibique. Audire ac mei interdum partiendo brute elaboraret novum mel hendrerit. "
                  "loremUtinam error tellus nisl donec. Natoque eget non erat massa. Sententiae movet persecuti porta convenire maecenas delicata est conubia. Et feugiat ubique wisi neglegentur aliquip tibique. Audire ac mei interdum partiendo brute elaboraret novum mel hendrerit. "
                  "loremUtinam error tellus nisl donec. Natoque eget non erat massa. Sententiae movet persecuti porta convenire maecenas delicata est conubia. Et feugiat ubique wisi neglegentur aliquip tibique. Audire ac mei interdum partiendo brute elaboraret novum mel hendrerit. "
                  "loremUtinam error tellus nisl donec. Natoque eget non erat massa. Sententiae movet persecuti porta convenire maecenas delicata est conubia. Et feugiat ubique wisi neglegentur aliquip tibique. Audire ac mei interdum partiendo brute elaboraret novum mel hendrerit. "
                  "loremUtinam error tellus nisl donec. Natoque eget non erat massa. Sententiae movet persecuti porta convenire maecenas delicata est conubia. Et feugiat ubique wisi neglegentur aliquip tibique. Audire ac mei interdum partiendo brute elaboraret novum mel hendrerit. "
                  "loremUtinam error tellus nisl donec. Natoque eget non erat massa. Sententiae movet persecuti porta convenire maecenas delicata est conubia. Et feugiat ubique wisi neglegentur aliquip tibique. Audire ac mei interdum partiendo brute elaboraret novum mel hendrerit. "
                  "loremUtinam error tellus nisl donec. Natoque eget non erat massa. Sententiae movet persecuti porta convenire maecenas delicata est conubia. Et feugiat ubique wisi neglegentur aliquip tibique. Audire ac mei interdum partiendo brute elaboraret novum mel hendrerit. "
                  "loremUtinam error tellus nisl donec. Natoque eget non erat massa. Sententiae movet persecuti porta convenire maecenas delicata est conubia. Et feugiat ubique wisi neglegentur aliquip tibique. Audire ac mei interdum partiendo brute elaboraret novum mel hendrerit. "
                  "loremUtinam error tellus nisl donec. Natoque eget non erat massa. Sententiae movet persecuti porta convenire maecenas delicata est conubia. Et feugiat ubique wisi neglegentur aliquip tibique. Audire ac mei interdum partiendo brute elaboraret novum mel hendrerit. "
                  "loremUtinam error tellus nisl donec. Natoque eget non erat massa. Sententiae movet persecuti porta convenire maecenas delicata est conubia. Et feugiat ubique wisi neglegentur aliquip tibique. Audire ac mei interdum partiendo brute elaboraret novum mel hendrerit. ",
                  style: TextStyle(fontSize: 18),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
