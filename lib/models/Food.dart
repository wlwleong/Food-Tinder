class Food {
  String name;
  String? description;
  String restaurant;
  double price;
  String imageURL;
  String? googleMapsLink;
  String? foodPandaLink;
  List<String>? tags;

  Food({
    required this.name,
    this.description,
    required this.restaurant,
    required this.price,
    required this.imageURL,
    this.googleMapsLink,
    this.foodPandaLink,
    this.tags,
  });
}

List<Food> foodItems = [
  Food(
      name: 'Kimchi Jigae 김치찌개',
      description: 'Delicious kimchi jjigae with fatty pork, yumyum',
      restaurant: 'Gong Korean Charcoal BBQ',
      price: 28.0,
      imageURL:
          'https://www.koreanbapsang.com/wp-content/uploads/2014/03/DSC5897-2.jpg',
      googleMapsLink: 'https://goo.gl/maps/JBbuv8UxuESza7zz7',
      foodPandaLink: 'https://www.foodpanda.my/restaurant/z1v6/gong-korean-charcoal-bbq',
      tags: ['Korean', 'Spicy']),
  Food(
    name: 'Gimbap 김밥',
    description: 'Tasty seaweed rolls!',
    restaurant: 'Gong Korean Charcoal BBQ',
    price: 22.0,
    imageURL:
        'https://lh3.googleusercontent.com/proxy/EKfayYM4axeVjsNfbUzqYulW5B8auLFtH5pvvmWROZBM1WlhlY1dajS4-RwbBrEHuw2Hrvkc6-faDNm-iRnJadf9Fiv4QnFAHcaj-4AuzafX8u30XRyOTY1y1UxEytPNn1ONvgnsYKSHszJ-j_SDsmQgkAP4ekaHWOmbhpVBoP0F2bsHR14yvB9Hlzd3vffl',
    googleMapsLink: 'https://goo.gl/maps/JBbuv8UxuESza7zz7',
    foodPandaLink:
        'https://www.foodpanda.my/restaurant/z1v6/gong-korean-charcoal-bbq',
    tags: ['Korean'],
  ),
  Food(
    name: 'Beef Bulgogi 불고기',
    restaurant: 'Gong Korean Charcoal BBQ',
    price: 28.0,
    imageURL:
        'https://www.carolinescooking.com/wp-content/uploads/2018/07/beef-bulgogi-photo.jpg',
    googleMapsLink: 'https://goo.gl/maps/JBbuv8UxuESza7zz7',
    foodPandaLink:
        'https://www.foodpanda.my/restaurant/z1v6/gong-korean-charcoal-bbq',
    tags: ['Korean'],
  ),
  Food(
    name: 'Spicy Toppokki',
    restaurant: 'Dubuyo KK Times Square',
    price: 17.85,
    imageURL:
        'https://www.koreanbapsang.com/wp-content/uploads/2018/09/DSC3132-3-3.jpg',
    googleMapsLink: 'https://goo.gl/maps/VVLBK1ETn26zPv4a7',
    foodPandaLink:
        'https://www.foodpanda.my/restaurant/q7kw/dubuyo-kk-times-square',
    tags: ['Korean', 'Spicy'],
  ),
  Food(
    name: 'Jajangmyeon',
    restaurant: 'Dubuyo KK Times Square',
    price: 15.15,
    imageURL:
        'https://christieathome.com/wp-content/uploads/2021/03/Jajangmyeon3.jpg',
    googleMapsLink: 'https://goo.gl/maps/VVLBK1ETn26zPv4a7',
    foodPandaLink:
        'https://www.foodpanda.my/restaurant/q7kw/dubuyo-kk-times-square',
    tags: ['Korean'],
  ),
  Food(
    name: 'Buldak Wings',
    restaurant: 'Dubuyo KK Times Square',
    price: 20.15,
    imageURL:
        'https://lh3.googleusercontent.com/-aZdbK9IPdHA/VMAWgBqOr_I/AAAAAAAABGw/jClN90Wm3RE/s640/blogger-image--1971795229.jpg',
    googleMapsLink: 'https://goo.gl/maps/VVLBK1ETn26zPv4a7',
    foodPandaLink:
        'https://www.foodpanda.my/restaurant/q7kw/dubuyo-kk-times-square',
    tags: ['Korean', 'Spicy'],
  ),
  Food(
      name: 'Pumpkin ABC',
      description: 'Tasty yet healthy!',
      restaurant: 'Damai ABC',
      price: 8.50,
      imageURL:
          'https://scontent.fkul10-1.fna.fbcdn.net/v/t31.18172-8/21768739_1284401485022463_4917458402294380047_o.jpg?_nc_cat=110&ccb=1-3&_nc_sid=9267fe&_nc_ohc=bsPFiU1iNQcAX_jMJ5v&_nc_ht=scontent.fkul10-1.fna&oh=6994fc32d25a54c4cb3762f40868318e&oe=60F854AF',
      googleMapsLink: 'https://goo.gl/maps/Av8XtXJzeq29bEDk7',
      foodPandaLink: 'https://www.foodpanda.my/restaurant/h3la/damai-abc',
      tags: ['Dessert']),
  Food(
    name: 'Chicken Teriyaki Don',
    restaurant: 'Azuma Sushi (City Mall)',
    price: 13.3,
    imageURL: 'https://sasayamaindia.com/wp-content/uploads/2019/12/d9.jpg',
    googleMapsLink: 'https://goo.gl/maps/Pe5USgJS4VPmYdZDA',
    foodPandaLink:
        'https://www.foodpanda.my/restaurant/t6cn/azuma-sushi-city-mall',
    tags: ['Japanese'],
  ),
  Food(
    name: 'Soft Shell Crab Maki',
    restaurant: 'Azuma Sushi (City Mall)',
    price: 17.8,
    imageURL:
        'http://lh6.ggpht.com/r2v8RCLlXWznBbegX7T7Nxe3gTbhp8jNtIoAOKIkjUxJCEquc9iWPwOPzIm-jKiJ5jWOGbKSi3yAok3xxrpgiL13TA=s800',
    googleMapsLink: 'https://goo.gl/maps/Pe5USgJS4VPmYdZDA',
    foodPandaLink:
        'https://www.foodpanda.my/restaurant/t6cn/azuma-sushi-city-mall',
    tags: ['Japanese'],
  ),
  Food(
    name: 'Aki',
    restaurant: 'Azuma Sushi (City Mall)',
    price: 21.12,
    imageURL:
        'https://www.ohmyfoodrecipes.com/wp-content/uploads/2019/10/gimbap-korean-sushi-rolls-stack.jpg',
    googleMapsLink: 'https://goo.gl/maps/Pe5USgJS4VPmYdZDA',
    foodPandaLink:
        'https://www.foodpanda.my/restaurant/t6cn/azuma-sushi-city-mall',
    tags: ['Japanese'],
  ),
];
