import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Language extends Translations{
  @override
  // TODO: implement keys
  Map<String, Map<String, String>> get keys => {
    'en_US':{
      'message': 'What is your name',
      'name': 'Nahid Hasan'
    },
    'ur_PK':{
      'message': 'آپ کا نام کیا ہے',
      'name': 'ناہید حسن'
    }
  };

}
