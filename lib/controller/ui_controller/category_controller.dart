//
// import 'package:get/get.dart';
//
// class CategoryController extends GetxController {
//   static CategoryController get instance => Get.find();
//
//   final _categoryRepository = Get.put(CategoryRepository());
//   RxList<CategoryModel> allCategories = <CategoryModel>[].obs;
//   RxList<CategoryModel> featuredCategories = <CategoryModel>[].obs;
//
//   @override
//   void onInit() {
//     super.onInit();
//     fetchCategories();
//   }
//
//   Future<void> fetchCategories() async {
//     final categories = await _categoryRepository.getAllCategories();
//     allCategories.assignAll(categories);
//
//     featuredCategories.assignAll(allCategories
//         .where((category) => category.isFeatured && category.parentId.isEmpty).take(8).toList());
//     update();
//   }
// }
