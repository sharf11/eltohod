import 'package:eltohod/EnterApp/EnterPage.dart';
import 'package:eltohod/Test/EndTest.dart';
import 'package:eltohod/Test/Test1.dart';
import 'package:eltohod/Test/fineResult.dart';
import 'package:eltohod/Test/selectAge.dart';
import 'package:eltohod/doctors/confirm.dart';
import 'package:eltohod/doctors/doctorProfile.dart';
import 'package:eltohod/doctors/filter.dart';
import 'package:eltohod/doctors/map.dart';
import 'package:eltohod/library/library.dart';
import 'package:eltohod/user/signIn.dart';
import 'package:eltohod/user4/courses.dart';
import 'doctors/onlineDoctor.dart';
import 'package:eltohod/setting.dart';
import 'package:eltohod/user/FinishBooking.dart';
import 'package:eltohod/user/appointment.dart';
import 'package:eltohod/user/onlineBookingDetails.dart';
import 'package:eltohod/user/confirmBook.dart';
import 'package:eltohod/user/confirmOnline.dart';
import 'package:eltohod/user/contacts.dart';
import 'package:eltohod/user/editProfile.dart';
import 'package:eltohod/user/endCall.dart';
import 'package:eltohod/user/finishBookingOnline.dart';
import 'package:eltohod/user/paymentMethod.dart';
import 'package:eltohod/user/paymentOnline.dart';
import 'package:eltohod/user/signUp.dart';
import 'package:eltohod/user/support/joinSeminars.dart';
import 'package:eltohod/user/support/joinSupportRoom.dart';
import 'package:eltohod/user/support/medicalRecord.dart';
import 'package:eltohod/user/support/notification.dart';
import 'package:eltohod/user/support/seminars.dart';
import 'package:eltohod/user/support/supportRooms.dart';
import 'package:eltohod/user/userProfile.dart';
import 'package:eltohod/user/vedioCall.dart';
import 'package:eltohod/user/verificationCode.dart';
import 'package:eltohod/user2/endQuestionaire.dart';
import 'package:eltohod/user2/myQuestionaire.dart';
import 'package:eltohod/user2/offlineQuestionnaire.dart';
import 'package:eltohod/user2/onlineQuestionnaire.dart';
import 'package:eltohod/user2/questionaireDetails.dart';
import 'package:eltohod/user2/result.dart';
import 'package:eltohod/user2/submitQuestionaire.dart';
import 'package:eltohod/user2/user2Main.dart';
import 'package:eltohod/user2/user2Notifiction.dart';
import 'package:eltohod/user2/user2Profile.dart';
import 'package:eltohod/user2/videoQuestionaire.dart';
import 'package:eltohod/user2/writingQestionaire.dart';
import 'package:eltohod/user2/yesOrNoQuestionaire.dart';
import 'package:eltohod/user3/Reservations.dart';
import 'package:eltohod/user3/clinicDetails.dart';
import 'package:eltohod/user3/license.dart';
import 'package:eltohod/user3/patientReport.dart';
import 'package:eltohod/user3/reportDetail.dart';
import 'package:eltohod/user3/signUp.dart';
import 'package:eltohod/user3/specificReport.dart';
import 'package:eltohod/user3/uploadLicense.dart';
import 'package:eltohod/user3/user3Main.dart';
import 'package:eltohod/user3/user3Profile.dart';
import 'package:eltohod/user4/CourseInformation.dart';
import 'package:eltohod/user4/centerCourseInformation.dart';
import 'package:eltohod/user4/centerSignUp.dart';
import 'package:eltohod/user4/coursePresenter.dart';
import 'package:eltohod/user4/endSignUp.dart';
import 'package:eltohod/user4/individualSignUp.dart';
import 'package:eltohod/user4/myCourses.dart';
import 'package:eltohod/user4/user4Main.dart';
import 'package:eltohod/user4/user4Profile.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'EnterApp/Language.dart';
import 'EnterApp/cluster.dart';
import 'EnterApp/doctor.dart';
import 'EnterApp/father.dart';
import 'Test/autismResult.dart';
import 'Test/startTest.dart';
import 'doctors/bookingDetails.dart';
import 'doctors/searchDectors.dart';
import 'doctors/selectCity.dart';
import 'homePage.dart';
import 'package:localize_and_translate/localize_and_translate.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await translator.init(
    localeDefault: LocalizationDefaultType.device,
    languagesList: <String>['ar', 'en'],
    assetsDirectory: 'assets/langs/',
    apiKeyGoogle: '<Key>', // NOT YET TESTED
  );
  runApp(myApp());
  SystemChrome.setPreferredOrientations(
      [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);
}
class myApp extends StatelessWidget{
  int mainColor=0xffFC8B00;
  int whiteMainColor=0xffFFC985;
  int blackColor=0xff263238;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme:ThemeData(
          fontFamily: 'Poppins'
      ),
      routes:  <String,WidgetBuilder>{
        '/cluster':(BuildContext context)=>new cluster(),
        '/doctor':(BuildContext context)=>new doctor(),
        '/father':(BuildContext context)=>new father(),
        '/enterPage':(BuildContext context)=>new enterPage(),
        '/homePage':(BuildContext context)=>new homePage(),
        '/startTest':(BuildContext context)=>new startTest(),
        '/selectAge':(BuildContext context)=>new selectAge(),
        '/test1':(BuildContext context)=>new test1(),
        '/endTest':(BuildContext context)=>new endTest(),
        '/result':(BuildContext context)=>new result(),
        '/autismResult':(BuildContext context)=>new autismResult(),
        '/searchDectors':(BuildContext context)=>new searchDectors(),
        '/onlineDectors':(BuildContext context)=>new onlineDectors(),
        '/selectCity':(BuildContext context)=>new selectCity(),
        '/filter':(BuildContext context)=>new filter(),
        '/map':(BuildContext context)=>new map(),
        '/doctorProfile':(BuildContext context)=>new doctorProfile(),
        '/bookingDetails':(BuildContext context)=>new bookingDetails(),
        '/confirm':(BuildContext context)=>new confirm(),
        '/signIn':(BuildContext context)=>new signIn(),
        '/setting':(BuildContext context)=>new setting(),
        '/signUp':(BuildContext context)=>new signUp(),
        '/paymentMethod':(BuildContext context)=>new paymentMethod(),
        '/confirmBook':(BuildContext context)=>new confirmBook(),
        '/finishBooking':(BuildContext context)=>new finishBooking(),
        '/appointment':(BuildContext context)=>new appointment(),
        '/onlineBookingDetails':(BuildContext context)=>new onlineBookingDetails(),
        '/paymentOnline':(BuildContext context)=>new paymentOnline(),
        '/confirmOnline':(BuildContext context)=>new confirmOnline(),
        '/finishBookingOnline':(BuildContext context)=>new finishBookingOnline(),
        '/vedioCall':(BuildContext context)=>new vedioCall(),
        '/endCall':(BuildContext context)=>new endCall(),
        '/library':(BuildContext context)=>new libraryIndex(),
        '/libraryPdf':(BuildContext context)=>new libraryIndex(),
        '/supportRooms':(BuildContext context)=>new supportRooms(),
        '/joinSupportRooms':(BuildContext context)=>new joinSupportRooms(),
        '/seminars':(BuildContext context)=>new seminars(),
        '/joinSeminar':(BuildContext context)=>new joinSeminar(),
        '/notifiction':(BuildContext context)=>new notification(),
        '/userProfile':(BuildContext context)=>new userProfile(),
        '/editProfile':(BuildContext context)=>new editProfile(),
        '/medicalRecord':(BuildContext context)=>new medicalRecord(),
        '/verificationCode':(BuildContext context)=>new verificationCode(),
        '/contacts':(BuildContext context)=>new contacts(),
        '/user2Main':(BuildContext context)=>new user2Main(),
        '/questionaireDetails':(BuildContext context)=>new questionaireDetails(),
        '/offlineQuestionnaire':(BuildContext context)=>new offlineQuestionnaire(),
        '/onlineQuestionnaire':(BuildContext context)=>new onlineQuestionnaire(),
        '/endQuestionaire':(BuildContext context)=>new endQuestionaire(),
        '/submitQuestionaire':(BuildContext context)=>new submitQuestionaire(),
        '/yesOrNoQuestionaire':(BuildContext context)=>new yesOrNoQuestionaire(),
        '/writingQuestionaire':(BuildContext context)=>new writingQuestionaire(),
        '/user2Profile':(BuildContext context)=>new user2Profile(),
        '/myQuestionaire':(BuildContext context)=>new myQuestionaire(),
        '/user2Result':(BuildContext context)=>new user2Result(),
        '/user2Notification':(BuildContext context)=>new user2Notification(),
        '/videoQuestionaire':(BuildContext context)=>new videoQuestionaire(),
        '/user3SignUp':(BuildContext context)=>new user3SignUp(),
        '/license':(BuildContext context)=>new license(),
        '/uploadlicense':(BuildContext context)=>new uploadlicense(),
        '/clinicDetails':(BuildContext context)=>new clinicDetails(),
        '/user3Main':(BuildContext context)=>new user3Main(),
        '/reservation':(BuildContext context)=>new reservation(),
        '/user3Profile':(BuildContext context)=>new user3Profile(),
        '/patientReport':(BuildContext context)=>new patientReport(),
        '/specificReport':(BuildContext context)=>new specificReport(),
        '/reportDetail':(BuildContext context)=>new reportDetail(),
        '/coursePresnter':(BuildContext context)=>new coursePresnter(),
        '/individualSignUp':(BuildContext context)=>new individualSignUp(),
        '/centerSignUp':(BuildContext context)=>new centerSignUp(),
        '/user4Main':(BuildContext context)=>new user4Main(),
        '/onlineCourseInformation':(BuildContext context)=>new onlineCourseInformation(),
        '/centerCourseInformation':(BuildContext context)=>new centerCourseInformation(),
        '/endSignUp':(BuildContext context)=>new endSignUp(),
        '/user4Profile':(BuildContext context)=>new user4Profile(),
        '/myCourses':(BuildContext context)=>new myCourses(),
        '/courses':(BuildContext context)=>new courses(),
      },
      home: homePage(),
      localizationsDelegates: translator.delegates, // Android + iOS Delegates
      locale: translator.locale, // Active locale
      supportedLocales: translator.locals(),
    );
  }
}