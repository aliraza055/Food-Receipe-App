import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:random_string/random_string.dart';



class CategoryModel {
  String image;
  String name;

  CategoryModel({required this.image, required this.name});

  Map<String, dynamic> toMap() {
    return {
      "image": image,
      "name": name,
    };
  }

  static List<CategoryModel> sendData() {
    return [
      CategoryModel(
          image:
              'https://res.cloudinary.com/dhob4di7g/image/upload/v1755888020/bed_1_lhlmn9.png',
          name: 'Room'),
      CategoryModel(
          image:
              'https://res.cloudinary.com/dhob4di7g/image/upload/v1755949318/hotel_h1dcex.png',
          name: 'Hotel'),
      CategoryModel(
          image:
              'https://res.cloudinary.com/dhob4di7g/image/upload/v1755949319/resort_dxumfn.png',
          name: "Resort"),
      CategoryModel(
          image:
              'https://res.cloudinary.com/dhob4di7g/image/upload/v1755949317/bunk-bed_w3u4o6.png',
          name: "Hostel"),
      CategoryModel(
          image:
              'https://res.cloudinary.com/dhob4di7g/image/upload/v1755949317/apartment_-_Copy_-_Copy_xpuxk5.png',
          name: "Apartment"),
    ];
  }
}
class SendData{
    Future<void> setData() async {
  final categories = CategoryModel.sendData();
  for (var category in categories) {
    String id = randomAlphaNumeric(10);
    await FirebaseFirestore.instance
        .collection("categories") // better naming
        .doc(id)
        .set(category.toMap());
  }
}
}