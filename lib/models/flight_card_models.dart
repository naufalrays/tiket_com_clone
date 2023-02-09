// ignore_for_file: public_member_api_docs, sort_constructors_first
class TodoFlightModels {
  String image;
  String starting;
  String destination;
  String departureDate;
  String? arrivalDate;
  String plane;
  String planeImages;
  String planeClass;
  String? normalPrice;
  String discountPrice;
  TodoFlightModels({
    required this.image,
    required this.starting,
    required this.destination,
    required this.departureDate,
    this.arrivalDate,
    required this.plane,
    required this.planeImages,
    required this.planeClass,
    this.normalPrice,
    required this.discountPrice,
  });
}
