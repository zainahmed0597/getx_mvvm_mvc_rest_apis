// import 'package:get/get.dart';
import 'package:get/get_navigation/src/root/internacionalization.dart';

class Languages extends Translations {
  @override
  Map<String, Map<String, String>> get keys => {
        'en_US': {
          'name': 'Zain Ahmed',
          'message': 'What is your name',
          'email_hint': 'Enter email',
          'internet_exception':
              'We are unable to show result. \nPlease check your data\nconnection.',
          'retry': 'retry',
          'general_exception':
              'We are unable to process your request. \nPlease try again'
        },
        'ur_PK': {
          'name': 'زین احمد',
          'message': 'آپ کا نام کیا ہے',
          'email_hint': 'ای میل درج کریں۔',
          'internet_exception':
              'ہم نتیجہ دکھانے سے قاصر ہیں۔ \nبراہ کرم اپنا ڈیٹا\nکنکشن چیک کریں۔',
          'retry': 'دوبارہ کوشش کریں',
          'general_exception':
              'ہم آپ کی درخواست پر کارروائی کرنے سے قاصر ہیں۔ \nبراہ کرم دوبارہ کوشش کریں۔'
        }
      };
}
