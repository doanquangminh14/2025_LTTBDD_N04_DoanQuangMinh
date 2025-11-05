import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:intl/intl.dart' as intl;

import 'app_localizations_en.dart';
import 'app_localizations_vi.dart';

// ignore_for_file: type=lint

/// Callers can lookup localized strings with an instance of AppLocalizations
/// returned by `AppLocalizations.of(context)`.
///
/// Applications need to include `AppLocalizations.delegate()` in their app's
/// `localizationDelegates` list, and the locales they support in the app's
/// `supportedLocales` list. For example:
///
/// ```dart
/// import 'l10n/app_localizations.dart';
///
/// return MaterialApp(
///   localizationsDelegates: AppLocalizations.localizationsDelegates,
///   supportedLocales: AppLocalizations.supportedLocales,
///   home: MyApplicationHome(),
/// );
/// ```
///
/// ## Update pubspec.yaml
///
/// Please make sure to update your pubspec.yaml to include the following
/// packages:
///
/// ```yaml
/// dependencies:
///   # Internationalization support.
///   flutter_localizations:
///     sdk: flutter
///   intl: any # Use the pinned version from flutter_localizations
///
///   # Rest of dependencies
/// ```
///
/// ## iOS Applications
///
/// iOS applications define key application metadata, including supported
/// locales, in an Info.plist file that is built into the application bundle.
/// To configure the locales supported by your app, you’ll need to edit this
/// file.
///
/// First, open your project’s ios/Runner.xcworkspace Xcode workspace file.
/// Then, in the Project Navigator, open the Info.plist file under the Runner
/// project’s Runner folder.
///
/// Next, select the Information Property List item, select Add Item from the
/// Editor menu, then select Localizations from the pop-up menu.
///
/// Select and expand the newly-created Localizations item then, for each
/// locale your application supports, add a new item and select the locale
/// you wish to add from the pop-up menu in the Value field. This list should
/// be consistent with the languages listed in the AppLocalizations.supportedLocales
/// property.
abstract class AppLocalizations {
  AppLocalizations(String locale)
    : localeName = intl.Intl.canonicalizedLocale(locale.toString());

  final String localeName;

  static AppLocalizations? of(BuildContext context) {
    return Localizations.of<AppLocalizations>(context, AppLocalizations);
  }

  static const LocalizationsDelegate<AppLocalizations> delegate =
      _AppLocalizationsDelegate();

  /// A list of this localizations delegate along with the default localizations
  /// delegates.
  ///
  /// Returns a list of localizations delegates containing this delegate along with
  /// GlobalMaterialLocalizations.delegate, GlobalCupertinoLocalizations.delegate,
  /// and GlobalWidgetsLocalizations.delegate.
  ///
  /// Additional delegates can be added by appending to this list in
  /// MaterialApp. This list does not have to be used at all if a custom list
  /// of delegates is preferred or required.
  static const List<LocalizationsDelegate<dynamic>> localizationsDelegates =
      <LocalizationsDelegate<dynamic>>[
        delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
      ];

  /// A list of this localizations delegate's supported locales.
  static const List<Locale> supportedLocales = <Locale>[
    Locale('en'),
    Locale('vi'),
  ];

  /// No description provided for @personalInformation.
  ///
  /// In en, this message translates to:
  /// **'Personal Information'**
  String get personalInformation;

  /// No description provided for @studentId.
  ///
  /// In en, this message translates to:
  /// **'Student ID'**
  String get studentId;

  /// No description provided for @email.
  ///
  /// In en, this message translates to:
  /// **'Email'**
  String get email;

  /// No description provided for @groupSize.
  ///
  /// In en, this message translates to:
  /// **'Group Size'**
  String get groupSize;

  /// No description provided for @className.
  ///
  /// In en, this message translates to:
  /// **'Class'**
  String get className;

  /// No description provided for @teacher.
  ///
  /// In en, this message translates to:
  /// **'Teacher'**
  String get teacher;

  /// No description provided for @back.
  ///
  /// In en, this message translates to:
  /// **'Back'**
  String get back;

  /// No description provided for @settingsReset.
  ///
  /// In en, this message translates to:
  /// **'Reset'**
  String get settingsReset;

  /// No description provided for @settingsExit.
  ///
  /// In en, this message translates to:
  /// **'Exit App'**
  String get settingsExit;

  /// No description provided for @settingsLanguage.
  ///
  /// In en, this message translates to:
  /// **'Language'**
  String get settingsLanguage;

  /// No description provided for @resultsSessionCompleted.
  ///
  /// In en, this message translates to:
  /// **'Session Completed!'**
  String get resultsSessionCompleted;

  /// No description provided for @resultsRoundCompleted.
  ///
  /// In en, this message translates to:
  /// **'Round Completed!'**
  String get resultsRoundCompleted;

  /// No description provided for @resultsTotalRound.
  ///
  /// In en, this message translates to:
  /// **'Total Round'**
  String get resultsTotalRound;

  /// No description provided for @resultsTotalCards.
  ///
  /// In en, this message translates to:
  /// **'Total Cards'**
  String get resultsTotalCards;

  /// No description provided for @resultsCorrect.
  ///
  /// In en, this message translates to:
  /// **'Correct'**
  String get resultsCorrect;

  /// No description provided for @resultsIncorrect.
  ///
  /// In en, this message translates to:
  /// **'Incorrect'**
  String get resultsIncorrect;

  /// No description provided for @resultsCorrectPercentage.
  ///
  /// In en, this message translates to:
  /// **'Correct Percentage'**
  String get resultsCorrectPercentage;

  /// No description provided for @resultsRetestButton.
  ///
  /// In en, this message translates to:
  /// **'Retest Incorrect Cards'**
  String get resultsRetestButton;

  /// No description provided for @resultsHomeButton.
  ///
  /// In en, this message translates to:
  /// **'Home'**
  String get resultsHomeButton;

  /// No description provided for @appTitle.
  ///
  /// In en, this message translates to:
  /// **'English Flashcards'**
  String get appTitle;

  /// No description provided for @settingsTitle.
  ///
  /// In en, this message translates to:
  /// **'Settings'**
  String get settingsTitle;

  /// No description provided for @settingsVietnameseFirst.
  ///
  /// In en, this message translates to:
  /// **'Show Vietnamese First'**
  String get settingsVietnameseFirst;

  /// No description provided for @settingsShowTranscription.
  ///
  /// In en, this message translates to:
  /// **'Show Transcription'**
  String get settingsShowTranscription;

  /// No description provided for @settingsAudioOnly.
  ///
  /// In en, this message translates to:
  /// **'Test Listening'**
  String get settingsAudioOnly;
}

class _AppLocalizationsDelegate
    extends LocalizationsDelegate<AppLocalizations> {
  const _AppLocalizationsDelegate();

  @override
  Future<AppLocalizations> load(Locale locale) {
    return SynchronousFuture<AppLocalizations>(lookupAppLocalizations(locale));
  }

  @override
  bool isSupported(Locale locale) =>
      <String>['en', 'vi'].contains(locale.languageCode);

  @override
  bool shouldReload(_AppLocalizationsDelegate old) => false;
}

AppLocalizations lookupAppLocalizations(Locale locale) {
  // Lookup logic when only language code is specified.
  switch (locale.languageCode) {
    case 'en':
      return AppLocalizationsEn();
    case 'vi':
      return AppLocalizationsVi();
  }

  throw FlutterError(
    'AppLocalizations.delegate failed to load unsupported locale "$locale". This is likely '
    'an issue with the localizations generation tool. Please file an issue '
    'on GitHub with a reproducible sample app and the gen-l10n configuration '
    'that was used.',
  );
}
