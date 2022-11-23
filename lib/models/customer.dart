import 'package:json_annotation/json_annotation.dart';
part 'customer.g.dart';

@JsonSerializable(explicitToJson: true)
class Customer {
  String? personCode;
  String? firstName;
  String? midleName;
  String? lastName;
  String? placeOfBirth;
  String? dateOfBirth;
  bool? gender;
  String? address;
  String? postalCode;
  String? contact;
  String? contactNumber;
  String? billingAddress;
  String? billingPostalCode;
  String? billingContact;
  String? billingContactNumber;
  String? homePhone;
  String? mobilePhone;
  String? workPhone;
  String? joinDate;
  String? comfirmDate;
  String? terminationDate;
  String? email;
  String? workEmail;
  int? rating;
  bool? tempBlackList;
  bool? fullBlackList;
  bool? active;

  Customer(
      this.personCode,
      this.firstName,
      this.midleName,
      this.lastName,
      this.placeOfBirth,
      this.dateOfBirth,
      this.gender,
      this.address,
      this.postalCode,
      this.contact,
      this.contactNumber,
      this.billingAddress,
      this.billingPostalCode,
      this.billingContact,
      this.billingContactNumber,
      this.homePhone,
      this.mobilePhone,
      this.workPhone,
      this.joinDate,
      this.comfirmDate,
      this.terminationDate,
      this.email,
      this.workEmail,
      this.rating,
      this.tempBlackList,
      this.fullBlackList,
      this.active);

  factory Customer.fromJson(Map<String, dynamic> data) =>
      _$CustomerFromJson(data);
  Map<String, dynamic> toJson() => _$CustomerToJson(this);
}
