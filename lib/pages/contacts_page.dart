import 'dart:developer';

import 'package:contact_book/widgets/contact_avatar.dart';
import 'package:contact_book/widgets/rounded_button.dart';
import 'package:flutter/material.dart';

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
            SearchField(controller: _controller),
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
    return SliverToBoxAdapter(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            ContactAvatar(
              size: 50,
              image: userAvatar,
            ),
            const Text(
              "Contacts",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 22,
              ),
            ),
            RoundedButton(
              color: Colors.blue,
              icon: const Icon(Icons.edit, color: Colors.white),
              onTap: () {},
            ),
          ],
        ),
      ),
    );
  }
}

class SearchField extends StatelessWidget {
  final ScrollController controller;
  const SearchField({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return SliverPersistentHeader(
      pinned: true,
      delegate: _SliverAppBarDelegate(
        controller: controller,
        minHeight: 0,
        maxHeight: 80,
        child: Container(
          margin: const EdgeInsets.all(5),
          decoration: BoxDecoration(
            color: Colors.blue,
            borderRadius: BorderRadius.circular(20),
          ),
        ),
      ),
    );
  }
}

class _SliverAppBarDelegate extends SliverPersistentHeaderDelegate {
  final ScrollController controller;
  final double minHeight;
  final double maxHeight;
  final Widget child;

  _SliverAppBarDelegate({
    required this.controller,
    required this.minHeight,
    required this.maxHeight,
    required this.child,
  });

  @override
  double get maxExtent => maxHeight;

  @override
  double get minExtent => minHeight;

  @override
  bool shouldRebuild(covariant SliverPersistentHeaderDelegate oldDelegate) {
    return oldDelegate.maxExtent != maxExtent ||
        oldDelegate.minExtent != minExtent;
  }

  @override
  Widget build(
    BuildContext context,
    double shrinkOffset,
    bool overlapsContent,
  ) {
    final _scrollable = Scrollable.of(context);
    log(_scrollable.widget.toString());

    return SizedBox.expand(child: child);
  }
}
