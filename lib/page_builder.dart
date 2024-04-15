import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class PageBuilder extends StatefulWidget {
  PageBuilder({
    super.key,
    this.appBar,
    required this.body,
  });

  @override
  State<PageBuilder> createState() => _PageBuilderState();
  AppBar? appBar;
  Widget body;
}

class _PageBuilderState extends State<PageBuilder> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: widget.appBar,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            widget.body,
          ],
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        padding: const EdgeInsets.all(0),
        child: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            const BottomBarButton(
                iconPath: 'img/icons/Feed.png',
                selectedIconPath: 'img/icons/Feed0-1.png',
                label: 'Лента'),
            IconButton(icon: Icon(Icons.notifications), onPressed: () {}),
            IconButton(
                icon: Image.asset(
                  'img/icons/Home.png',
                  width: 60,
                ),
                onPressed: () {}),
            IconButton(icon: Icon(Icons.notifications), onPressed: () {}),
            IconButton(icon: Icon(Icons.more_vert), onPressed: () {}),
          ],
        ),
      ),
    );
  }
}

class BottomBarButton extends StatefulWidget {
  final String iconPath;
  final String selectedIconPath;
  final String label;
  const BottomBarButton(
      {super.key,
      required this.iconPath,
      required this.selectedIconPath,
      required this.label});

  @override
  State<BottomBarButton> createState() => _BottomBarButtonState();
}

class _BottomBarButtonState extends State<BottomBarButton> {
  bool isSelected = false;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {},
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Image.asset(isSelected ? widget.selectedIconPath : widget.iconPath,
              width: 35),
          Text(
            widget.label,
            style: TextStyle(
              color: isSelected
                  ? const Color(0xFFF72055)
                  : const Color(0xFFAAAAAA),
            ),
          ),
        ],
      ),
    );
  }
}
