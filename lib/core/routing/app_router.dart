import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:insighta/bottom_navigation_bar.dart';
import 'package:insighta/core/di/dependency_injection.dart';
import 'package:insighta/core/routing/routes.dart';
import 'package:insighta/features/auth/forget_password/logic/forget_password_cubit/forget_password_cubit.dart';
import 'package:insighta/features/auth/forget_password/ui/forget_password_screen.dart';
import 'package:insighta/features/auth/login/logic/facebook_login_cubit/facebook_login_cubit.dart';
import 'package:insighta/features/auth/login/logic/login_cubit/login_cubit.dart';
import 'package:insighta/features/auth/login/ui/login_screen.dart';
import 'package:insighta/features/auth/otp/logic/otp_reset_pass_cubit/otp_reset_pass_cubit.dart';
import 'package:insighta/features/auth/otp/ui/otp_screen.dart';
import 'package:insighta/features/auth/reset_password/logic/reset_password_cubit/reset_password_cubit.dart';
import 'package:insighta/features/auth/reset_password/ui/reset_password_screen.dart';
import 'package:insighta/features/auth/sign_up/logic/signup_cubit/signup_cubit.dart';
import 'package:insighta/features/auth/sign_up/ui/sign_up_screen.dart';
import 'package:insighta/features/home/ui/home_screen.dart';

import 'package:insighta/features/notification/ui/notification_screen.dart';
import 'package:insighta/features/onboarding/ui/onBoarding_screen.dart';
import 'package:insighta/features/parent_child/data/models/linked_account_model.dart';
import 'package:insighta/features/parent_child/ui/linked_account_report_screen.dart';
import 'package:insighta/features/parent_child/ui/parent_child_screen.dart';
import 'package:insighta/features/profile/logic/change_avatar_cubit/change_avatar_cubit.dart';
import 'package:insighta/features/profile/logic/delete_account_cubit/delete_account_cubit.dart';

import 'package:insighta/features/profile/ui/about_screen.dart';
import 'package:insighta/features/profile/ui/about_your_account_screen.dart';
import 'package:insighta/features/profile/ui/delete_account_screen.dart';
import 'package:insighta/features/profile/ui/edit_profile_screen.dart';
import 'package:insighta/features/profile/ui/help_screen.dart';
import 'package:insighta/features/profile/ui/privacy_policy_screen.dart';
import 'package:insighta/features/profile/ui/profile_screen.dart';
import 'package:insighta/features/profile/ui/settings_screen.dart';
import 'package:insighta/features/report/ui/report_card_details_screen.dart';
import 'package:insighta/features/report/ui/report_screen.dart';
import 'package:insighta/features/suggest/logic/get_books_cubit/get_books_cubit.dart';

import 'package:insighta/features/suggest/ui/suggest_screen.dart';
import 'package:insighta/features/therapy/logic/get_therapist_cubit/get_therapist_cubit.dart';
import 'package:insighta/features/therapy/ui/select_time_slots_screen.dart';
import 'package:insighta/features/therapy/ui/booking_success_screen.dart';
import 'package:insighta/features/therapy/ui/therapy_screen.dart';
import 'package:insighta/features/usage/ui/usage_screen.dart';

class AppRouter {
  Route generateRoute(RouteSettings settings) {
    //
    final arguments = settings.arguments;
    switch (settings.name) {
      case Routes.onBoardingScreen:
        return MaterialPageRoute(builder: (_) => const onBoardingScreen());
      case Routes.logInScreen:
        return MaterialPageRoute(
            builder: (_) => MultiBlocProvider(
                  providers: [
                    BlocProvider(
                      create: (context) => getIt<LoginCubit>(),
                    ),
                    BlocProvider(
                      create: (context) => getIt<FacebookLoginCubit>(),
                    ),
                  ],
                  child: LoginScreen(),
                ));
      case Routes.signUpScreen:
        return MaterialPageRoute(
            builder: (_) => BlocProvider(
                  create: (context) => getIt<SignupCubit>(),
                  child: const SignUpScreen(),
                ));

      case Routes.forgetPasswordScreen:
        return MaterialPageRoute(
            builder: (_) => BlocProvider(
                  create: (context) => getIt<ForgetPasswordCubit>(),
                  child: const ForgetPasswordScreen(),
                ));
      case Routes.otpScreen:
        return MaterialPageRoute(
            builder: (_) => BlocProvider(
                  create: (context) => getIt<OtpResetPassCubit>(),
                  child: const OtpScreen(),
                ));
      case Routes.resetPasswordScreen:
        return MaterialPageRoute(
            builder: (_) => BlocProvider(
                  create: (context) => getIt<ResetPasswordCubit>(),
                  child: const ResetPasswordScreen(),
                ));
      case Routes.navBarScreen:
        return MaterialPageRoute(builder: (_) => const navBar());
      case Routes.homeScreen:
        return MaterialPageRoute(builder: (_) => const HomeScreen());
      case Routes.notificationScreen:
        return MaterialPageRoute(builder: (_) => const NotificationScreen());
      case Routes.parentChildScreen:
        return MaterialPageRoute(builder: (_) => const ParentChildScreen());
      case Routes.profileScreen:
        return MaterialPageRoute(
            builder: (_) => BlocProvider(
                  create: (context) => getIt<ChangeAvatarCubit>(),
                  child: const ProfileScreen(),
                ));
      case Routes.editProfileScreen:
        return MaterialPageRoute(
            builder: (_) => BlocProvider(
                  create: (context) => getIt<ChangeAvatarCubit>(),
                  child: const EditProfileScreen(),
                ));
      case Routes.deleteAccountScreen:
        return MaterialPageRoute(
            builder: (_) => BlocProvider(
                  create: (context) => getIt<DeleteAccountCubit>(),
                  child: const DeleteAccountScreen(),
                ));
      case Routes.settingsScreen:
        return MaterialPageRoute(builder: (_) => const SettingsScreen());
      case Routes.aboutScreen:
        return MaterialPageRoute(builder: (_) => const AboutScreen());
      case Routes.aboutYourAccountScreen:
        return MaterialPageRoute(
            builder: (_) => const AboutYourAccountScreen());
      case Routes.helpScreen:
        return MaterialPageRoute(builder: (_) => const HelpScreen());
      case Routes.privacyPolicyScreen:
        return MaterialPageRoute(builder: (_) => const PrivacyPolicyScreen());
      case Routes.reportScreen:
        return MaterialPageRoute(builder: (_) => const ReportScreen());
      case Routes.linkedAccountReportScreen:
        final args = arguments as LinkedAccountModel;
        return MaterialPageRoute(
            builder: (_) => LinkedAccountReportScreen(account: args));
      case Routes.therapyScreen:
        return MaterialPageRoute(
            builder: (_) => BlocProvider(
                  create: (context) => getIt<GetTherapistCubit>(),
                  child: const TherapyScreen(),
                ));
      case Routes.reportCardDetailsScreen:
        final args = settings.arguments as Map<String, dynamic>?;
        return MaterialPageRoute(
            builder: (_) => ReportCardDetailsScreen(arguments: args));
      case Routes.selectTimeSlotsScreen:
        return MaterialPageRoute(builder: (_) => const SelectTimeSlotsScreen());
      case Routes.bookingSuccessScreen:
        final args = settings.arguments as Map<String, dynamic>;
        return MaterialPageRoute(
            builder: (_) => BookingSuccessScreen(
                  date: args['date'] as DateTime,
                  time: args['time'] as String,
                ));
      case Routes.suggestScreen:
        return MaterialPageRoute(
            builder: (_) => BlocProvider(
                  create: (context) => getIt<GetBooksCubit>(),
                  child: const SuggestScreen(),
                ));

      case Routes.usageScreen:
        return MaterialPageRoute(builder: (_) => const UsageScreen());
      default:
        // If no route matches, show an error screen
        return MaterialPageRoute(
          builder: (_) => Scaffold(
            body: Center(
              child: Text('No route defined for ${settings.name}'),
            ),
          ),
        );
    }
  }
}
