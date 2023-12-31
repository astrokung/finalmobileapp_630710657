import 'dart:convert';

import '../models/review.dart';
import '../sevices/api_caller.dart';

class PssRepository {

  Future<List<Reviews>> getReviews() async{
    try {
      var result = await ApiCaller().get('reviews');
      List list = jsonDecode(result);
      List<Reviews> reviewList = list.map((item) => Reviews.fromJson(item)).toList();
      return reviewList;
    }catch(e){
      //TODO:
      rethrow;
    }
  }

  Future<void> addReview({required String name, required double rating, required String review}) async {
    try {
      await ApiCaller().post('reviews', params: {'name': name, 'rating': rating, 'review': review});
    } catch (e) {
      // TODO:
      rethrow;
    }
  }
}
