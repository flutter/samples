import 'package:flutter_rocket/flutter_rocket.dart';

const String companyNameField = "name";
const String companyCatchPhraseField = "catchPhrase";
const String companyBsField = "bs";

class Company extends RocketModel<Company> {
  String? name;
  String? catchPhrase;
  String? bs;

  Company({
    this.name,
    this.catchPhrase,
    this.bs,
  });

  @override
  void fromJson(Map<String, dynamic> json, {bool isSub = false}) {
    name = json[companyNameField];
    catchPhrase = json[companyCatchPhraseField];
    bs = json[companyBsField];
    super.fromJson(json, isSub: isSub);
  }

  void updateFields({
    String? nameField,
    String? catchPhraseField,
    String? bsField,
  }) {
    name = nameField ?? name;
    catchPhrase = catchPhraseField ?? catchPhrase;
    bs = bsField ?? bs;
    rebuildWidget(fromUpdate: true);
  }

  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {};
    data[companyNameField] = name;
    data[companyCatchPhraseField] = catchPhrase;
    data[companyBsField] = bs;

    return data;
  }
}
