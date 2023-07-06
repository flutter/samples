import 'package:flutter_rocket/flutter_rocket.dart';

import 'user_submodel/address_submodel.dart';
import 'user_submodel/company_submodel.dart';

const String userIdField = "id";
const String userNameField = "name";
const String userUsernameField = "username";
const String userEmailField = "email";
const String userAddressField = "address";
const String userPhoneField = "phone";
const String userWebsiteField = "website";
const String userCompanyField = "company";
const String userImageField = "image";

class User extends RocketModel<User> {
  int? id;
  String? name;
  String? username;
  String? email;
  Address? address;
  String? phone;
  String? website;
  Company? company;
  String? image;

  User(
      {this.id,
      this.name,
      this.username,
      this.email,
      this.address,
      this.phone,
      this.website,
      this.company,
      this.image}) {
    address ??= Address();
    company ??= Company();
  }

  @override
  void fromJson(Map<String, dynamic> json, {bool isSub = false}) {
    id = json[userIdField];
    name = json[userNameField];
    username = json[userUsernameField];
    email = json[userEmailField];
    address!.fromJson(json[userAddressField]);
    phone = json[userPhoneField];
    website = json[userWebsiteField];
    image = json[userImageField];
    company!.fromJson(json[userCompanyField]);
    super.fromJson(json, isSub: isSub);
  }

  void updateFields({
    int? idField,
    String? nameField,
    String? usernameField,
    String? emailField,
    Address? addressField,
    String? phoneField,
    String? websiteField,
    Company? companyField,
    String? imageField,
  }) {
    id = idField ?? id;
    name = nameField ?? name;
    username = usernameField ?? username;
    email = emailField ?? email;
    address = addressField ?? address;
    phone = phoneField ?? phone;
    image = imageField ?? image;
    website = websiteField ?? website;
    company = companyField ?? company;
    rebuildWidget(fromUpdate: true);
  }

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {};
    data[userIdField] = id;
    data[userNameField] = name;
    data[userUsernameField] = username;
    data[userEmailField] = email;
    data[userAddressField] = address!.toJson();
    data[userPhoneField] = phone;
    data[userWebsiteField] = website;
    data[userCompanyField] = company!.toJson();
    data[userImageField] = image;

    return data;
  }

  @override
  get instance => User();
}
