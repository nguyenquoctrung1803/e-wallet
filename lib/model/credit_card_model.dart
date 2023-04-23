import 'dart:convert';

// ignore_for_file: public_member_api_docs, sort_constructors_first
class CreditCardModels {
  String creditCardId;
  String cardNumber;
  String expiryDate;
  String cardHolderName;
  String cvvCode;
  bool isCvvFocused;
  CreditCardModels({
    required this.creditCardId,
    required this.cardNumber,
    required this.expiryDate,
    required this.cardHolderName,
    required this.cvvCode,
    required this.isCvvFocused,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'creditCardId': creditCardId,
      'cardNumber': cardNumber,
      'expiryDate': expiryDate,
      'cardHolderName': cardHolderName,
      'cvvCode': cvvCode,
      'isCvvFocused': isCvvFocused,
    };
  }

  factory CreditCardModels.fromMap(Map<String, dynamic> map) {
    return CreditCardModels(
      creditCardId: map['creditCardId'] as String,
      cardNumber: map['cardNumber'] as String,
      expiryDate: map['expiryDate'] as String,
      cardHolderName: map['cardHolderName'] as String,
      cvvCode: map['cvvCode'] as String,
      isCvvFocused: map['isCvvFocused'] as bool,
    );
  }
}