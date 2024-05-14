import 'package:ai_recipe_generation/widgets/highlight_border_on_hover_widget.dart';
import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:material_symbols_icons/symbols.dart';
import 'package:provider/provider.dart';

import '../../../main.dart';
import '../../../theme.dart';
import '../../../util/device_info.dart';
import '../../../widgets/add_image_widget.dart';
import '../../../widgets/prompt_image_widget.dart';
import '../prompt_view_model.dart';

class AddImageToPromptWidget extends StatefulWidget {
  const AddImageToPromptWidget({
    super.key,
    this.width = 100,
    this.height = 100,
  });

  final double width;
  final double height;

  @override
  State<AddImageToPromptWidget> createState() => _AddImageToPromptWidgetState();
}

class _AddImageToPromptWidgetState extends State<AddImageToPromptWidget> {
  final ImagePicker picker = ImagePicker();
  late CameraController _controller;
  late Future<void> _initializeControllerFuture;
  bool flashOn = false;

  @override
  void initState() {
    super.initState();
    if (DeviceInfo.isPhysicalDeviceWithCamera(deviceInfo)) {
      _controller = CameraController(
        camera,
        ResolutionPreset.medium,
      );
      _initializeControllerFuture = _controller.initialize();
    }
  }

  Future<XFile> _showCamera() async {
    final image = await showGeneralDialog<XFile?>(
      context: context,
      transitionBuilder: (context, animation, secondaryAnimation, child) {
        return AnimatedOpacity(
          opacity: animation.value,
          duration: const Duration(milliseconds: 100),
          child: child,
        );
      },
      pageBuilder: (context, animation, secondaryAnimation) {
        return Dialog.fullscreen(
          insetAnimationDuration: const Duration(seconds: 1),
          child: FutureBuilder(
            future: _initializeControllerFuture,
            builder: (context, snapshot) {
              if (snapshot.connectionState == ConnectionState.done) {
                // If the Future is complete, display the preview.
                return CameraView(
                  controller: _controller,
                  initializeControllerFuture: _initializeControllerFuture,
                );
              } else {
                // Otherwise, display a loading indicator.
                return const Center(child: CircularProgressIndicator());
              }
            },
          ),
        );
      },
    );

    if (image != null) {
      return image;
    } else {
      throw "failed to take image";
    }
  }

  Future<XFile> _pickImage() async {
    final image = await picker.pickImage(source: ImageSource.gallery);
    if (image != null) {
      return image;
    } else {
      throw "failed to take image";
    }
  }

  Future<XFile> _addImage() async {
    if (DeviceInfo.isPhysicalDeviceWithCamera(deviceInfo)) {
      return await _showCamera();
    } else {
      return await _pickImage();
    }
  }

  @override
  Widget build(BuildContext context) {
    final viewModel = context.watch<PromptViewModel>();

    return HighlightBorderOnHoverWidget(
      borderRadius: BorderRadius.zero,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(
              left: MarketplaceTheme.spacing7,
              top: MarketplaceTheme.spacing7,
            ),
            child: Text(
              'I have these ingredients:',
              style: MarketplaceTheme.dossierParagraph,
            ),
          ),
          SizedBox(
            height: widget.height,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                Padding(
                  padding: const EdgeInsets.all(MarketplaceTheme.spacing7),
                  child: AddImage(
                      width: widget.width,
                      height: widget.height,
                      onTap: () async {
                        final image = await _addImage();
                        viewModel.addImage(image);
                      }),
                ),
                for (var image in viewModel.userPrompt.images)
                  Padding(
                    padding: const EdgeInsets.all(MarketplaceTheme.spacing7),
                    child: PromptImage(
                      width: widget.width,
                      file: image,
                      onTapIcon: () => viewModel.removeImage(image),
                    ),
                  ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class CameraView extends StatefulWidget {
  final CameraController controller;
  final Future initializeControllerFuture;
  const CameraView(
      {super.key,
      required this.controller,
      required this.initializeControllerFuture});

  @override
  State<CameraView> createState() => _CameraViewState();
}

class _CameraViewState extends State<CameraView> {
  bool flashOn = false;

  @override
  Widget build(BuildContext context) {
    CameraController controller = widget.controller;
    return Stack(
      children: [
        Center(
          child: AspectRatio(
            aspectRatio: 9 / 14,
            child: ClipRect(
              child: FittedBox(
                fit: BoxFit.cover,
                child: SizedBox(
                  height: controller.value.previewSize!.width,
                  width: controller.value.previewSize!.height,
                  child: Center(
                    child: CameraPreview(
                      controller,
                      // child: ElevatedButton(
                      //   child: Text('Button'),
                      //   onPressed: () {},
                      // ),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
        Positioned(
          top: 0,
          left: 0,
          right: 0,
          height: 89.5,
          child: Container(
            color: Colors.black.withOpacity(.7),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding:
                      const EdgeInsets.only(left: MarketplaceTheme.spacing4),
                  child: IconButton(
                    icon: Icon(
                      flashOn ? Symbols.flash_on : Symbols.flash_off,
                      size: 40,
                      color: flashOn ? Colors.yellowAccent : Colors.white,
                    ),
                    onPressed: () {
                      controller.setFlashMode(
                          flashOn ? FlashMode.off : FlashMode.always);
                      setState(() {
                        flashOn = !flashOn;
                      });
                    },
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.only(right: MarketplaceTheme.spacing4),
                  child: IconButton(
                    icon: const Icon(
                      Symbols.cancel,
                      color: Colors.white,
                      size: 40,
                    ),
                    onPressed: () async {
                      Navigator.of(context).pop();
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
        Positioned(
          bottom: 0,
          left: 0,
          right: 0,
          height: 150,
          child: Container(
            color: Colors.black.withOpacity(.7),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(
                  icon: const Icon(
                    Symbols.camera,
                    color: Colors.white,
                    size: 70,
                  ),
                  onPressed: () async {
                    try {
                      await widget.initializeControllerFuture;
                      final image = await controller.takePicture();
                      if (!context.mounted) return;
                      Navigator.of(context).pop(image);
                    } catch (e) {
                      rethrow;
                    }
                  },
                ),
              ],
            ),
          ),
        )
      ],
    );
  }
}
