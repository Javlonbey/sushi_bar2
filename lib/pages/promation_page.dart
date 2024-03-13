import 'package:flutter/material.dart';
import 'package:dots_indicator/dots_indicator.dart';

class PromotionPage extends StatefulWidget {
  const PromotionPage({Key? key}) : super(key: key);

  @override
  _PromotionPageState createState() => _PromotionPageState();
}

class _PromotionPageState extends State<PromotionPage> {
  late PageController pageController;
  int pageLength = 2; // Замените на актуальное количество страниц
  double currentIndexPage = 0.0;

  List<String> imageUrls = [
    'assets/images/AK.jpg',
    'assets/images/LL.jpg',
  ];

  @override
  void initState() {
    super.initState();
    pageController = PageController();
    pageController.addListener(() {
      setState(() {
        currentIndexPage = pageController.page!;
      });
    });
  }

  void _showOrderNowDialog() {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text(
            'Sushi Rolls',
            style: TextStyle(
              color: Colors.grey[900],
              fontSize: 25,
              fontWeight: FontWeight.bold,
            ),
          ),
          content: Text(
            'Приложение не активно',
            style: TextStyle(
              color: Colors.grey[700],
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
                _showAppNotActiveContainer();
              },
              child: Text(
                'ok',
                style: TextStyle(
                  color: Colors.grey[700],
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        );
      },
    );
  }

  void _showAppNotActiveContainer() {
    // Здесь можете добавить логику показа контейнера "приложение не активно"
    print('Приложение не активно');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.only(right: 350),
            child: IconButton(
              icon: Icon(
                Icons.chevron_left,
                color: Colors.grey[700],
                size: 45,
              ),
              onPressed: () {
                Navigator.pop(context);
              },
              color: Colors.white,
            ),
          ),
          SizedBox(height: 70),
          SingleChildScrollView(
            child: Container(
              height: 370,
              child: PageView.builder(
                controller: pageController,
                itemCount: imageUrls.length,
                itemBuilder: (context, index) {
                  return Image.asset(
                    imageUrls[index],
                    height: 370,
                  );
                },
                scrollDirection: Axis.horizontal,
              ),
            ),
          ),
          SizedBox(height: 10),
          DotsIndicator(
            dotsCount: pageLength,
            position: currentIndexPage.toInt(),
            decorator: DotsDecorator(
              size: const Size.square(9.0),
              activeSize: const Size(18.0, 9.0),
              activeShape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(5.0),
              ),
            ),
          ),
          SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.only(left: 35, right: 30),
            child: Center(
              child: Text(
                'ВСЕМ СТУДЕНТАМ СКИДКА 15-20%по студенческому20% При самовывозе15% При доставке курьером',
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.grey[900],
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: Divider(
              color: Colors.grey[900],
              thickness: 1,
            ),
          ),
          SizedBox(height: 2),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 120.0),
            child: ElevatedButton(
              onPressed: _showOrderNowDialog,
              child: Text('Order Now'),
              style: ElevatedButton.styleFrom(
                primary: Color.fromARGB(255, 138, 60, 55),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                minimumSize: Size.fromHeight(45),
              ),
            ),
          ),
          SizedBox(height: 9),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: Divider(
              color: Colors.grey[900],
              thickness: 1,
            ),
          ),
          SizedBox(height: 9),
          Padding(
            padding: const EdgeInsets.only(left: 45, right: 35),
            child: Center(
              child: Text(
                'крокеты с лососем, бататом, рисом, хрустящей панировкой и спайси соусом, как Солнце и Сатурн. Это энергичность и собранность одновременно, это блюдо поможет держать фокус внимания на самом главном.Кондитерские изделия уместны не только на праздничном банкете, но и на повседневном столе. Чтобы полакомиться оригинальными сладостями не обязательно выходить из дома. Кафе «Нияма» предоставляет услугу по доставке десертов в Москве, радуя истинных гурманов необычным вкусом и креативным, презентабельным оформлением. Нежные нотки ванили и фруктовая композиция станут прекрасным завершением любого вечера. Почувствуйте всю феерию вкусов, заказав доставку еды по Москве прямо сейчас!.Десерты «Нияма» готовятся по традиционным японским рецептам, тонкости которых заключаются в необычной технологии. Изысканный вкус получен в результате комбинирования пряных специй со свежими ягодами и фруктами. Крем оставляет необычное послевкусие, которое обязательно захочется повторить. Заказать десерты на дом с доставкой можно в любое время, поэтому насладиться сладкими шедеврами реально как днем, так и ночью. Дарите любимым тепло и улыбки, а наши десерты станут дополнительным бонусом к позитивным моментам.',
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.grey[900],
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          SizedBox(height: 30),
        ],
      ),
    );
  }
}
