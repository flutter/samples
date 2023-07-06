import 'package:flutter_rocket_example/models/photo_model.dart';
import 'package:flutter_rocket_example/requests/photo_request.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rocket/flutter_rocket.dart';

class PhotoExample extends StatelessWidget {
  PhotoExample({Key? key, required this.title}) : super(key: key);
  final String title;
  final Photo photo = Rocket.add<Photo>(Photo());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: SizedBox(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: RocketView(
            model: photo,
            loader: const CircularProgressIndicator(),
            // get 5000 items
            call: () => GetPhotos.getPhotos(photo),
            builder: (context, modelState) {
              return ListView.builder(
                  itemCount: photo.all!.length,
                  itemBuilder: (BuildContext context, int index) {
                    Photo currentphoto = photo.all![index];
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: [
                          ListTile(
                            title: Text(currentphoto.title!),
                            leading: Text(currentphoto.id!.toString()),
                            onTap: () {
                              Navigator.of(context).push(MaterialPageRoute(
                                  builder: (BuildContext context) {
                                return ApiImage(currentphoto.url!);
                              }));
                            },
                          ),
                        ],
                      ),
                    );
                  });
            },
          )),
    );
  }
}

class ApiImage extends StatelessWidget {
  final String url;
  const ApiImage(this.url, {Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Image.network(
        url,
        frameBuilder: (_, child, __, ___) {
          return Container(
            decoration: BoxDecoration(boxShadow: [
              BoxShadow(
                  blurRadius: 10.0,
                  color: Colors.black.withAlpha(100),
                  offset: Offset.zero)
            ]),
            child: child,
          );
        },
      )),
    );
  }
}
