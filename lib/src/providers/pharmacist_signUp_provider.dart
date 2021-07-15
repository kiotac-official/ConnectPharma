import 'dart:typed_data';

import 'package:email_validator/email_validator.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pharma_connect/model/pharmacistSignUpModel.dart';
import 'package:pharma_connect/src/screens/Pharmacist/5pharmacistSkills.dart';

class PharmacistSignUpProvider extends StateNotifier<PharmacistSignUpModel> {
  PharmacistSignUpProvider() : super(PharmacistSignUpModel());

  bool isValidPharmacistSignUp() {
    if (EmailValidator.validate(state.email.toString()) == false ||
        state.password.length < 6) {
      return true;
    } else {
      return false;
    }
  }

  bool isValidPharmacistLocation() {
    if (state.firstName == "" ||
        state.lastName == "" ||
        state.phoneNumber == "") {
      print("true account info");
      return true;
    } else {
      print("false account info");
      return false;
    }
  }

  bool isValidPharmacistInformation() {
    if (state.firstYearLicensed == "" ||
        state.registrationNumber == "" ||
        state.registrationProvince == "" ||
        state.graduationYear == "" ||
        state.institutionName == "" ||
        state.workingExperiance == "") {
      print("true account info");
      return true;
    } else {
      print("false account info");
      return false;
    }
  }

  bool isValidPharmacistSkills() {
    if (state.softwareList == "" ||
        state.skillList == "" ||
        state.languageList == "" ||
        state.softwareList == null ||
        state.skillList == null ||
        state.languageList == null) {
      print("true account info");
      return true;
    } else {
      print("false account info");
      return false;
    }
  }

  void clearAllValues() {
    state.email = "";
    state.password = "";
    state.firstName = "";
    state.lastName = "";
    state.address = "";
    state.phoneNumber = "";
    state.firstYearLicensed = "";
    state.registrationNumber = "";
    state.registrationProvince = "";
    state.graduationYear = "";
    state.institutionName = "";
    state.workingExperiance = "";
    state.willingToMove = false;
    state.entitledToWork = false;
    state.activeMember = false;
    state.liabilityInsurance = false;
    state.licenseRestricted = false;
    state.malpractice = false;
    state.felon = false;
    state.softwareList = null;
    state.skillList = null;
    state.languageList = null;
  }

  //Getters
  String get email => state.email;
  String get password => state.password;

  String get firstName => state.firstName;
  String get lastName => state.lastName;
  String get address => state.address;
  String get phoneNumber => state.phoneNumber;

  String get firstYearLicensed => state.firstYearLicensed;
  String get registrationNumber => state.registrationNumber;
  String get registrationProvince => state.registrationProvince;
  String get graduationYear => state.graduationYear;
  String get institutionName => state.institutionName;
  String get workingExperience => state.workingExperiance;
  bool get willingToMove => state.willingToMove;

  bool get entitledToWork => state.entitledToWork;
  bool get activeMember => state.activeMember;
  bool get liabilityInsurance => state.liabilityInsurance;
  bool get licenseRestricted => state.licenseRestricted;
  bool get malpractice => state.malpractice;
  bool get felon => state.felon;

  List<Software?>? get softwareList => state.softwareList;
  List<Skill?>? get skillList => state.skillList;
  List<Language?>? get languageList => state.languageList;

  //Setters Sign Up
  void changeEmail(String value) {
    print(value);
    state = state.copyWithPharmacistSignUp(
      email: value.trim(),
    );
  }

  void changePassword(String value) {
    state = state.copyWithPharmacistSignUp(
      password: value,
    );
  }

//Setters Pharmacist Location
  void changeFirstName(String value) {
    state = state.copyWithPharmacistSignUp(firstName: value.trim());
  }

  void changeLastName(String value) {
    state = state.copyWithPharmacistSignUp(lastName: value.trim());
  }

  void changePhoneNumber(String value) {
    state = state.copyWithPharmacistSignUp(phoneNumber: value.trim());
  }

  void changePharmacistAddress(String value) {
    state = state.copyWithPharmacistSignUp(address: value.trim());
  }

  //Setters Pharmacist Information
  void changeFirstYearLicensed(String value) {
    state = state.copyWithPharmacistSignUp(firstYearLicensed: value.trim());
  }

  void changeRegistrationNumber(String value) {
    state = state.copyWithPharmacistSignUp(registrationNumber: value.trim());
  }

  void changeRegistrationProvince(String value) {
    state = state.copyWithPharmacistSignUp(registrationProvince: value.trim());
  }

  void changeGraduationYear(String value) {
    state = state.copyWithPharmacistSignUp(graduationYear: value.trim());
  }

  void changeInstitutionName(String value) {
    state = state.copyWithPharmacistSignUp(instituationName: value.trim());
  }

  void changeWorkingExperience(String value) {
    state = state.copyWithPharmacistSignUp(workingExperiance: value.trim());
  }

  void changeWillingToMove(bool value) {
    state = state.copyWithPharmacistSignUp(willingToMove: value);
  }

  //Setters Pharmacist Legal Information
  void changeEntitledToWork(bool value) {
    state = state.copyWithPharmacistSignUp(entitledToWork: value);
  }

  void changeActiveMember(bool value) {
    state = state.copyWithPharmacistSignUp(activeMember: value);
  }

  void changeLiabilityInsurance(bool value) {
    state = state.copyWithPharmacistSignUp(liabilityInsurance: value);
  }

  void changeLicenseRestricted(bool value) {
    state = state.copyWithPharmacistSignUp(licenseRestricted: value);
  }

  void changeMalpractice(bool value) {
    state = state.copyWithPharmacistSignUp(malpractice: value);
  }

  void changeFelonStatus(bool value) {
    state = state.copyWithPharmacistSignUp(felon: value);
  }

  //Setters Pharmacist Skills
  void changeSoftwareList(List<Software?> value) {
    state = state.copyWithPharmacistSignUp(softwareList: value);
  }

  void changeSkillList(List<Skill?> value) {
    state = state.copyWithPharmacistSignUp(skillList: value);
  }

  void changeLanguageList(List<Language?> value) {
    state = state.copyWithPharmacistSignUp(languageList: value);
  }

  void changeSignature(Uint8List? value) {
    state = state.copyWithPharmacistSignUp(signatureData: value);
  }
}
