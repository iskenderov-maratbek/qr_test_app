import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class PageBuilder extends StatefulWidget {
  final AppBar? appBar;
  final Widget body;
  const PageBuilder({
    super.key,
    this.appBar,
    required this.body,
  });

  @override
  State<PageBuilder> createState() => _PageBuilderState();
}

class _PageBuilderState extends State<PageBuilder> {
  bool isHomeSelected = false;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color.fromRGBO(250, 250, 251, 1),
        appBar: widget.appBar,
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          child: widget.body,
        ),
        bottomNavigationBar: Container(
          padding: const EdgeInsets.all(0),
          decoration: const BoxDecoration(
            boxShadow: [
              BoxShadow(
                color: Colors.black12,
                blurRadius: 30,
                offset: Offset(15, 0),
              ),
            ],
          ),
          child: ClipRRect(
            borderRadius: const BorderRadius.vertical(top: Radius.circular(12)),
            child: BottomAppBar(
              padding: const EdgeInsets.symmetric(vertical: 5),
              height: 70,
              color: const Color.fromRGBO(255, 255, 255, 1),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  const BottomBarButton(
                      iconPath: 'img/icons/Feed.png',
                      selectedIconPath: 'img/icons/Feed-1.png',
                      label: 'Лента'),
                  const BottomBarButton(
                      iconPath: 'img/icons/Favorite.png',
                      selectedIconPath: 'img/icons/Favorite-1.png',
                      label: 'Избранное'),
                  Container(
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      boxShadow: [
                        BoxShadow(
                          color: Color.fromRGBO(170, 13, 52, 0.35),
                          blurRadius: 14.73,
                          offset: Offset(0, 0), // changes position of shadow
                        ),
                      ],
                    ),
                    child: IconButton(
                      padding: const EdgeInsets.all(0),
                      icon: Image.asset(
                        isHomeSelected
                            ? 'img/icons/Home-1.png'
                            : 'img/icons/Home.png',
                        width: 60,
                      ),
                      onPressed: () {},
                    ),
                  ),
                  const BottomBarButton(
                      iconPath: 'img/icons/Profile.png',
                      selectedIconPath: 'img/icons/Profile-1.png',
                      label: 'Профиль'),
                  const BottomBarButton(
                      iconPath: 'img/icons/Cart.png',
                      selectedIconPath: 'img/icons/Cart-1.png',
                      label: 'Корзина'),
                ],
              ),
            ),
          ),
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
      style: ElevatedButton.styleFrom(
        padding: const EdgeInsets.all(0),
      ),
      onPressed: () {},
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Image.asset(isSelected ? widget.selectedIconPath : widget.iconPath,
              width: 25),
          Text(
            widget.label,
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 10,
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
