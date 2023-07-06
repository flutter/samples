import 'dart:developer';
import 'dart:io';

import 'package:flutter_rocket_example/models/post_model.dart';
import 'package:flutter_rocket_example/requests/post_request.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rocket/flutter_rocket.dart';

class PostExample extends StatelessWidget {
  // Save your model to use on another screen
  // readOnly means if you close and open this screen you will use same data without update it from Api
  // [rocket] is instance of Mccontroller injected in Object by extension for use it easily anywhere
  final Post post = Post().save(readOnly: true);

  PostExample({Key? key, required this.title}) : super(key: key);
  final String title;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text(
            "Refresh Posts with swip to down or from here =>",
            style: TextStyle(fontSize: 11.0),
          ),
          actions: [
            IconButton(
                icon: const Icon(Icons.data_usage),
                // Refresh Data from Api
                onPressed: () => GetPosts.getPosts(post))
          ],
        ),
        body: SizedBox(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: RefreshIndicator(
              onRefresh: () {
                return GetPosts.getPosts(post);
              },
              child: RocketView(
                // call api method
                call: () => GetPosts.getPosts(post),
                // your model generated
                model: post,
                // call call Voidcallback if model empty
                callType: CallType.callIfModelEmpty,
                // or
                // callType: CallType.callAsStream,
                // secondsOfStream: 1,
                // customized your loading (default widget is CircularProgressIndicator)
                loader: const CircularProgressIndicator(),

                // handle errors
                onError: (RocketException exception, Function() reload) {
                  return Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(exception.exception),
                        if (exception.statusCode != HttpStatus.ok) ...[
                          Text(exception.response),
                          Text(Rocket.get(rocketRequestKey)
                              .msgByStatusCode(exception.statusCode))
                        ],
                        TextButton(
                            onPressed: reload, child: const Text("retry"))
                      ],
                    ),
                  );
                },
                builder: (context, state) {
                  return SizedBox(
                    height: MediaQuery.of(context).size.height * 0.852,
                    child: ListView.builder(
                      itemCount: post.all!.length,
                      itemBuilder: (BuildContext context, int index) {
                        // your data saved in multi list as Post model
                        Post currentPost = post.all![index];
                        return ListTile(
                            leading: Text(currentPost.id.toString()),
                            title: Text(currentPost.title!),
                            trailing: IconButton(
                              color: Colors.brown,
                              icon: const Icon(Icons.update),
                              onPressed: () {
                                List titles = post.all!
                                    .toJson(
                                        include: ["title"], onlyValues: true)
                                    .map((e) => e[0])
                                    .toList();
                                log("$titles");
                                // update post data
                                currentPost.updateFields(
                                    titleField: "This Title changed");
                              },
                            ),
                            onTap: () => Navigator.of(context).push(
                                  MaterialPageRoute(
                                      builder: (BuildContext context) {
                                    return Details(index);
                                  }),
                                ));
                      },
                    ),
                  );
                },
              )),
        ));
  }
}

class Details extends StatelessWidget {
  final int index;
  //  get your model by key
  final Post post = Rocket.get<Post>();
  Details(this.index, {Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    Post currentPost = post.all![index];
    return Scaffold(
      appBar: AppBar(title: Text(currentPost.title!)),
      body: Center(
        child: ListTile(
          leading: Text(currentPost.id.toString()),
          title: Text(currentPost.title!),
          subtitle: Text(currentPost.body!),
        ),
      ),
    );
  }
}
