import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:ecommerce_app/widgets/OtherWidgets/Snakbar.dart';
import 'package:get/get.dart';

Future<void> deleteProduct(String mainCategoryName, String subCategoryName, String productId) async {
  await FirebaseFirestore.instance
      .collection('MainCategories')
      .doc(mainCategoryName)
      .collection('subcategories')
      .doc(subCategoryName)
      .collection('Products')
      .doc(productId)
      .delete();
  showSuccessSnackbar('Data deleted sucessfully');
  Get.back();
}


Future<void> deleteSubCategory(String mainCategoryName, String subCategoryName) async {
  await FirebaseFirestore.instance
      .collection('MainCategories')
      .doc(mainCategoryName)
      .collection('subcategories')
      .doc(subCategoryName)
      .delete();
  showSuccessSnackbar('Data deleted sucessfully');
  Get.back();
}