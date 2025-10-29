import 'package:flutter/services.dart';
// ignore: depend_on_referenced_packages
import 'package:intl/intl.dart';


class ThousandsFormatter extends TextInputFormatter {
  final NumberFormat _formatter = NumberFormat.decimalPattern(
    "ru",
  ); // 10 000 ko‘rinishda bo‘ladi

  @override
  TextEditingValue formatEditUpdate(
    TextEditingValue oldValue,
    TextEditingValue newValue,
  ) {
    if (newValue.text.isEmpty) {
      return newValue.copyWith(text: '');
    }

    // faqat raqamlarni olamiz
    String numeric = newValue.text.replaceAll(RegExp(r'[^0-9]'), '');
    if (numeric.isEmpty) {
      return newValue.copyWith(text: '');
    }

    // formatlangan raqam
    final formatted = _formatter.format(int.parse(numeric));

    return TextEditingValue(
      text: formatted,
      selection: TextSelection.collapsed(offset: formatted.length),
    );
  }
}

String spaseFormatNumber(int number) {
  return number.toString().replaceAllMapped(
    RegExp(r'(\d)(?=(\d{3})+(?!\d))'),
    (Match match) => '${match[1]} ',
  );
}






class PhoneNumberFormatter extends TextInputFormatter {
  @override
  TextEditingValue formatEditUpdate(
      TextEditingValue oldValue, TextEditingValue newValue) {
    // Raqamlarni olish
    String text = newValue.text.replaceAll(' ', '');

    // Formatlash
    String formatted = '';
    for (int i = 0; i < text.length; i++) {
      if (i == 2 || i == 5 || i == 7) {
        formatted += ' ';
      }
      formatted += text[i];
    }

    return TextEditingValue(
      text: formatted,
      selection: TextSelection.collapsed(offset: formatted.length),
    );
  }
}




class CardNumberFormatter extends TextInputFormatter {
  @override
  TextEditingValue formatEditUpdate(
    TextEditingValue oldValue,
    TextEditingValue newValue,
  ) {
    // faqat raqamlarni olish
    String digits = newValue.text.replaceAll(RegExp(r'\D'), '');

    // 16 ta raqamdan oshib ketmasin
    if (digits.length > 16) {
      digits = digits.substring(0, 16);
    }

    // formatlash: #### #### #### ####
    String newText = '';
    for (int i = 0; i < digits.length; i++) {
      newText += digits[i];
      if ((i + 1) % 4 == 0 && i + 1 != digits.length) {
        newText += ' ';
      }
    }

    return TextEditingValue(
      text: newText,
      selection: TextSelection.collapsed(offset: newText.length),
    );
  }
}

class CardExpiryFormatter extends TextInputFormatter {
  @override
  TextEditingValue formatEditUpdate(
    TextEditingValue oldValue,
    TextEditingValue newValue,
  ) {
    // Faqat raqamlarni olish
    String digits = newValue.text.replaceAll(RegExp(r'\D'), '');

    // Maks 4 ta raqam (MMYY)
    if (digits.length > 4) {
      digits = digits.substring(0, 4);
    }

    String newText = '';
    int selectionIndex = digits.length;

    if (digits.length >= 2) {
      newText = digits.substring(0, 2) + '/' + digits.substring(2);
      selectionIndex = newText.length;

      // 🔥 Agar foydalanuvchi backspace bosib "/" ga to‘xtagan bo‘lsa
      if (oldValue.text.endsWith('/') &&
          oldValue.text.length > newValue.text.length) {
        newText = newText.substring(0, newText.length - 1);
        selectionIndex = newText.length;
      }
    } else {
      newText = digits;
      selectionIndex = newText.length;
    }

    return TextEditingValue(
      text: newText,
      selection: TextSelection.collapsed(offset: selectionIndex),
    );
  }
}



class CvvInputFormatter extends TextInputFormatter {
  final int maxLength;
  CvvInputFormatter({this.maxLength = 3}); // default 3

  @override
  TextEditingValue formatEditUpdate(
    TextEditingValue oldValue,
    TextEditingValue newValue,
  ) {
    // Faqat raqamlar qabul qilinsin
    String digits = newValue.text.replaceAll(RegExp(r'\D'), '');

    // Maks uzunlik
    if (digits.length > maxLength) {
      digits = digits.substring(0, maxLength);
    }

    return TextEditingValue(
      text: digits,
      selection: TextSelection.collapsed(offset: digits.length),
    );
  }
}

