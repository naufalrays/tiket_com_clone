import 'package:flutter/material.dart';
import 'package:tiket_com_clone/models/flight_card_models.dart';
import 'package:tiket_com_clone/models/todo_card_models.dart';

class HomeViewModels extends ChangeNotifier {
  List allDiscountData = [
    "assets/images/discount_1.png",
    "assets/images/discount_2.png",
  ];

  List airplaneDiscountData = [
    "assets/images/discount_3.png",
  ];
  List hotelDiscountData = [
    "assets/images/discount_4.png",
  ];
  List villaDiscountData = [
    "assets/images/discount_5.png",
    "assets/images/discount_6.png",
  ];
  List todoDiscountData = [
    "assets/images/discount_7.png",
    "assets/images/discount_8.png",
  ];
  List trainDiscountData = [
    "assets/images/discount_9.png",
    "assets/images/discount_10.png",
  ];
  List rentCarDiscountData = [
    "assets/images/discount_9.png",
    "assets/images/discount_11.png",
  ];
  List airportPickUpDiscountData = [
    "assets/images/discount_9.png",
    "assets/images/discount_12.png",
  ];

  List<TodoCardModels> atractionTodoData = [
    TodoCardModels(
      image: "assets/images/todo_1.png",
      header: "Pintu Gerbang Utama Ancol Taman Impian",
      location: "Pademangan, Jakarta Utara",
      rating: "4.2",
      review: "13176",
      // normalPrice: "30.500",
      discountPrice: "21.000",
    ),
    TodoCardModels(
      image: "assets/images/todo_2.png",
      header: "Tiket Dunia Fantasi (Dufan) Ancol",
      location: "Pademangan, Jakarta Utara",
      rating: "4.4",
      review: "8188",
      normalPrice: "189.500",
      discountPrice: "183.815",
    ),
    TodoCardModels(
      image: "assets/images/todo_3.png",
      header: "Jakarta Aquarium & Safari - tiket.com Exclusive",
      location: "Pademangan, Jakarta Utara",
      rating: "4.1",
      review: "5646",
      normalPrice: "115.000",
      discountPrice: "115.550",
    ),
    TodoCardModels(
      image: "assets/images/todo_4.png",
      header: "Taman Safari Indonesia Bogor - tiket.com Exclusive",
      location: "Cisarua, Bogor",
      rating: "4.3",
      review: "5583",
      // normalPrice: "30.500",
      discountPrice: "200.000",
    ),
  ];
  List<TodoCardModels> hotelTodoData = [
    TodoCardModels(
      image: "assets/images/todo_5.png",
      header: "Pintu Gerbang Utama Ancol Taman Impian",
      location: "Pademangan, Jakarta Utara",
      rating: "2.1",
      review: "12031",
      // normalPrice: "30.500",
      discountPrice: "21.000",
    ),
    TodoCardModels(
      image: "assets/images/todo_6.png",
      header: "Tiket Dunia Fantasi (Dufan) Ancol",
      location: "Pademangan, Jakarta Utara",
      rating: "4.4",
      review: "8169",
      normalPrice: "189.500",
      discountPrice: "183.815",
    ),
    TodoCardModels(
      image: "assets/images/todo_7.png",
      header: "Pintu Gerbang Utama Ancol Taman Impian",
      location: "Pademangan, Jakarta Utara",
      rating: "2.1",
      review: "12031",
      // normalPrice: "30.500",
      discountPrice: "21.000",
    ),
  ];
  List<TodoCardModels> homesTodoData = [
    TodoCardModels(
      image: "assets/images/todo_8.png",
      header: "Bobocabin Cikole",
      location: "Lembang, Bandung",
      rating: "4.4",
      review: "461",
      normalPrice: "1.255.309",
      discountPrice: "1.014.800",
    ),
    TodoCardModels(
      image: "assets/images/todo_9.png",
      header: "Bobocabin Kintamani",
      location: "Kintamani, Bangli",
      rating: "4.4",
      review: "182",
      normalPrice: "873.501",
      discountPrice: "693.384",
    ),
    TodoCardModels(
      image: "assets/images/todo_10.png",
      header: "Bobocabin Padusun",
      location: "Pacet, Mojokerto",
      rating: "4.6",
      review: "29",
      normalPrice: "696.000",
      discountPrice: "563.760",
    ),
  ];
  List<TodoCardModels> eventTodoData = [
    TodoCardModels(
      image: "assets/images/todo_11.png",
      header: "Tiket Dunia Fantasi (Dufan) Ancol",
      location: "Pademangan, Jakarta Utara",
      rating: "4.4",
      review: "8169",
      normalPrice: "189.500",
      discountPrice: "183.815",
    ),
    TodoCardModels(
      image: "assets/images/todo_12.png",
      header: "Tiket Dunia Fantasi (Dufan) Ancol",
      location: "Pademangan, Jakarta Utara",
      rating: "4.4",
      review: "8169",
      normalPrice: "189.500",
      discountPrice: "183.815",
    ),
  ];
  List<TodoCardModels> playgroundTodoData = [
    TodoCardModels(
      image: "assets/images/todo_1.png",
      header: "Pintu Gerbang Utama Ancol Taman Impian",
      location: "Pademangan, Jakarta Utara",
      rating: "2.1",
      review: "12031",
      // normalPrice: "30.500",
      discountPrice: "21.000",
    ),
    TodoCardModels(
      image: "assets/images/todo_2.png",
      header: "Tiket Dunia Fantasi (Dufan) Ancol",
      location: "Pademangan, Jakarta Utara",
      rating: "4.4",
      review: "8169",
      normalPrice: "189.500",
      discountPrice: "183.815",
    ),
  ];
  List<TodoCardModels> tourTodoData = [
    TodoCardModels(
      image: "assets/images/todo_1.png",
      header: "Pintu Gerbang Utama Ancol Taman Impian",
      location: "Pademangan, Jakarta Utara",
      rating: "2.1",
      review: "12031",
      // normalPrice: "30.500",
      discountPrice: "21.000",
    ),
    TodoCardModels(
      image: "assets/images/todo_2.png",
      header: "Tiket Dunia Fantasi (Dufan) Ancol",
      location: "Pademangan, Jakarta Utara",
      rating: "4.4",
      review: "8169",
      normalPrice: "189.500",
      discountPrice: "183.815",
    ),
  ];
  List<TodoCardModels> beautyAndFitnessTodoData = [
    TodoCardModels(
      image: "assets/images/todo_1.png",
      header: "Pintu Gerbang Utama Ancol Taman Impian",
      location: "Pademangan, Jakarta Utara",
      rating: "2.1",
      review: "12031",
      // normalPrice: "30.500",
      discountPrice: "21.000",
    ),
    TodoCardModels(
      image: "assets/images/todo_2.png",
      header: "Tiket Dunia Fantasi (Dufan) Ancol",
      location: "Pademangan, Jakarta Utara",
      rating: "4.4",
      review: "8169",
      normalPrice: "189.500",
      discountPrice: "183.815",
    ),
  ];
  List<TodoCardModels> otherTodoData = [
    TodoCardModels(
      image: "assets/images/todo_1.png",
      header: "Pintu Gerbang Utama Ancol Taman Impian",
      location: "Pademangan, Jakarta Utara",
      rating: "2.1",
      review: "12031",
      // normalPrice: "30.500",
      discountPrice: "21.000",
    ),
    TodoCardModels(
      image: "assets/images/todo_2.png",
      header: "Tiket Dunia Fantasi (Dufan) Ancol",
      location: "Pademangan, Jakarta Utara",
      rating: "4.4",
      review: "8169",
      normalPrice: "189.500",
      discountPrice: "183.815",
    ),
  ];

  List<TodoFlightModels> domesticDealsData = [
    TodoFlightModels(
      image: "assets/images/destination_bali.jpeg",
      starting: "Jakarta",
      destination: "Denpasar Bali",
      departureDate: "11 Feb 2023",
      plane: "Lion Air",
      planeImages: "assets/images/lion_air_airlines.png",
      planeClass: "Ekonomi",
      discountPrice: "675.910",
    ),
    TodoFlightModels(
      image: "assets/images/destination_surabaya.jpeg",
      starting: "Jakarta",
      destination: "Surabaya",
      departureDate: "8 Feb 2023",
      plane: "Citilink",
      planeImages: "assets/images/citilink_airlines.png",
      planeClass: "Ekonomi",
      discountPrice: "667.001",
    ),
    TodoFlightModels(
      image: "assets/images/destination_makassar.jpeg",
      starting: "Jakarta",
      destination: "Makassar",
      departureDate: "11 Feb 2023",
      plane: "Sriwijaya Air",
      planeImages: "assets/images/sriwijaya_airlines.png",
      planeClass: "Ekonomi",
      discountPrice: "922.720",
    ),
  ];
  List<TodoFlightModels> intlDealsData = [
    TodoFlightModels(
      image: "assets/images/destination_tokyo.jpeg",
      starting: "Jakarta",
      destination: "Tokyo",
      departureDate: "22 Mei 2023",
      arrivalDate: "30 Mei 2023",
      plane: "Philippine Airlines",
      planeImages: "assets/images/philippine_airlines.png",
      planeClass: "Ekonomi",
      discountPrice: "5.996.800",
    ),
    TodoFlightModels(
      image: "assets/images/destination_osaka.jpeg",
      starting: "Jakarta",
      destination: "Osaka",
      departureDate: "14 Mei 2023",
      arrivalDate: "22 Mei 2023",
      plane: "Singapore Airlines",
      planeImages: "assets/images/singapore_airlines.png",
      planeClass: "Ekonomi",
      discountPrice: "10.425.512",
    ),
    TodoFlightModels(
      image: "assets/images/destination_singapore.jpg",
      starting: "Jakarta",
      destination: "Singapore",
      departureDate: "1 Maret 2023",
      arrivalDate: "12 Maret 2023",
      plane: "AirAsia Indonesia",
      planeImages: "assets/images/air_asia_airlines.png",
      planeClass: "Ekonomi",
      discountPrice: "2.013.865",
    ),
  ];
  List<TodoFlightModels> intlPremiumDealsData = [
    TodoFlightModels(
      image: "assets/images/destination_tokyo.jpeg",
      starting: "Jakarta",
      destination: "Tokyo",
      departureDate: "14 Mei 2023",
      arrivalDate: "22 Mei 2023",
      plane: "Philippine Airlines",
      planeImages: "assets/images/philippine_airlines.png",
      planeClass: "Bisnis",
      discountPrice: "15.660.900",
    ),
    TodoFlightModels(
      image: "assets/images/destination_osaka.jpeg",
      starting: "Jakarta",
      destination: "Osaka",
      departureDate: "29 April 2023",
      arrivalDate: "10 Mei 2023",
      plane: "Singapore Airlines",
      planeImages: "assets/images/singapore_airlines.png",
      planeClass: "Bisnis",
      discountPrice: "32.445.824",
    ),
    TodoFlightModels(
      image: "assets/images/destination_singapore.jpg",
      starting: "Jakarta",
      destination: "Singapore",
      departureDate: "1 Maret 2023",
      arrivalDate: "20 Maret 2023",
      plane: "AirAsia Indonesia",
      planeImages: "assets/images/air_asia_airlines.png",
      planeClass: "Bisnis",
      discountPrice: "8.932.990",
    ),
  ];
}
