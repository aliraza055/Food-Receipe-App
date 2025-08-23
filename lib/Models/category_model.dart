class CategoryModel {
  String image;
  String name;
  CategoryModel({required this.image, required this.name});
static  List<CategoryModel> sendData(){
   return [
    CategoryModel(image: 'https://res.cloudinary.com/dhob4di7g/image/upload/v1755888020/bed_1_lhlmn9.png', name: 'Room'),
   CategoryModel(image: 'https://res.cloudinary.com/dhob4di7g/image/upload/v1755949318/hotel_h1dcex.png', name: 'Hotel'),
   CategoryModel(image: '"https://res.cloudinary.com/dhob4di7g/image/upload/v1755949319/resort_dxumfn.png"', name: "resort"),
   CategoryModel(image: 'https://res.cloudinary.com/dhob4di7g/image/upload/v1755949317/bunk-bed_w3u4o6.png', name: "hostel"),
   CategoryModel(image: 'https://res.cloudinary.com/dhob4di7g/image/upload/v1755949317/apartment_-_Copy_-_Copy_xpuxk5.png', name: "Apartment")
   ];
  }
}