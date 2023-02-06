// ignore_for_file: public_member_api_docs, sort_constructors_first
class TodoCardModels {
  String image;
  String header;
  String location;
  String rating;
  String review;
  String? normalPrice;
  String discountPrice;
  TodoCardModels({
    required this.image,
    required this.header,
    required this.location,
    required this.rating,
    required this.review,
    this.normalPrice,
    required this.discountPrice,
  });
}
