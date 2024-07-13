import 'package:ecommerce_app/Admin/ProductPages/ProductDetailCard.dart';
import 'package:ecommerce_app/FirebaseCruds/CategoryDelete.dart';
import 'package:ecommerce_app/widgets/DialogBoxes/DialogBox.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ListTileWidget extends StatelessWidget {
  final String imageUrl;
  final String title,MainCategory;
  final IconData icon;
  final VoidCallback onIconPressed;

  const ListTileWidget({
    Key? key,
    required this.imageUrl,
    required this.title,
    required this.icon,
    required this.onIconPressed,
    required this.MainCategory
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    return InkWell(
      onTap: (){
        Get.to(
          ProductDetailsCard(
              MainCategory: this.MainCategory,
              SubCategory: this.title,
          ),
        );
      },
      child: Card(
        margin: EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
        elevation: 8.0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20.0),
        ),
        child: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [Colors.lightBlueAccent, Colors.blueAccent],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
            borderRadius: BorderRadius.circular(20.0),
          ),
          child: Padding(
            padding: EdgeInsets.all(screenWidth * 0.03),
            child: Row(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(25.0),
                  child: Container(
                    width: 60.0,
                    height: 60.0,
                    decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black26,
                          blurRadius: 8.0,
                          offset: Offset(2, 2),
                        ),
                      ],
                    ),
                    child: Image.network(
                      imageUrl,
                      width: 60.0,
                      height: 60.0,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                SizedBox(width: screenWidth * 0.05),
                Expanded(
                  child: Text(
                    title,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20.0,
                      color: Colors.white,
                      shadows: [
                        Shadow(
                          blurRadius: 10.0,
                          color: Colors.black45,
                          offset: Offset(2, 2),
                        ),
                      ],
                    ),
                  ),
                ),
                IconButton(
                  icon: Icon(icon, color: Colors.white),
                  onPressed: onIconPressed,
                  splashRadius: 24.0,
                ),
                IconButton(
                  icon: Icon(Icons.delete, color: Colors.red),
                  onPressed: (){
                    Get.dialog(ConfirmDialog(
                      title: 'Delete Category',
                      content: 'Warning:All Data Inside this Category will be Deleted',
                      confirmText: 'Delete',
                      cancelText: 'Cancel',
                      confirmColor: Colors.red,
                      cancelColor: Colors.green,
                      onConfirm: (){
                        deleteSubCategory(this.MainCategory, this.title);
                        Get.back();
                      },
                    ),
                    );
                  },
                  splashRadius: 24.0,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}