import 'dart:convert';
import 'dart:io';

import 'package:cloudinary_public/cloudinary_public.dart';
import 'package:flutter/material.dart';

import 'package:http/http.dart' as http;
import 'package:recipibook/models/categories.dart';

import '../../../common/errorhanding.dart';
import '../../../constants/global_variables.dart';
import '../../../constants/utils.dart';

class AddRecipiServices {
  void uploadRecipi({
    required BuildContext context, // to display the errors
    required String title,
    required String affordability,
    required String complexity,
    required List<File> images,
    required String category,
    required String ingredients,
    required String steps,
    required bool isvegetarian,
    required bool isglutenefree,
    required String duration,
  }) async {
    List<String> imageUrls = [];
    try {
      final cloudinary = CloudinaryPublic('dszlcwinr', 'dsrcw44y');

      for (int i = 0; i < images.length; i++) {
        CloudinaryResponse res = await cloudinary.uploadFile(
            CloudinaryFile.fromFile(images[i].path,
                folder: "RecipiBook/$title"));

        imageUrls.add(res.secureUrl);
      }

      Categories cate = Categories(
          categories: category,
          title: title,
          affordability: affordability,
          complexity: complexity,
          imageUrl: imageUrls,
          duration: duration,
          ingredients: ingredients,
          steps: steps,
          isGlutenFree: isglutenefree,
          isVegetarian: isvegetarian);

      http.Response res = await http.post(Uri.parse('$uri/admin/add-product'),
          headers: <String, String>{
            'content-Type': 'application/json; charset=UTF-8',
            // ignore: use_build_context_synchronously
            /*'x-auth-token':
            // ignore: use_build_context_synchronously
            Provider.of<UserProvider>(context, listen: false).user.token,*/
          },
          body: jsonEncode(cate));

      httpErrorHandle(
          context: context,
          response: res,
          onSucess: () {
            showSnakeBar(context, 'Product Added succesfully');

            Navigator.pop(context);
          });
    } catch (e) {
      showSnakeBar(context, e.toString());
    }
  }
}
