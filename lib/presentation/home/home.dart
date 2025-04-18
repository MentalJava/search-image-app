import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:search_image_app/presentation/component/image_card.dart';
import 'package:search_image_app/presentation/component/input_field.dart';
import 'package:search_image_app/presentation/home/home_view_model.dart';

class Home extends StatelessWidget {
  final HomeViewModel _homeViewModel;
  final TextEditingController textEditingController = TextEditingController();
  Home({super.key, required HomeViewModel homeViewModel})
    : _homeViewModel = homeViewModel;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Search Image'), centerTitle: true),
      body: ListenableBuilder(
        listenable: _homeViewModel,
        builder: (context, snapshot) {
          return Container(
            margin: EdgeInsets.symmetric(horizontal: 30),
            child: Column(
              spacing: 10,
              children: [
                InputField(
                  textEditingController: textEditingController,
                  onValueChange: (value) {
                    _homeViewModel.fetchImages(value);
                    FocusScope.of(context).unfocus();
                  },
                ),
                _homeViewModel.state.isLoading
                    ? Expanded(
                      child: Center(
                        child: CircularProgressIndicator(color: Colors.black),
                      ),
                    )
                    : Expanded(
                      child:
                          _homeViewModel.state.photos.isEmpty
                              ? Center(
                                child: Text(
                                  '검색 결과가 없습니다 :(',
                                  style: TextStyle(fontSize: 20),
                                ),
                              )
                              : GridView.builder(
                                itemCount: _homeViewModel.state.photos.length,
                                gridDelegate:
                                    SliverGridDelegateWithFixedCrossAxisCount(
                                      crossAxisSpacing: 10,
                                      mainAxisSpacing: 10,
                                      crossAxisCount: 2,
                                    ),
                                itemBuilder: (context, index) {
                                  final photo =
                                      _homeViewModel.state.photos[index];
                                  return GestureDetector(
                                    onTap: () {
                                      context.pushNamed('detail', extra: photo);
                                    },
                                    child: Hero(
                                      tag: photo.id,
                                      child: ImageCard(photo: photo),
                                    ),
                                  );
                                },
                              ),
                    ),
              ],
            ),
          );
        },
      ),
    );
  }
}
