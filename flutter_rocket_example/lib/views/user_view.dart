import 'package:flutter_rocket_example/models/user_model.dart';
import 'package:flutter_rocket_example/models/user_submodel/address_submodel.dart';
import 'package:flutter_rocket_example/models/user_submodel/company_submodel.dart';
import 'package:flutter_rocket_example/models/user_submodel/geo_submodel.dart';
import 'package:flutter_rocket_example/requests/user_request.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rocket/flutter_rocket.dart';

class UserExample extends StatelessWidget {
  final User users = Rocket.add<User>(User());
  UserExample({Key? key, required this.title}) : super(key: key);
  final String title;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () => GetUsers.getUsers(users),
        label: const Text(
          "Get Data",
        ),
        icon: const Icon(
          Icons.get_app,
        ),
      ),
      body: SizedBox(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: RocketView(
            // call api by RocketRequest saved in McController and make model on ready
            call: () => GetUsers.getUsers(users),
            // call api every 2 sec
            callType: CallType.callAsStream,
            // update data from server every 2 sec
            secondsOfStream: 2,
            // your model
            model: users,
            // your widget for show data from model
            loader: const CircularProgressIndicator(),
            builder: (context, modelState) {
              return ListView.builder(
                itemCount: users.all!.length,
                itemBuilder: (BuildContext context, int index) {
                  User user = users.all![index];
                  Company company = user.company!;
                  Address address = user.address!;
                  Geo geo = address.geo!;
                  return ExpansionTile(
                      leading: InkWell(
                        onLongPress: () => users.delItem(index),
                        onTap: () => Navigator.of(context).push(
                            MaterialPageRoute(builder: (BuildContext context) {
                          return OneUser(index);
                        })),
                        child: CircleAvatar(
                          backgroundColor: Theme.of(context).primaryColor,
                          backgroundImage: user.image == null
                              ? null
                              : NetworkImage(user.image!),
                          child: user.image == null
                              ? const Icon(Icons.person)
                              : null,
                        ),
                      ),
                      title: Text(user.name!),
                      trailing: IconButton(
                          icon: const Icon(Icons.update),
                          onPressed: () {
                            Company newCompany = Company(
                                bs: "change data...bs",
                                name: "Name changed",
                                catchPhrase: "change data...catch");
                            // update user model
                            user.updateFields(
                              nameField: "Mohammed CHAHBOUN 💙",
                              companyField: newCompany,
                            );
                          }),
                      children: [
                        const SizedBox(height: 5.0),
                        Text(user.id.toString()),
                        Text(user.username!),
                        Text(user.email!),
                        Text(user.phone!),
                        Text(user.website!),
                        const SizedBox(height: 5),
                        ExpansionTile(
                            tilePadding:
                                const EdgeInsets.symmetric(horizontal: 40.0),
                            leading: CircleAvatar(
                              backgroundColor: Theme.of(context).primaryColor,
                              child: const Icon(Icons.home),
                            ),
                            title: Text("Company :${company.name!}"),
                            children: [
                              const SizedBox(height: 5.0),
                              Text(company.bs!),
                              Text(company.catchPhrase!),
                            ]),
                        const SizedBox(height: 5),
                        ExpansionTile(
                            tilePadding:
                                const EdgeInsets.symmetric(horizontal: 40.0),
                            leading: CircleAvatar(
                              backgroundColor: Theme.of(context).primaryColor,
                              child: const Icon(Icons.place),
                            ),
                            title: Text("Address :${address.city!}"),
                            children: [
                              const SizedBox(height: 5.0),
                              Text(address.street!),
                              Text(address.suite!),
                              Text(address.zipcode!),
                              Text(address.city!),
                              const SizedBox(height: 5.0),
                              ExpansionTile(
                                  tilePadding: const EdgeInsets.symmetric(
                                      horizontal: 80.0),
                                  leading: CircleAvatar(
                                    backgroundColor:
                                        Theme.of(context).primaryColor,
                                    child: const Icon(Icons.map),
                                  ),
                                  title: const Text("geo adrdress"),
                                  children: [
                                    const SizedBox(height: 5.0),
                                    Text(geo.lat!),
                                    Text(geo.lng!),
                                  ]),
                            ]),
                      ]);
                },
              );
            },
          )),
    );
  }
}

// ignore: must_be_immutable
class OneUser extends StatelessWidget {
  final int index;
  late User user;
  late Company company;
  late Address address;
  late Geo geo;
  OneUser(this.index, {Key? key}) : super(key: key) {
    user = Rocket.get<User>().all![index];
    company = user.company!;
    address = user.address!;
    geo = address.geo!;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ExpansionTile(
            leading: CircleAvatar(
              backgroundColor: Theme.of(context).primaryColor,
              backgroundImage:
                  user.image == null ? null : NetworkImage(user.image!),
              child: user.image == null ? const Icon(Icons.person) : null,
            ),
            title: Text("User :${user.name!}"),
            children: [
              const SizedBox(height: 5.0),
              Text(user.id.toString()),
              Text(user.username!),
              Text(user.email!),
              Text(user.phone!),
              Text(user.website!),
              const SizedBox(height: 5),
              ExpansionTile(
                  tilePadding: const EdgeInsets.symmetric(horizontal: 40.0),
                  leading: CircleAvatar(
                    backgroundColor: Theme.of(context).primaryColor,
                    child: const Icon(Icons.home),
                  ),
                  title: Text("Company :${company.name!}"),
                  children: [
                    const SizedBox(height: 5.0),
                    Text(company.bs!),
                    Text(company.catchPhrase!),
                  ]),
              const SizedBox(height: 5),
              ExpansionTile(
                  tilePadding: const EdgeInsets.symmetric(horizontal: 40.0),
                  leading: CircleAvatar(
                    backgroundColor: Theme.of(context).primaryColor,
                    child: const Icon(Icons.place),
                  ),
                  title: Text("Address :${address.city!}"),
                  children: [
                    const SizedBox(height: 5.0),
                    Text(address.street!),
                    Text(address.suite!),
                    Text(address.zipcode!),
                    Text(address.city!),
                    const SizedBox(height: 5.0),
                    ExpansionTile(
                        tilePadding:
                            const EdgeInsets.symmetric(horizontal: 80.0),
                        leading: CircleAvatar(
                          backgroundColor: Theme.of(context).primaryColor,
                          child: const Icon(Icons.map),
                        ),
                        title: const Text("geo adrdress"),
                        children: [
                          const SizedBox(height: 5.0),
                          Text(geo.lat!),
                          Text(geo.lng!),
                        ]),
                  ]),
            ]),
      ),
    );
  }
}
