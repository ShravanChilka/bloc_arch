import 'package:bloc_arch/bloc/app_bloc.dart';
import 'package:bloc_arch/bloc/app_event.dart';
import 'package:bloc_arch/bloc/app_state.dart';
import 'package:bloc_arch/views/pop_up_menu_button.dart';
import 'package:bloc_arch/views/storage_image_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:image_picker/image_picker.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class PhotoGalleryView extends HookWidget {
  const PhotoGalleryView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final picker = useMemoized(() => ImagePicker(), [key]);
    final images = context.watch<AppBloc>().state.images ?? [];
    return Scaffold(
      appBar: AppBar(
        title: const Text('Photo Gallery'),
        actions: [
          IconButton(
            onPressed: () async {
              await picker.pickImage(source: ImageSource.gallery).then((image) {
                if (image != null) {
                  context
                      .read<AppBloc>()
                      .add(AppEventUploadImage(filePathToUpload: image.path));
                }
              });
            },
            icon: const Icon(Icons.upload),
          ),
          const PopUpMenu(),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(5),
        child: GridView.builder(
          itemCount: images.length,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            mainAxisSpacing: 5,
            crossAxisSpacing: 5,
          ),
          itemBuilder: (context, index) {
            return StorageImageView(image: images.toList()[index]);
          },
        ),
      ),
    );
  }
}
