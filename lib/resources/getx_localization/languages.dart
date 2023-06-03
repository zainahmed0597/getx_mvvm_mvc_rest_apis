// import 'package:get/get.dart';
import 'package:get/get_navigation/src/root/internacionalization.dart';

class Languages extends Translations {
  @override
  Map<String, Map<String, String>> get keys => {
        'en_US': {
          'name': 'Zain Ahmed',
          'message': 'What is your name',
          'email': 'Email',
          'enter_email': 'Enter email',
          'email_hint': 'Email',
          'password': 'Password',
          'password_hint': 'Password',
          'enter_password': 'Enter password',
          'internet_exception':
              'We are unable to show result. \nPlease check your data\nconnection.',
          'retry': 'retry',
          'general_exception':
              'We are unable to process your request. \nPlease try again',
          'Welcome\nback' : 'Welcome\nback',
          'login' : 'Login',
        },
        'ur_PK': {
          'name': 'زین احمد',
          'message': 'آپ کا نام کیا ہے',
          'email': 'ای میل',
          'enter_email': 'ای میل درج کریں',
          'email_hint': 'ای میل',
          'password': 'پاس ورڈ',
          'password_hint': 'پاس ورڈ',
          'enter_password': 'پاس ورڈ درج کریں',
          'internet_exception':
              'ہم نتیجہ دکھانے سے قاصر ہیں۔ \nبراہ کرم اپنا ڈیٹا\nکنکشن چیک کریں۔',
          'retry': 'دوبارہ کوشش کریں',
          'general_exception':
              'ہم آپ کی درخواست پر کارروائی کرنے سے قاصر ہیں۔ \nبراہ کرم دوبارہ کوشش کریں۔',
          'Welcome\nback':'خوش آمدید',
          'login':'لاگ ان کریں',
        }
      };
}
