import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:qr_test_app/page_builder.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key, required this.title});

  final String title;

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Map<String, Color> listOfBoxes = {
    'Вакансии': const Color.fromRGBO(212, 229, 255, 1),
    'Маркет': const Color.fromRGBO(255, 211, 186, 1),
    'Цветы': const Color.fromRGBO(255, 222, 222, 1),
    'Спорт': const Color.fromRGBO(207, 242, 227, 1),
    'Дети': const Color.fromRGBO(189, 225, 209, 1),
    '': const Color.fromARGB(255, 179, 189, 42),
  };

  @override
  Widget build(BuildContext context) {
    return PageBuilder(
      body: Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          TextField(
            decoration: InputDecoration(
              hintText: 'Искать в Malina',
              hintStyle:
                  const TextStyle(color: Color.fromRGBO(114, 114, 114, 1)),
              prefixIcon: Image.asset('img/icons/Search.png', width: 15),
              filled: true,
              fillColor: Colors.white,
              enabledBorder: const OutlineInputBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(12),
                  ),
                  borderSide: BorderSide(color: Colors.white)),
              focusedBorder: const OutlineInputBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(12),
                  ),
                  borderSide: BorderSide(color: Colors.white)),
            ),
          ),
          const SizedBox(height: 20),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              padding: const EdgeInsets.symmetric(vertical: 11, horizontal: 30),
              shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(12)),
              ),
              backgroundColor: const Color.fromRGBO(247, 32, 85, 1),
            ),
            onPressed: () {},
            child: Row(
              children: [
                Image.asset(
                  'img/icons/qr_logo.png',
                  height: 68,
                ),
                const SizedBox(width: 20),
                const Expanded(
                  child: Text(
                    'Сканируй QR-код и заказывай прямо в заведении',
                    style: TextStyle(color: Colors.white, fontSize: 16),
                  ),
                )
              ],
            ),
          ),
          const SizedBox(height: 20),
          const HomeBanner(
              imgPath: 'img/contents/image 1827.png',
              backgroundColor: Color.fromRGBO(255, 223, 148, 1),
              title: 'Еда',
              subtitle: 'Из кафе и ресторанов'),
          const SizedBox(height: 20),
          const HomeBanner(
              imgPath: 'img/contents/image 1826.png',
              backgroundColor: Color.fromRGBO(255, 222, 221, 1),
              title: 'Бьюти',
              subtitle: 'Салоны красоты и товары'),
          const SizedBox(height: 20),
          const Text(
            'Скоро в Malina',
            textAlign: TextAlign.start,
            style: TextStyle(
              fontSize: 17,
              fontWeight: FontWeight.w500,
            ),
          ),
          const SizedBox(height: 10),
          SizedBox(
            width: 390,
            height: 90,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: listOfBoxes.length,
              itemBuilder: (context, index) {
                String key = listOfBoxes.keys.elementAt(index);
                return Container(
                  padding: const EdgeInsets.all(0),
                  width: 90,
                  height: 90,
                  child: Card(
                    shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(10),
                      ),
                    ),
                    color: listOfBoxes[key],
                    child: Align(
                        alignment: Alignment.bottomCenter,
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 10, vertical: 5),
                          child: Text(
                            key,
                            style: const TextStyle(
                                fontSize: 12, fontWeight: FontWeight.w400),
                          ),
                        )),
                  ),
                );
              },
            ),
          )
        ],
      ),
    );
  }
}

class HomeBanner extends StatefulWidget {
  final String imgPath;
  final Color backgroundColor;
  final String title;
  final String subtitle;
  const HomeBanner({
    super.key,
    required this.imgPath,
    required this.title,
    required this.subtitle,
    required this.backgroundColor,
  });

  @override
  State<HomeBanner> createState() => HomeBannerState();
}

class HomeBannerState extends State<HomeBanner> {
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {},
      child: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              boxShadow: const [
                BoxShadow(
                  color: Color.fromRGBO(95, 103, 115, 0.1),
                  blurRadius: 20,
                  offset: Offset(0, 2), // changes position of shadow
                ),
              ],
              borderRadius: const BorderRadius.all(Radius.circular(12)),
              color: widget.backgroundColor,
            ),
            child: ClipRRect(
              borderRadius: const BorderRadius.all(Radius.circular(12)),
              child: Image.asset(
                widget.imgPath,
              ),
            ),
          ),
          Align(
            alignment: Alignment.topLeft,
            child: Padding(
              padding: const EdgeInsets.only(left: 17, top: 23),
              child: SizedBox(
                width: 120,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      widget.title,
                      textAlign: TextAlign.start,
                      maxLines: 2,
                      style: const TextStyle(
                        fontSize: 22,
                        color: Colors.black,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    Text(
                      widget.subtitle,
                      style: const TextStyle(
                        fontSize: 16,
                        color: Colors.black,
                        fontWeight: FontWeight.w300,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
