import 'package:finalmobileapp_630710657/repositories/Pss_repository.dart';
import 'package:flutter/material.dart';
import '../../models/review.dart';
import 'Review_list.dart';

class ReviewPage extends StatefulWidget {
  static const routeName = '/review';

  const ReviewPage({super.key});

  @override
  State<ReviewPage> createState() => _ReviewPageState();
}

class _ReviewPageState extends State<ReviewPage> {
  List<Reviews>? _reviews;
  var _isLoading = false;
  String? _errorMessage;

  @override
  void initState() {
    super.initState();
    getReviews();
  }

  getReviews() async {
    setState(() {
      _isLoading = true;
      _errorMessage = null;
    });

    await Future.delayed(Duration(seconds: 2)); //โหลดหน้าเว็บ

    try {
      var reviews = await PssRepository().getReviews();
      debugPrint('Number of reviews: ${reviews.length}');

      setState(() {
        _reviews = reviews;
      });
    } catch (e) {
      setState(() {
        _errorMessage = e.toString();
      });
    } finally {
      setState(() {
        _isLoading = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    buildLoadingOverlay() => Container(
        color: Colors.black.withOpacity(0.2),
        child: Center(child: CircularProgressIndicator()));

    buildError() => Center(
        child: Padding(
            padding: const EdgeInsets.all(40.0),
            child:
            Column(mainAxisAlignment: MainAxisAlignment.center, children: [
              Text(_errorMessage ?? '', textAlign: TextAlign.center),
              SizedBox(height: 32.0),
              ElevatedButton(onPressed: getReviews, child: Text('Retry'))
            ])));

    buildList() => ListView.builder(
        itemCount: _reviews!.length,
        itemBuilder: (ctx, i) {
          Reviews reviewlist = _reviews![i];
          return ReviewsList(reviewlist: reviewlist);
        });

    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.amberAccent,
          toolbarHeight: 100,
          title: Row(
            children: [
              Text(
                'Review',
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
        body:Stack(
          children: [
            if(_reviews?.isNotEmpty ?? false) buildList(),
            if (_errorMessage != null) buildError(),
            if (_isLoading) buildLoadingOverlay(),
          ],
        )
    );
  }
}