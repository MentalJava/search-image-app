import 'package:flutter/material.dart';
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
                  },
                ),
                _homeViewModel.state.isLoading
                    ? CircularProgressIndicator(color: Colors.black)
                    : Expanded(
                      child: GridView.builder(
                        itemCount: _homeViewModel.state.photos.length,
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisSpacing: 10,
                          mainAxisSpacing: 10,
                          crossAxisCount: 2,
                        ),
                        itemBuilder: (context, index) {
                          final photo = _homeViewModel.state.photos[index];
                          return ImageCard(photo: photo);
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
