import 'package:flutter/material.dart';



final List<String> ImageContent = [
  'https://ichip.ru/images/cache/2023/9/19/widen_960_crop_956_700_0_0_q90_786652_83141802c768a66bee751887c.jpeg',
  'https://ichip.ru/images/cache/2023/9/19/widen_960_crop_956_700_0_0_q90_786672_d3c8a84c7a371b11879943bbd.jpeg',
  'https://ichip.ru/images/cache/2023/9/19/widen_960_crop_956_700_0_0_q90_786692_1b2ed99411219d0700cdc78e8.jpeg',
  'https://ichip.ru/images/cache/2023/9/19/widen_960_crop_956_700_0_0_q90_786702_4d2eaf2687ef5dfbfa7b38498.jpeg',
  'https://ichip.ru/images/cache/2023/9/19/widen_960_crop_956_700_0_0_q90_786682_70f377f997cab99a559d25f40.jpeg',
  'https://ichip.ru/images/cache/2023/9/19/widen_960_crop_956_700_0_0_q90_786712_10db6a940bfaaff6760227108.jpeg',
  'https://ichip.ru/images/cache/2023/9/19/widen_960_crop_956_700_0_0_q90_786722_95174dbc8babfd6872a4a3a90.jpeg',
  'https://ichip.ru/images/cache/2023/9/19/widen_960_crop_956_700_0_0_q90_786732_31de005eaec2222b5dcbd0bed.jpeg',
  'https://ichip.ru/images/cache/2023/9/19/widen_960_crop_956_700_0_0_q90_786742_4595e8d04e5287300cb47fb30.jpeg',
  'https://ichip.ru/images/cache/2023/9/19/widen_960_crop_956_700_0_0_q90_786752_f5f9d59907b9856b4b26c7561.jpeg',
  'https://ichip.ru/images/cache/2023/9/19/widen_960_crop_956_700_0_0_q90_786762_a656b7ba4b823b959e440f99c.jpeg',
];

final List<String> TextContent = [
  'iPhone',
  'iPhone 3G',
  'iPhone 3GS',
  'iPhone 4',
  'iPhone 4S',
  'iPhone 5',
  'iPhone 5C',
  'iPhone 5S',
  'iPhone 6/6Plus',
  'iPhone 6S/6SPlus',
  'iPhone SE',
];

final List<double> PriceContent = [1499.93, 1990.36, 1506.80, 2990.74, 5218.52, 2976.76, 1455.52, 2496.43, 1993.50, 2913.61, 1957.11];

final List<String> productDescription = [
  'Невероятная мощь в компактном размере Новый корпус, новые возможности камеры, более мощный процессор и разъём USB-C – это лишь основные нововведения iPhone 15 Pro. Компактный, но мощный и функциональный, он станет идеальным гаджетом для любых задач и отличным инструментом для покорения соцсетей и видеохостингов. Всех, кто пропустил 14-е поколение, ждут дополнительные приятные изменения в виде таких фишек как Always-On, динамический остров и 48-Мегапиксельная основная камера, а улучшенная автономность позволит реже думать о зарядке.',
  'жёсткий, полужёсткий, полумягкий или мягкий предмет мебели со спинкой, предназначенный для сидения одного и/или нескольких человек.',
  'красная подошва туфель, в моделях обуви использует экзотические виды кожи, стразы Swarovski, кружево ручной работы.',
  '2',
  'Это крупный лифтбек с красивыми пропорциями, длинной колесной базой (3005 мм), колесами диаметром 22 дюйма и низким коэффициентом аэродинамического сопротивления Cx (0,23). Длина машины — 4970 мм, ширина — 1999 мм, высота — 1560 мм. Со сложенными задними сиденьями образуется багажный отсек объемом 2144 литра.',
  'многофункциональный предмет интерьера, который позволит удобно разместить различные аксессуары: наушники, декор, книги, игрушки, рамки с фотографиями, часы, цветочные горшки, сумки и многое другое. Конструкция предусматривает наличие горизонтальных полок и специальных держателей. Благодаря минималистичному дизайну и нейтральному цветовому решению модель прекрасно вписывается в любое оформление комнаты. Настенный монтаж обеспечивает компактное размещение. Практичные материалы гарантируют изделию износостойкость и долгий срок службы.',
  'Новый BMW M5 CS оснащен бензиновым двигателем V8 M TwinPower Turbo объемом 4,4 л, который развивает 635 л.с. (на 10 л.с. больше, чем M5 Competition) и располагает крутящим моментом 750 Нм. Силовой агрегат сочетается со спортивной автоматической коробкой передач Steptronic и и эффективным полным приводом M xDrive с активным задним дифференциалом М. Они обеспечивают M5 CS лучшую в классе динамику, недоступную для конкурентов.',
  '1',
  'это стильные, удобные и качественные наушники с беспроводным подключением. Модель имеет функцию активного шумоподавления и использует чип Apple H1, который гарантирует минимальную задержку при прослушивании музыки, а также обработку внешних шумов в реальном времени.',
  'Клавиатура HyperX Alloy Core RGB обладает полноразмерной раскладкой со 114 клавишами. В основе клавиш используется мембранный механизм, который обеспечивает плавный и четкий отклик при низком уровне шума. Для повышения удобства игры реализована светодиодная подсветка с многоцветной палитрой RGB.',
  'Современенный и крутой кожанный чехол на iPhone 14. Премиальная кожа прямо с Американского буйвола - Андрей.',
  'Экологичская зубная щетка для чистки унитаза',
];


class ProductDetailsPage extends StatelessWidget {
  final String ImageContent;
  final String TextContent;
  final String productDescription;

  ProductDetailsPage(
      {required this.ImageContent, required this.TextContent, required this.productDescription});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(TextContent),
        backgroundColor: Color(0xffB54426b),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 300,
              width: double.infinity,
              child: Image.network(
                ImageContent,
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(height: 20),
            Text(
              TextContent,
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            Text(
              productDescription,
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                ElevatedButton(onPressed: () {}, child: Text('Liked')
                ),
                ElevatedButton(onPressed: () {}, child: Text('Cart')
                ),
                ElevatedButton(onPressed: () {}, child: Text('Buy in one click')
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}