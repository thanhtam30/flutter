class Movies {
  final String id;
   final String imageUrl;
final String city;
final  String country;
final String title;
final  String year;
  Movies({
    this.id,
    this.imageUrl,
    this.city,
    this.country,
    this.title,
    this.year,
  });
}
List<Movies> movies= [
  Movies(
    id:'01',
    imageUrl: 'assets/images/venice.jpg',
    city: 'Venice',
    country: 'Italy',
    title: 'Visit Venice for an amazing and unforgettable adventure.',
    year: '2020',
  ),
  Movies(
    id:'02',
    imageUrl: 'assets/images/paris.jpg',
    city: 'Paris',
    country: 'France',
    title: 'Visit Paris for an amazing and unforgettable adventure.',
    year: '1999',
  ),
  Movies(
    id:'03',
    imageUrl: 'assets/images/newdelhi.jpg',
    city: 'New Delhi',
    country: 'India',
    title: 'Visit New Delhi for an amazing and unforgettable adventure.',
    year: '2001',
  ),
  Movies(
    id:'04',
    imageUrl: 'assets/images/saopaulo.jpg',
    city: 'Sao Paulo',
    country: 'Brazil',
    title: 'Visit Sao Paulo for an amazing and unforgettable adventure.',
    year: '1997',
  ),
  Movies(
    id:'05',
    imageUrl: 'assets/images/newyork.jpg',
    city: 'New York City',
    country: 'United States',
    title: 'Visit New York for an amazing and unforgettable adventure.',
    year: '2010',
  ),
];
