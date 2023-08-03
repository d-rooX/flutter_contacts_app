import 'package:flutter/material.dart';

import '../widgets/contact_avatar.dart';
import '../widgets/rounded_button.dart';

class ContactsPage extends StatelessWidget {
  const ContactsPage({super.key});

  @override
  Widget build(BuildContext context) {
    final _controller = ScrollController();

    return Scaffold(
      body: SafeArea(
        child: CustomScrollView(
          controller: _controller,
          physics: const BouncingScrollPhysics(),
          slivers: [
            PageHeader(
              userAvatar: Image.asset(
                'assets/flowers.jpg',
                fit: BoxFit.cover,
              ),
            ),
            SliverFixedExtentList(
              delegate: SliverChildBuilderDelegate(
                childCount: 25,
                (context, index) => Container(
                  margin: const EdgeInsets.all(15),
                  color: Colors.grey,
                ),
              ),
              itemExtent: 50,
            ),
          ],
        ),
      ),
    );
  }
}

class PageHeader extends StatelessWidget {
  final Image userAvatar;
  const PageHeader({super.key, required this.userAvatar});

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      pinned: true,
      elevation: 0,
      // stretch: true,
      // stretchTriggerOffset: 10,
      // onStretchTrigger: () async {
      //   log("TRUE");
      // },
      backgroundColor: Colors.white,
      toolbarHeight: 0,
      expandedHeight: 150,
      flexibleSpace: FlexibleSpaceBar(
        titlePadding: EdgeInsets.zero,
        background: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
              child: HeaderTopPart(userAvatar: userAvatar),
            ),
          ],
        ),
      ),
      collapsedHeight: 60,
      bottom: const PreferredSize(
        preferredSize: Size.fromHeight(60),
        child: SearchField(),
      ),
    );
  }
}

class SearchField extends StatelessWidget {
  const SearchField({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(10),
      padding: const EdgeInsets.all(10),
      width: double.maxFinite,
      decoration: BoxDecoration(
        color: Colors.grey.shade300,
        borderRadius: BorderRadius.circular(25),
      ),
      child: TextField(
        decoration: InputDecoration(
          border: InputBorder.none,
          hintText: 'Search',
          hintStyle: TextStyle(color: Colors.grey.shade500),
          iconColor: Colors.grey.shade400,
          icon: const Icon(Icons.search, size: 30),
        ),
      ),
    );
  }
}

class HeaderTopPart extends StatelessWidget {
  final Image userAvatar;
  const HeaderTopPart({super.key, required this.userAvatar});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        ContactAvatar(
          size: 50,
          image: userAvatar,
        ),
        const Text(
          "Contacts",
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
            fontSize: 20,
          ),
        ),
        RoundedButton(
          color: Colors.blue,
          icon: const Icon(Icons.edit, color: Colors.white),
          onTap: () {},
        ),
      ],
    );
  }
}
