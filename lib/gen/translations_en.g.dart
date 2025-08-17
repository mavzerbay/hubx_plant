///
/// Generated file. Do not edit.
///
// coverage:ignore-file
// ignore_for_file: type=lint, unused_import

import 'package:flutter/widgets.dart';
import 'package:intl/intl.dart';
import 'package:slang/generated.dart';
import 'translations.g.dart';

// Path: <root>
class TranslationsEn extends Translations {
	/// You can call this constructor and build your own translation instance of this locale.
	/// Constructing via the enum [AppLocale.build] is preferred.
	TranslationsEn({Map<String, Node>? overrides, PluralResolver? cardinalResolver, PluralResolver? ordinalResolver, TranslationMetadata<AppLocale, Translations>? meta})
		: assert(overrides == null, 'Set "translation_overrides: true" in order to enable this feature.'),
		  $meta = meta ?? TranslationMetadata(
		    locale: AppLocale.en,
		    overrides: overrides ?? {},
		    cardinalResolver: cardinalResolver,
		    ordinalResolver: ordinalResolver,
		    types: {
		      'price': ValueFormatter(() => NumberFormat.currency(symbol: '\$', locale: 'en')),
		    },
		  ),
		  super(cardinalResolver: cardinalResolver, ordinalResolver: ordinalResolver) {
		super.$meta.setFlatMapFunction($meta.getTranslation); // copy base translations to super.$meta
		$meta.setFlatMapFunction(_flatMapFunction);
	}

	/// Metadata for the translations of <en>.
	@override final TranslationMetadata<AppLocale, Translations> $meta;

	/// Access flat map
	@override dynamic operator[](String key) => $meta.getTranslation(key) ?? super.$meta.getTranslation(key);

	late final TranslationsEn _root = this; // ignore: unused_field

	@override 
	TranslationsEn $copyWith({TranslationMetadata<AppLocale, Translations>? meta}) => TranslationsEn(meta: meta ?? this.$meta);

	// Translations
	@override late final _TranslationsAppEn app = _TranslationsAppEn._(_root);
	@override late final _TranslationsBottomNavigationEn bottomNavigation = _TranslationsBottomNavigationEn._(_root);

	/// Translations for global buttons and usages
	@override late final _TranslationsGlobalEn global = _TranslationsGlobalEn._(_root);

	@override late final _TranslationsLoginEn login = _TranslationsLoginEn._(_root);

	/// Translations for buttons
	@override late final _TranslationsButtonsEn buttons = _TranslationsButtonsEn._(_root);

	/// Translations for snackbars
	@override late final _TranslationsSnackbarsEn snackbars = _TranslationsSnackbarsEn._(_root);

	/// Translations related to input fields
	@override late final _TranslationsInputsEn inputs = _TranslationsInputsEn._(_root);

	/// Validation messages
	@override late final _TranslationsValidationEn validation = _TranslationsValidationEn._(_root);

	/// Error messages
	@override late final _TranslationsExceptionEn exception = _TranslationsExceptionEn._(_root);

	/// Onboarding screen translations
	@override late final _TranslationsOnboardingEn onboarding = _TranslationsOnboardingEn._(_root);

	/// Home screen translations
	@override late final _TranslationsHomeEn home = _TranslationsHomeEn._(_root);

	@override late final _TranslationsPaywallEn paywall = _TranslationsPaywallEn._(_root);
}

// Path: app
class _TranslationsAppEn extends TranslationsAppTr {
	_TranslationsAppEn._(TranslationsEn root) : this._root = root, super.internal(root);

	final TranslationsEn _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsAppThemeEn theme = _TranslationsAppThemeEn._(_root);
}

// Path: bottomNavigation
class _TranslationsBottomNavigationEn extends TranslationsBottomNavigationTr {
	_TranslationsBottomNavigationEn._(TranslationsEn root) : this._root = root, super.internal(root);

	final TranslationsEn _root; // ignore: unused_field

	// Translations
	@override String get home => 'Home';
	@override String get diagnose => 'Diagnose';
	@override String get myGarden => 'My Garden';
	@override String get profile => 'Profile';
}

// Path: global
class _TranslationsGlobalEn extends TranslationsGlobalTr {
	_TranslationsGlobalEn._(TranslationsEn root) : this._root = root, super.internal(root);

	final TranslationsEn _root; // ignore: unused_field

	// Translations
	@override String get ok => 'OK';
	@override String get cancel => 'Cancel';
	@override String get retry => 'Retry';
	@override String get yes => 'Yes';
	@override String get no => 'No';
	@override String get close => 'Close';
	@override String get decline => 'Decline';
	@override String get accept => 'Accept';
	@override String get save => 'Save';
	@override String get delete => 'Delete';
	@override String get reset => 'Reset';
	@override String get loading => 'Loading...';
	@override String get goToService => 'Go to Service';
	@override String get kNew => 'New';
	@override TextSpan resultCount({required InlineSpan count}) => TextSpan(children: [
		count,
		const TextSpan(text: ' Results found'),
	]);
	@override String get clear => 'Clear';
	@override String get filter => 'Filter';
	@override String get applyFilter => 'Apply Filter';
	@override String get showMore => 'Show More';
	@override String get showLess => 'Show Less';
	@override String get showAll => 'Show All';
	@override String get location => 'Location';
	@override String get myLocation => 'My Location';
	@override String hello({required Object name}) => 'Hello ${name}';
	@override String get show => 'Show';
	@override String get hide => 'Hide';
	@override String get refresh => 'Refresh';
	@override String get dayError => 'Day selection required!';
	@override String get details => 'Details';
	@override String get directions => 'Directions';
	@override String get next => 'Next';
	@override String get kContinue => 'Continue';
	@override String get skip => 'Skip';
}

// Path: login
class _TranslationsLoginEn extends TranslationsLoginTr {
	_TranslationsLoginEn._(TranslationsEn root) : this._root = root, super.internal(root);

	final TranslationsEn _root; // ignore: unused_field

	// Translations
	@override String get title => 'Welcome';
	@override String get subtitle => 'Tempus varius a vitae interdum id\ntortor elementum tristique eleifend at.';
	@override String get forgotPassword => 'Forgot Password';
	@override String get loginButton => 'Login';
	@override String get registerButton => 'Register';
	@override TextSpan dontHaveAccount({required InlineSpanBuilder register}) => TextSpan(children: [
		const TextSpan(text: 'Don\'t have an account? '),
		register('Register'),
		const TextSpan(text: '!'),
	]);
	@override String get invalidCredentials => 'Invalid email or password!';
	@override String get loginSuccess => 'Logged in successfully!';
	@override String get loginFailed => 'Login failed!';
}

// Path: buttons
class _TranslationsButtonsEn extends TranslationsButtonsTr {
	_TranslationsButtonsEn._(TranslationsEn root) : this._root = root, super.internal(root);

	final TranslationsEn _root; // ignore: unused_field

	// Translations
	@override String get takePhoto => 'Take Photo';
	@override String get selectFromGallery => 'Select from Gallery';
	@override String get selectFromCamera => 'Select from Camera';
	@override String get selectFromFiles => 'Select from Files';
}

// Path: snackbars
class _TranslationsSnackbarsEn extends TranslationsSnackbarsTr {
	_TranslationsSnackbarsEn._(TranslationsEn root) : this._root = root, super.internal(root);

	final TranslationsEn _root; // ignore: unused_field

	// Translations
	@override String get success => 'Success';
	@override String get error => 'Error';
	@override String get info => 'Info';
	@override String get warning => 'Warning';
}

// Path: inputs
class _TranslationsInputsEn extends TranslationsInputsTr {
	_TranslationsInputsEn._(TranslationsEn root) : this._root = root, super.internal(root);

	final TranslationsEn _root; // ignore: unused_field

	// Translations

	/// Hints for input fields
	@override late final _TranslationsInputsHintsEn hints = _TranslationsInputsHintsEn._(_root);

	@override String get email => 'Email';
	@override String get password => 'Password';
	@override String get confirmPassword => 'Confirm Password';
	@override String get name => 'Full Name';
}

// Path: validation
class _TranslationsValidationEn extends TranslationsValidationTr {
	_TranslationsValidationEn._(TranslationsEn root) : this._root = root, super.internal(root);

	final TranslationsEn _root; // ignore: unused_field

	// Translations
	@override String get emailCannotBeEmpty => 'Email address cannot be empty!';
	@override String get emailIsNotValid => 'Please enter a valid email address!';
	@override String get usernameIsNotValid => 'Please enter a valid username!';
	@override String get invalidDate => 'Please enter a valid date!';
	@override String get passwordCannotBeEmpty => 'Password cannot be empty!';
	@override String get passwordIsNotValid => 'Your password must include at least one uppercase letter, one lowercase letter, one digit, and a special character (#?!@%^&*-).';
	@override String get passwordsNotMatch => 'Passwords do not match!';
	@override String required({required Object name}) => '${name} field cannot be empty!';
	@override String get invalidPhoneNumber => 'Please enter a valid phone number!';
	@override String minLength({required Object name, required Object min}) => '${name} field must be at least ${min} characters!';
	@override String maxLength({required Object name, required Object max}) => '${name} field must be at most ${max} characters!';
	@override String minDate({required Object name, required Object min}) => '${name} field cannot be earlier than ${min}!';
	@override String maxDate({required Object name, required Object max}) => '${name} field cannot be later than ${max}!';
	@override String requiredTrue({required Object name}) => 'You must approve the ${name} field!';
	@override String pattern({required Object name}) => '${name} field must be in a valid format!';
}

// Path: exception
class _TranslationsExceptionEn extends TranslationsExceptionTr {
	_TranslationsExceptionEn._(TranslationsEn root) : this._root = root, super.internal(root);

	final TranslationsEn _root; // ignore: unused_field

	// Translations
	@override String get noInternetConnection => 'No internet connection!';
	@override String get timeout => 'The operation timed out!';
	@override String get unknown => 'An unknown error occurred!';
	@override String get cancellation => 'The operation was cancelled!';
	@override String get tokenExpired => 'Your session has expired!';
	@override String get server => 'An error occurred while communicating with the server!';
	@override Map<String, String> get errorCodes => {
		'USER_EXISTS': 'User already exists',
		'INVALID_CREDENTIALS': 'Invalid email or password',
		'REQUEST_ENTITY_TOO_LARGE': 'The uploaded file is too large, please upload a smaller file!',
	};
}

// Path: onboarding
class _TranslationsOnboardingEn extends TranslationsOnboardingTr {
	_TranslationsOnboardingEn._(TranslationsEn root) : this._root = root, super.internal(root);

	final TranslationsEn _root; // ignore: unused_field

	// Translations
	@override String get getStarted => 'Get Started';
	@override String get kContinue => 'Continue';
	@override late final _TranslationsOnboardingPage1En page1 = _TranslationsOnboardingPage1En._(_root);
	@override late final _TranslationsOnboardingPage2En page2 = _TranslationsOnboardingPage2En._(_root);
	@override late final _TranslationsOnboardingPage3En page3 = _TranslationsOnboardingPage3En._(_root);
	@override TextSpan termsText({required InlineSpanBuilder terms, required InlineSpanBuilder privacy}) => TextSpan(children: [
		const TextSpan(text: 'By tapping next, you are agreeing to PlantID\n'),
		terms('Terms of Use'),
		const TextSpan(text: ' & '),
		privacy('Privacy Policy'),
	]);
}

// Path: home
class _TranslationsHomeEn extends TranslationsHomeTr {
	_TranslationsHomeEn._(TranslationsEn root) : this._root = root, super.internal(root);

	final TranslationsEn _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsHomeGreetingEn greeting = _TranslationsHomeGreetingEn._(_root);
	@override String get searchPlaceholder => 'Search for plants';
	@override late final _TranslationsHomePremiumEn premium = _TranslationsHomePremiumEn._(_root);
	@override String get scanPlant => 'Scan Plant';
	@override String get featured => 'Featured';
	@override late final _TranslationsHomeCategoriesEn categories = _TranslationsHomeCategoriesEn._(_root);
	@override late final _TranslationsHomeFeaturesEn features = _TranslationsHomeFeaturesEn._(_root);
}

// Path: paywall
class _TranslationsPaywallEn extends TranslationsPaywallTr {
	_TranslationsPaywallEn._(TranslationsEn root) : this._root = root, super.internal(root);

	final TranslationsEn _root; // ignore: unused_field

	// Translations
	@override TextSpan title({required InlineSpanBuilder logo}) => TextSpan(children: [
		logo('PlantApp'),
		const TextSpan(text: ' Premium'),
	]);
	@override String get subtitle => 'Access All Features';
	@override late final _TranslationsPaywallFeaturesEn features = _TranslationsPaywallFeaturesEn._(_root);
	@override late final _TranslationsPaywallPricingEn pricing = _TranslationsPaywallPricingEn._(_root);
	@override String bottomText({required num amount}) => 'After the 3-day free trial ends, you will be charged ${_root.$meta.types['price']!.format(amount)} for the annual subscription unless you cancel before the trial ends. Annual Subscription Auto-Renews.';
	@override String get terms => 'Terms • Privacy • Restore';
	@override late final _TranslationsPaywallActionsEn actions = _TranslationsPaywallActionsEn._(_root);
}

// Path: app.theme
class _TranslationsAppThemeEn extends TranslationsAppThemeTr {
	_TranslationsAppThemeEn._(TranslationsEn root) : this._root = root, super.internal(root);

	final TranslationsEn _root; // ignore: unused_field

	// Translations
	@override String get title => 'App Theme';
	@override String get system => 'System';
	@override String get light => 'Light';
	@override String get dark => 'Dark';
}

// Path: inputs.hints
class _TranslationsInputsHintsEn extends TranslationsInputsHintsTr {
	_TranslationsInputsHintsEn._(TranslationsEn root) : this._root = root, super.internal(root);

	final TranslationsEn _root; // ignore: unused_field

	// Translations
	@override String get email => 'You can enter your email address here';
	@override String get password => 'You can enter your password here';
	@override String get confirmPassword => 'You can confirm your password here';
	@override String get name => 'You can enter your name here';
}

// Path: onboarding.page1
class _TranslationsOnboardingPage1En extends TranslationsOnboardingPage1Tr {
	_TranslationsOnboardingPage1En._(TranslationsEn root) : this._root = root, super.internal(root);

	final TranslationsEn _root; // ignore: unused_field

	// Translations
	@override TextSpan title({required InlineSpanBuilder app}) => TextSpan(children: [
		const TextSpan(text: 'Welcome to '),
		app('PlantApp'),
	]);
	@override String get subtitle => 'Identify more than 3000+ plants and 88% accuracy.';
}

// Path: onboarding.page2
class _TranslationsOnboardingPage2En extends TranslationsOnboardingPage2Tr {
	_TranslationsOnboardingPage2En._(TranslationsEn root) : this._root = root, super.internal(root);

	final TranslationsEn _root; // ignore: unused_field

	// Translations
	@override TextSpan title({required InlineSpanBuilder identify}) => TextSpan(children: [
		const TextSpan(text: 'Take a photo to '),
		identify('identify'),
		const TextSpan(text: '\nthe plant!'),
	]);
}

// Path: onboarding.page3
class _TranslationsOnboardingPage3En extends TranslationsOnboardingPage3Tr {
	_TranslationsOnboardingPage3En._(TranslationsEn root) : this._root = root, super.internal(root);

	final TranslationsEn _root; // ignore: unused_field

	// Translations
	@override TextSpan title({required InlineSpanBuilder careguides}) => TextSpan(children: [
		const TextSpan(text: 'Get plant '),
		careguides('care guides'),
	]);
}

// Path: home.greeting
class _TranslationsHomeGreetingEn extends TranslationsHomeGreetingTr {
	_TranslationsHomeGreetingEn._(TranslationsEn root) : this._root = root, super.internal(root);

	final TranslationsEn _root; // ignore: unused_field

	// Translations
	@override String get hiPlantLover => 'Hi, plant lover!';
	@override String get goodMorning => 'Good Morning! ⛅';
	@override String get goodAfternoon => 'Good Afternoon! ⛅';
	@override String get goodEvening => 'Good Evening! 🌙';
}

// Path: home.premium
class _TranslationsHomePremiumEn extends TranslationsHomePremiumTr {
	_TranslationsHomePremiumEn._(TranslationsEn root) : this._root = root, super.internal(root);

	final TranslationsEn _root; // ignore: unused_field

	// Translations
	@override String get title => 'FREE Premium Available';
	@override String get subtitle => 'Tap to upgrade your account!';
}

// Path: home.categories
class _TranslationsHomeCategoriesEn extends TranslationsHomeCategoriesTr {
	_TranslationsHomeCategoriesEn._(TranslationsEn root) : this._root = root, super.internal(root);

	final TranslationsEn _root; // ignore: unused_field

	// Translations
	@override String get ediblePlants => 'Edible Plants';
	@override String get ferns => 'Ferns';
	@override String get cactiAndSucculents => 'Cacti and Succulents';
	@override String get palms => 'Palms';
}

// Path: home.features
class _TranslationsHomeFeaturesEn extends TranslationsHomeFeaturesTr {
	_TranslationsHomeFeaturesEn._(TranslationsEn root) : this._root = root, super.internal(root);

	final TranslationsEn _root; // ignore: unused_field

	// Translations
	@override String get identifyPlants => 'How to identify plants easily\nwith PlantApp?';
	@override String get speciesDifference => 'Species and subspecies:\nthe difference';
}

// Path: paywall.features
class _TranslationsPaywallFeaturesEn extends TranslationsPaywallFeaturesTr {
	_TranslationsPaywallFeaturesEn._(TranslationsEn root) : this._root = root, super.internal(root);

	final TranslationsEn _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsPaywallFeaturesUnlimitedEn unlimited = _TranslationsPaywallFeaturesUnlimitedEn._(_root);
	@override late final _TranslationsPaywallFeaturesFasterEn faster = _TranslationsPaywallFeaturesFasterEn._(_root);
	@override late final _TranslationsPaywallFeaturesExclusiveEn exclusive = _TranslationsPaywallFeaturesExclusiveEn._(_root);
}

// Path: paywall.pricing
class _TranslationsPaywallPricingEn extends TranslationsPaywallPricingTr {
	_TranslationsPaywallPricingEn._(TranslationsEn root) : this._root = root, super.internal(root);

	final TranslationsEn _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsPaywallPricingMonthlyEn monthly = _TranslationsPaywallPricingMonthlyEn._(_root);
	@override late final _TranslationsPaywallPricingYearlyEn yearly = _TranslationsPaywallPricingYearlyEn._(_root);
}

// Path: paywall.actions
class _TranslationsPaywallActionsEn extends TranslationsPaywallActionsTr {
	_TranslationsPaywallActionsEn._(TranslationsEn root) : this._root = root, super.internal(root);

	final TranslationsEn _root; // ignore: unused_field

	// Translations
	@override String get subscribe => 'Subscribe';
	@override String get tryFree => 'Try free for 3 days';
}

// Path: paywall.features.unlimited
class _TranslationsPaywallFeaturesUnlimitedEn extends TranslationsPaywallFeaturesUnlimitedTr {
	_TranslationsPaywallFeaturesUnlimitedEn._(TranslationsEn root) : this._root = root, super.internal(root);

	final TranslationsEn _root; // ignore: unused_field

	// Translations
	@override String get title => 'Unlimited';
	@override String get description => 'Plant Identify';
}

// Path: paywall.features.faster
class _TranslationsPaywallFeaturesFasterEn extends TranslationsPaywallFeaturesFasterTr {
	_TranslationsPaywallFeaturesFasterEn._(TranslationsEn root) : this._root = root, super.internal(root);

	final TranslationsEn _root; // ignore: unused_field

	// Translations
	@override String get title => 'Faster';
	@override String get description => 'Process';
}

// Path: paywall.features.exclusive
class _TranslationsPaywallFeaturesExclusiveEn extends TranslationsPaywallFeaturesExclusiveTr {
	_TranslationsPaywallFeaturesExclusiveEn._(TranslationsEn root) : this._root = root, super.internal(root);

	final TranslationsEn _root; // ignore: unused_field

	// Translations
	@override String get title => 'Exclusive';
	@override String get description => 'Content';
}

// Path: paywall.pricing.monthly
class _TranslationsPaywallPricingMonthlyEn extends TranslationsPaywallPricingMonthlyTr {
	_TranslationsPaywallPricingMonthlyEn._(TranslationsEn root) : this._root = root, super.internal(root);

	final TranslationsEn _root; // ignore: unused_field

	// Translations
	@override String get title => '1 Month';
	@override String description({required num amount}) => '${_root.$meta.types['price']!.format(amount)}/month, auto-renewal';
}

// Path: paywall.pricing.yearly
class _TranslationsPaywallPricingYearlyEn extends TranslationsPaywallPricingYearlyTr {
	_TranslationsPaywallPricingYearlyEn._(TranslationsEn root) : this._root = root, super.internal(root);

	final TranslationsEn _root; // ignore: unused_field

	// Translations
	@override String get title => '1 Year';
	@override String description({required num amount}) => 'First 3 days free, then ${_root.$meta.types['price']!.format(amount)}/year';
	@override String get discount => 'Save 50%';
}

/// Flat map(s) containing all translations.
/// Only for edge cases! For simple maps, use the map function of this library.
extension on TranslationsEn {
	dynamic _flatMapFunction(String path) {
		switch (path) {
			case 'app.theme.title': return 'App Theme';
			case 'app.theme.system': return 'System';
			case 'app.theme.light': return 'Light';
			case 'app.theme.dark': return 'Dark';
			case 'bottomNavigation.home': return 'Home';
			case 'bottomNavigation.diagnose': return 'Diagnose';
			case 'bottomNavigation.myGarden': return 'My Garden';
			case 'bottomNavigation.profile': return 'Profile';
			case 'global.ok': return 'OK';
			case 'global.cancel': return 'Cancel';
			case 'global.retry': return 'Retry';
			case 'global.yes': return 'Yes';
			case 'global.no': return 'No';
			case 'global.close': return 'Close';
			case 'global.decline': return 'Decline';
			case 'global.accept': return 'Accept';
			case 'global.save': return 'Save';
			case 'global.delete': return 'Delete';
			case 'global.reset': return 'Reset';
			case 'global.loading': return 'Loading...';
			case 'global.goToService': return 'Go to Service';
			case 'global.kNew': return 'New';
			case 'global.resultCount': return ({required InlineSpan count}) => TextSpan(children: [
				count,
				const TextSpan(text: ' Results found'),
			]);
			case 'global.clear': return 'Clear';
			case 'global.filter': return 'Filter';
			case 'global.applyFilter': return 'Apply Filter';
			case 'global.showMore': return 'Show More';
			case 'global.showLess': return 'Show Less';
			case 'global.showAll': return 'Show All';
			case 'global.location': return 'Location';
			case 'global.myLocation': return 'My Location';
			case 'global.hello': return ({required Object name}) => 'Hello ${name}';
			case 'global.show': return 'Show';
			case 'global.hide': return 'Hide';
			case 'global.refresh': return 'Refresh';
			case 'global.dayError': return 'Day selection required!';
			case 'global.details': return 'Details';
			case 'global.directions': return 'Directions';
			case 'global.next': return 'Next';
			case 'global.kContinue': return 'Continue';
			case 'global.skip': return 'Skip';
			case 'login.title': return 'Welcome';
			case 'login.subtitle': return 'Tempus varius a vitae interdum id\ntortor elementum tristique eleifend at.';
			case 'login.forgotPassword': return 'Forgot Password';
			case 'login.loginButton': return 'Login';
			case 'login.registerButton': return 'Register';
			case 'login.dontHaveAccount': return ({required InlineSpanBuilder register}) => TextSpan(children: [
				const TextSpan(text: 'Don\'t have an account? '),
				register('Register'),
				const TextSpan(text: '!'),
			]);
			case 'login.invalidCredentials': return 'Invalid email or password!';
			case 'login.loginSuccess': return 'Logged in successfully!';
			case 'login.loginFailed': return 'Login failed!';
			case 'buttons.takePhoto': return 'Take Photo';
			case 'buttons.selectFromGallery': return 'Select from Gallery';
			case 'buttons.selectFromCamera': return 'Select from Camera';
			case 'buttons.selectFromFiles': return 'Select from Files';
			case 'snackbars.success': return 'Success';
			case 'snackbars.error': return 'Error';
			case 'snackbars.info': return 'Info';
			case 'snackbars.warning': return 'Warning';
			case 'inputs.hints.email': return 'You can enter your email address here';
			case 'inputs.hints.password': return 'You can enter your password here';
			case 'inputs.hints.confirmPassword': return 'You can confirm your password here';
			case 'inputs.hints.name': return 'You can enter your name here';
			case 'inputs.email': return 'Email';
			case 'inputs.password': return 'Password';
			case 'inputs.confirmPassword': return 'Confirm Password';
			case 'inputs.name': return 'Full Name';
			case 'validation.emailCannotBeEmpty': return 'Email address cannot be empty!';
			case 'validation.emailIsNotValid': return 'Please enter a valid email address!';
			case 'validation.usernameIsNotValid': return 'Please enter a valid username!';
			case 'validation.invalidDate': return 'Please enter a valid date!';
			case 'validation.passwordCannotBeEmpty': return 'Password cannot be empty!';
			case 'validation.passwordIsNotValid': return 'Your password must include at least one uppercase letter, one lowercase letter, one digit, and a special character (#?!@%^&*-).';
			case 'validation.passwordsNotMatch': return 'Passwords do not match!';
			case 'validation.required': return ({required Object name}) => '${name} field cannot be empty!';
			case 'validation.invalidPhoneNumber': return 'Please enter a valid phone number!';
			case 'validation.minLength': return ({required Object name, required Object min}) => '${name} field must be at least ${min} characters!';
			case 'validation.maxLength': return ({required Object name, required Object max}) => '${name} field must be at most ${max} characters!';
			case 'validation.minDate': return ({required Object name, required Object min}) => '${name} field cannot be earlier than ${min}!';
			case 'validation.maxDate': return ({required Object name, required Object max}) => '${name} field cannot be later than ${max}!';
			case 'validation.requiredTrue': return ({required Object name}) => 'You must approve the ${name} field!';
			case 'validation.pattern': return ({required Object name}) => '${name} field must be in a valid format!';
			case 'exception.noInternetConnection': return 'No internet connection!';
			case 'exception.timeout': return 'The operation timed out!';
			case 'exception.unknown': return 'An unknown error occurred!';
			case 'exception.cancellation': return 'The operation was cancelled!';
			case 'exception.tokenExpired': return 'Your session has expired!';
			case 'exception.server': return 'An error occurred while communicating with the server!';
			case 'exception.errorCodes.USER_EXISTS': return 'User already exists';
			case 'exception.errorCodes.INVALID_CREDENTIALS': return 'Invalid email or password';
			case 'exception.errorCodes.REQUEST_ENTITY_TOO_LARGE': return 'The uploaded file is too large, please upload a smaller file!';
			case 'onboarding.getStarted': return 'Get Started';
			case 'onboarding.kContinue': return 'Continue';
			case 'onboarding.page1.title': return ({required InlineSpanBuilder app}) => TextSpan(children: [
				const TextSpan(text: 'Welcome to '),
				app('PlantApp'),
			]);
			case 'onboarding.page1.subtitle': return 'Identify more than 3000+ plants and 88% accuracy.';
			case 'onboarding.page2.title': return ({required InlineSpanBuilder identify}) => TextSpan(children: [
				const TextSpan(text: 'Take a photo to '),
				identify('identify'),
				const TextSpan(text: '\nthe plant!'),
			]);
			case 'onboarding.page3.title': return ({required InlineSpanBuilder careguides}) => TextSpan(children: [
				const TextSpan(text: 'Get plant '),
				careguides('care guides'),
			]);
			case 'onboarding.termsText': return ({required InlineSpanBuilder terms, required InlineSpanBuilder privacy}) => TextSpan(children: [
				const TextSpan(text: 'By tapping next, you are agreeing to PlantID\n'),
				terms('Terms of Use'),
				const TextSpan(text: ' & '),
				privacy('Privacy Policy'),
			]);
			case 'home.greeting.hiPlantLover': return 'Hi, plant lover!';
			case 'home.greeting.goodMorning': return 'Good Morning! ⛅';
			case 'home.greeting.goodAfternoon': return 'Good Afternoon! ⛅';
			case 'home.greeting.goodEvening': return 'Good Evening! 🌙';
			case 'home.searchPlaceholder': return 'Search for plants';
			case 'home.premium.title': return 'FREE Premium Available';
			case 'home.premium.subtitle': return 'Tap to upgrade your account!';
			case 'home.scanPlant': return 'Scan Plant';
			case 'home.featured': return 'Featured';
			case 'home.categories.ediblePlants': return 'Edible Plants';
			case 'home.categories.ferns': return 'Ferns';
			case 'home.categories.cactiAndSucculents': return 'Cacti and Succulents';
			case 'home.categories.palms': return 'Palms';
			case 'home.features.identifyPlants': return 'How to identify plants easily\nwith PlantApp?';
			case 'home.features.speciesDifference': return 'Species and subspecies:\nthe difference';
			case 'paywall.title': return ({required InlineSpanBuilder logo}) => TextSpan(children: [
				logo('PlantApp'),
				const TextSpan(text: ' Premium'),
			]);
			case 'paywall.subtitle': return 'Access All Features';
			case 'paywall.features.unlimited.title': return 'Unlimited';
			case 'paywall.features.unlimited.description': return 'Plant Identify';
			case 'paywall.features.faster.title': return 'Faster';
			case 'paywall.features.faster.description': return 'Process';
			case 'paywall.features.exclusive.title': return 'Exclusive';
			case 'paywall.features.exclusive.description': return 'Content';
			case 'paywall.pricing.monthly.title': return '1 Month';
			case 'paywall.pricing.monthly.description': return ({required num amount}) => '${_root.$meta.types['price']!.format(amount)}/month, auto-renewal';
			case 'paywall.pricing.yearly.title': return '1 Year';
			case 'paywall.pricing.yearly.description': return ({required num amount}) => 'First 3 days free, then ${_root.$meta.types['price']!.format(amount)}/year';
			case 'paywall.pricing.yearly.discount': return 'Save 50%';
			case 'paywall.bottomText': return ({required num amount}) => 'After the 3-day free trial ends, you will be charged ${_root.$meta.types['price']!.format(amount)} for the annual subscription unless you cancel before the trial ends. Annual Subscription Auto-Renews.';
			case 'paywall.terms': return 'Terms • Privacy • Restore';
			case 'paywall.actions.subscribe': return 'Subscribe';
			case 'paywall.actions.tryFree': return 'Try free for 3 days';
			default: return null;
		}
	}
}

