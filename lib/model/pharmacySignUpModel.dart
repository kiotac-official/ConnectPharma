import 'dart:typed_data';

import '../all_used.dart';

class PharmacySignUpModel {
  String email;
  String password;
  bool passwordVisibility;

  String firstName;
  String lastName;
  String phoneNumber;
  String? position;
  Uint8List? signatureData;

  String pharmacyName;
  String streetAddress;
  String storeNumber;
  String city;
  String postalCode;
  String province;
  String country;
  String phoneNumberPharmacy;
  String faxNumberPharmacy;
  String accreditationProvince;
  List<Software?>? softwareList = [];

  String managerFirstName;
  String managerLastName;
  String managerPhoneNumber;
  String licenseNumber;

  PharmacySignUpModel({
    this.email = "",
    this.password = "",
    this.passwordVisibility = false,
    this.firstName = "",
    this.lastName = "",
    this.phoneNumber = "",
    this.position,
    this.signatureData,
    this.pharmacyName = "",
    this.streetAddress = "",
    this.storeNumber = "",
    this.city = "",
    this.postalCode = "",
    this.province = "",
    this.country = "",
    this.phoneNumberPharmacy = "",
    this.faxNumberPharmacy = "",
    this.accreditationProvince = "",
    this.softwareList,
    this.managerFirstName = "",
    this.managerLastName = "",
    this.managerPhoneNumber = "",
    this.licenseNumber = "",
  });

  PharmacySignUpModel copyWithPharmacySignUp({
    String? email,
    String? password,
    String? firstName,
    String? lastName,
    String? phoneNumber,
    String? position,
    Uint8List? signatureData,
    bool passwordVisibility = false,
    String? pharmacyName,
    String? streetAddress,
    String? storeNumber,
    String? city,
    String? postalCode,
    String? province,
    String? country,
    String? phoneNumberPharmacy,
    String? faxNumberPharmacy,
    String? accreditationProvince,
    List<Software?>? softwareList,
    String? managerFirstName,
    String? managerLastName,
    String? managerPhoneNumber,
    String? licenseNumber,
  }) {
    return PharmacySignUpModel(
      email: email ?? this.email,
      password: password ?? this.password,
      firstName: firstName ?? this.firstName,
      lastName: lastName ?? this.lastName,
      phoneNumber: phoneNumber ?? this.phoneNumber,
      position: position ?? this.position,
      signatureData: signatureData ?? this.signatureData,
      passwordVisibility: passwordVisibility,
      pharmacyName: pharmacyName ?? this.pharmacyName,
      streetAddress: streetAddress ?? this.streetAddress,
      storeNumber: storeNumber ?? this.storeNumber,
      city: city ?? this.city,
      postalCode: postalCode ?? this.postalCode,
      province: province ?? this.province,
      country: country ?? this.country,
      phoneNumberPharmacy: phoneNumberPharmacy ?? this.phoneNumberPharmacy,
      faxNumberPharmacy: faxNumberPharmacy ?? this.faxNumberPharmacy,
      accreditationProvince: accreditationProvince ?? this.accreditationProvince,
      softwareList: softwareList ?? this.softwareList,
      managerFirstName: managerFirstName ?? this.managerFirstName,
      managerLastName: managerLastName ?? this.managerLastName,
      managerPhoneNumber: managerPhoneNumber ?? this.managerPhoneNumber,
      licenseNumber: licenseNumber ?? this.licenseNumber,
    );
  }
}
