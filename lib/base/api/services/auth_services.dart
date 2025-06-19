// import 'package:get/get.dart';
// import 'package:sooqyria/base/extensions/extensions.dart';
// import '../../../routes/routes.dart';
//
// import '../../utils/local_storage.dart';
// import '../endpoint/api_endpoint.dart';
// import '../method/request_process.dart';
// import '../model/common_success_model.dart';
//
// class AuthServices {
//   static late LogInModel _logInModel;
//
//   LogInModel get logInModel => _logInModel;
//
//   static late RegisterModel _registerModel;
//
//   RegisterModel get registerModel => _registerModel;
//
//   static late FindUserSendCodeModel _findUserSendCodeModel;
//
//   FindUserSendCodeModel get findUserSendCodeModel => _findUserSendCodeModel;
//   static late ForgotPasswordAndVerifyModel _forgotPasswordAndVerifyModel;
//
//   ForgotPasswordAndVerifyModel get forgotPasswordAndVerifyModel =>
//       _forgotPasswordAndVerifyModel;
//
//   static late CommonSuccessModel _commonSuccessModel;
//
//   CommonSuccessModel get commonSuccessModel => _commonSuccessModel;
//
//   // LOGIN SERVICE - - - - - - - - - - - - - - - - -
//
//
//   // LOG OUT SERVICE - - - - - - - - - - - - - - - - -
//
//
//   // RESEND PASSWORD SERVICE - - - - - - - - - - - - - - - - -
//   static Future<CommonSuccessModel?> resendForgotOtpCode({
//     required RxBool isResendLoading,
//   }) async {
//     return RequestProcess().request<CommonSuccessModel>(
//       fromJson: CommonSuccessModel.fromJson,
//       apiEndpoint: ApiEndpoint.resendForgotOtpCode,
//       queryParams: {'token': LocalStorage.temporaryToken},
//       isLoading: isResendLoading,
//       onSuccess: (value) {
//         _commonSuccessModel = value!;
//       },
//     );
//   }
//
//   // OTP VERIFICATION SERVICE - - - - - - - - - - - - - - - - -
//
//
//   // RESET PASSWORD SERVICE - - - - - - - - - - - - - - - - -
//   static Future<CommonSuccessModel?> resetPasswordProcess({
//     required RxBool isLoading,
//     required String password,
//     required String confirmPassword,
//   }) async {
//     Map<String, dynamic> inputBody = {
//       'token': LocalStorage.temporaryToken,
//       'password': password,
//       'password_confirmation': confirmPassword,
//     };
//     return RequestProcess().request<CommonSuccessModel>(
//       fromJson: CommonSuccessModel.fromJson,
//       apiEndpoint: ApiEndpoint.resetPassword,
//       isLoading: isLoading,
//       method: HttpMethod.POST,
//       body: inputBody,
//       showSuccessMessage: true,
//       onSuccess: (value) {
//         Get.offAllNamed(Routes.loginScreen);
//       },
//     );
//   }
//
//
//
//   // RESEND OTP CODE - - - - - - - - - - - - - - - - -
//   static Future<CommonSuccessModel?> resendEmailOtpCode({
//     required RxBool isResendLoading,
//   }) async {
//     return RequestProcess().request<CommonSuccessModel>(
//       fromJson: CommonSuccessModel.fromJson,
//       apiEndpoint: ApiEndpoint.resendEmailOtp,
//       queryParams: {'token': LocalStorage.temporaryToken},
//       isLoading: isResendLoading,
//       onSuccess: (value) {
//         _commonSuccessModel = value!;
//       },
//     );
//   }
//
//   // DELETE ACCOUNT SERVICE - - - - - - - - - - - - - - - - -
//   static Future<CommonSuccessModel?> deleteAccountServices({
//     required RxBool isLoading,
//   }) async {
//     Map<String, dynamic> inputBody = {};
//     return RequestProcess().request<CommonSuccessModel>(
//       fromJson: CommonSuccessModel.fromJson,
//       apiEndpoint: ApiEndpoint.deleteAccount,
//       isLoading: isLoading,
//       method: HttpMethod.POST,
//       body: inputBody,
//       onSuccess: (value) {
//         _commonSuccessModel = value!;
//         Get.offAllNamed(Routes.loginScreen);
//         LocalStorage.clear();
//       },
//     );
//   }
// }
