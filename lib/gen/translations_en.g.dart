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

	/// Translations related to authentication
	@override late final _TranslationsAuthEn auth = _TranslationsAuthEn._(_root);

	/// Translations related to registration
	@override late final _TranslationsRegisterEn register = _TranslationsRegisterEn._(_root);

	/// Translations related to profile
	@override late final _TranslationsProfileEn profile = _TranslationsProfileEn._(_root);

	/// Translations related to limited offer modal
	@override late final _TranslationsLimitedOfferModalEn limitedOfferModal = _TranslationsLimitedOfferModalEn._(_root);
}

// Path: bottomNavigation
class _TranslationsBottomNavigationEn extends TranslationsBottomNavigationTr {
	_TranslationsBottomNavigationEn._(TranslationsEn root) : this._root = root, super.internal(root);

	final TranslationsEn _root; // ignore: unused_field

	// Translations
	@override String get home => 'Home';
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

// Path: auth
class _TranslationsAuthEn extends TranslationsAuthTr {
	_TranslationsAuthEn._(TranslationsEn root) : this._root = root, super.internal(root);

	final TranslationsEn _root; // ignore: unused_field

	// Translations
	@override String get logoutConfirmation => 'Are you sure you want to log out?';
	@override String get areYouSure => 'Are you sure?';
	@override String get areYouSureToUpload => 'Are you sure you want to upload the photo?';
	@override String get photoUploadSuccess => 'Photo uploaded successfully!';
}

// Path: register
class _TranslationsRegisterEn extends TranslationsRegisterTr {
	_TranslationsRegisterEn._(TranslationsEn root) : this._root = root, super.internal(root);

	final TranslationsEn _root; // ignore: unused_field

	// Translations
	@override String get title => 'Welcome';
	@override String get subtitle => 'Tempus varius a vitae interdum id\ntortor elementum tristique eleifend at.';
	@override late final _TranslationsRegisterButtonsEn buttons = _TranslationsRegisterButtonsEn._(_root);
	@override late final _TranslationsRegisterGdprEn gdpr = _TranslationsRegisterGdprEn._(_root);
	@override TextSpan doYouHaveAccount({required InlineSpanBuilder login}) => TextSpan(children: [
		const TextSpan(text: 'Do you already have an account? '),
		login('Login'),
		const TextSpan(text: '!'),
	]);
}

// Path: profile
class _TranslationsProfileEn extends TranslationsProfileTr {
	_TranslationsProfileEn._(TranslationsEn root) : this._root = root, super.internal(root);

	final TranslationsEn _root; // ignore: unused_field

	// Translations
	@override String get title => 'Profile Details';
	@override String get limitedOffer => 'Limited Offer';
	@override String get addPhoto => 'Add Photo';
	@override String get favoriteMovies => 'Favorite Movies';
	@override String get noFavoriteMovies => 'No favorite movies yet';
	@override String get followFavoriteMovies => 'Follow your favorite movies from here';
	@override late final _TranslationsProfileSettingsEn settings = _TranslationsProfileSettingsEn._(_root);
	@override late final _TranslationsProfileAddPhotoPageEn addPhotoPage = _TranslationsProfileAddPhotoPageEn._(_root);
}

// Path: limitedOfferModal
class _TranslationsLimitedOfferModalEn extends TranslationsLimitedOfferModalTr {
	_TranslationsLimitedOfferModalEn._(TranslationsEn root) : this._root = root, super.internal(root);

	final TranslationsEn _root; // ignore: unused_field

	// Translations
	@override String get title => 'Limited Offer';
	@override String get subtitle => 'Choose a token package to earn bonuses and unlock new episodes!';
	@override late final _TranslationsLimitedOfferModalBonusSectionEn bonusSection = _TranslationsLimitedOfferModalBonusSectionEn._(_root);
	@override late final _TranslationsLimitedOfferModalPackageSectionEn packageSection = _TranslationsLimitedOfferModalPackageSectionEn._(_root);
	@override late final _TranslationsLimitedOfferModalButtonEn button = _TranslationsLimitedOfferModalButtonEn._(_root);
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

// Path: register.buttons
class _TranslationsRegisterButtonsEn extends TranslationsRegisterButtonsTr {
	_TranslationsRegisterButtonsEn._(TranslationsEn root) : this._root = root, super.internal(root);

	final TranslationsEn _root; // ignore: unused_field

	// Translations
	@override String get submit => 'Register Now';
	@override TextSpan gdpr({required InlineSpanBuilder gdpr}) => TextSpan(children: [
		const TextSpan(text: 'I have read and agree to the '),
		gdpr('User Agreement'),
		const TextSpan(text: '. Please read this agreement before proceeding.'),
	]);
}

// Path: register.gdpr
class _TranslationsRegisterGdprEn extends TranslationsRegisterGdprTr {
	_TranslationsRegisterGdprEn._(TranslationsEn root) : this._root = root, super.internal(root);

	final TranslationsEn _root; // ignore: unused_field

	// Translations
	@override String get title => 'User Agreement';
	@override String get content => 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam tincidunt vel quam non porta. Sed eget arcu pellentesque, euismod lacus vel, vehicula magna. Ut leo tortor, auctor nec odio nec, vehicula porta lectus. Mauris quis tristique tellus. Aliquam nisi mi, semper sit amet ex at, elementum ultricies enim. Maecenas eleifend risus sapien, in ultricies lorem aliquam sed. Suspendisse non porta mi, eget rhoncus tellus. Morbi a ligula a ligula viverra tempor a vel dolor. Nullam egestas ultricies pretium. Aliquam sagittis massa leo, in hendrerit tortor consectetur ut. Aliquam iaculis ligula sit amet enim bibendum, ut pharetra sapien rutrum. Fusce sit amet lorem id nunc volutpat interdum eu eu tellus. Cras id orci turpis. Sed posuere arcu nec vestibulum lobortis.\n\nSed lacinia luctus venenatis. Donec bibendum congue condimentum. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Sed sapien felis, fermentum sed tellus quis, tincidunt congue ipsum. Vestibulum nec purus non quam posuere varius vitae sed purus. Aenean et nulla nec sapien finibus imperdiet. Nam fermentum lobortis tellus. Etiam fermentum vulputate tellus eu sollicitudin.';
}

// Path: profile.settings
class _TranslationsProfileSettingsEn extends TranslationsProfileSettingsTr {
	_TranslationsProfileSettingsEn._(TranslationsEn root) : this._root = root, super.internal(root);

	final TranslationsEn _root; // ignore: unused_field

	// Translations
	@override String get title => 'Settings';
	@override String get theme => 'Theme';
	@override String get language => 'Language';
	@override String get logout => 'Logout';
	@override String get dark => 'Dark';
	@override String get light => 'Light';
	@override String get system => 'System';
	@override String get turkish => 'Türkçe';
	@override String get english => 'English';
}

// Path: profile.addPhotoPage
class _TranslationsProfileAddPhotoPageEn extends TranslationsProfileAddPhotoPageTr {
	_TranslationsProfileAddPhotoPageEn._(TranslationsEn root) : this._root = root, super.internal(root);

	final TranslationsEn _root; // ignore: unused_field

	// Translations
	@override String get title => 'Upload Your Photos';
	@override String get subtitle => 'Resources out incentivize\nrelaxation floor loss cc.';
	@override String get continueButton => 'Continue';
}

// Path: limitedOfferModal.bonusSection
class _TranslationsLimitedOfferModalBonusSectionEn extends TranslationsLimitedOfferModalBonusSectionTr {
	_TranslationsLimitedOfferModalBonusSectionEn._(TranslationsEn root) : this._root = root, super.internal(root);

	final TranslationsEn _root; // ignore: unused_field

	// Translations
	@override String get title => 'Bonuses You\'ll Get';
	@override String get premiumAccount => 'Premium\nAccount';
	@override String get moreMatches => 'More\nMatches';
	@override String get featured => 'Featured\nProfile';
	@override String get moreLikes => 'More\nLikes';
}

// Path: limitedOfferModal.packageSection
class _TranslationsLimitedOfferModalPackageSectionEn extends TranslationsLimitedOfferModalPackageSectionTr {
	_TranslationsLimitedOfferModalPackageSectionEn._(TranslationsEn root) : this._root = root, super.internal(root);

	final TranslationsEn _root; // ignore: unused_field

	// Translations
	@override String get title => 'Choose a token package to unlock';
	@override String get token => 'Token';
	@override String get weeklyPrice => 'Per week';
}

// Path: limitedOfferModal.button
class _TranslationsLimitedOfferModalButtonEn extends TranslationsLimitedOfferModalButtonTr {
	_TranslationsLimitedOfferModalButtonEn._(TranslationsEn root) : this._root = root, super.internal(root);

	final TranslationsEn _root; // ignore: unused_field

	// Translations
	@override String get viewAllTokens => 'View All Tokens';
}

/// Flat map(s) containing all translations.
/// Only for edge cases! For simple maps, use the map function of this library.
extension on TranslationsEn {
	dynamic _flatMapFunction(String path) {
		switch (path) {
			case 'bottomNavigation.home': return 'Home';
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
			case 'auth.logoutConfirmation': return 'Are you sure you want to log out?';
			case 'auth.areYouSure': return 'Are you sure?';
			case 'auth.areYouSureToUpload': return 'Are you sure you want to upload the photo?';
			case 'auth.photoUploadSuccess': return 'Photo uploaded successfully!';
			case 'register.title': return 'Welcome';
			case 'register.subtitle': return 'Tempus varius a vitae interdum id\ntortor elementum tristique eleifend at.';
			case 'register.buttons.submit': return 'Register Now';
			case 'register.buttons.gdpr': return ({required InlineSpanBuilder gdpr}) => TextSpan(children: [
				const TextSpan(text: 'I have read and agree to the '),
				gdpr('User Agreement'),
				const TextSpan(text: '. Please read this agreement before proceeding.'),
			]);
			case 'register.gdpr.title': return 'User Agreement';
			case 'register.gdpr.content': return 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam tincidunt vel quam non porta. Sed eget arcu pellentesque, euismod lacus vel, vehicula magna. Ut leo tortor, auctor nec odio nec, vehicula porta lectus. Mauris quis tristique tellus. Aliquam nisi mi, semper sit amet ex at, elementum ultricies enim. Maecenas eleifend risus sapien, in ultricies lorem aliquam sed. Suspendisse non porta mi, eget rhoncus tellus. Morbi a ligula a ligula viverra tempor a vel dolor. Nullam egestas ultricies pretium. Aliquam sagittis massa leo, in hendrerit tortor consectetur ut. Aliquam iaculis ligula sit amet enim bibendum, ut pharetra sapien rutrum. Fusce sit amet lorem id nunc volutpat interdum eu eu tellus. Cras id orci turpis. Sed posuere arcu nec vestibulum lobortis.\n\nSed lacinia luctus venenatis. Donec bibendum congue condimentum. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Sed sapien felis, fermentum sed tellus quis, tincidunt congue ipsum. Vestibulum nec purus non quam posuere varius vitae sed purus. Aenean et nulla nec sapien finibus imperdiet. Nam fermentum lobortis tellus. Etiam fermentum vulputate tellus eu sollicitudin.';
			case 'register.doYouHaveAccount': return ({required InlineSpanBuilder login}) => TextSpan(children: [
				const TextSpan(text: 'Do you already have an account? '),
				login('Login'),
				const TextSpan(text: '!'),
			]);
			case 'profile.title': return 'Profile Details';
			case 'profile.limitedOffer': return 'Limited Offer';
			case 'profile.addPhoto': return 'Add Photo';
			case 'profile.favoriteMovies': return 'Favorite Movies';
			case 'profile.noFavoriteMovies': return 'No favorite movies yet';
			case 'profile.followFavoriteMovies': return 'Follow your favorite movies from here';
			case 'profile.settings.title': return 'Settings';
			case 'profile.settings.theme': return 'Theme';
			case 'profile.settings.language': return 'Language';
			case 'profile.settings.logout': return 'Logout';
			case 'profile.settings.dark': return 'Dark';
			case 'profile.settings.light': return 'Light';
			case 'profile.settings.system': return 'System';
			case 'profile.settings.turkish': return 'Türkçe';
			case 'profile.settings.english': return 'English';
			case 'profile.addPhotoPage.title': return 'Upload Your Photos';
			case 'profile.addPhotoPage.subtitle': return 'Resources out incentivize\nrelaxation floor loss cc.';
			case 'profile.addPhotoPage.continueButton': return 'Continue';
			case 'limitedOfferModal.title': return 'Limited Offer';
			case 'limitedOfferModal.subtitle': return 'Choose a token package to earn bonuses and unlock new episodes!';
			case 'limitedOfferModal.bonusSection.title': return 'Bonuses You\'ll Get';
			case 'limitedOfferModal.bonusSection.premiumAccount': return 'Premium\nAccount';
			case 'limitedOfferModal.bonusSection.moreMatches': return 'More\nMatches';
			case 'limitedOfferModal.bonusSection.featured': return 'Featured\nProfile';
			case 'limitedOfferModal.bonusSection.moreLikes': return 'More\nLikes';
			case 'limitedOfferModal.packageSection.title': return 'Choose a token package to unlock';
			case 'limitedOfferModal.packageSection.token': return 'Token';
			case 'limitedOfferModal.packageSection.weeklyPrice': return 'Per week';
			case 'limitedOfferModal.button.viewAllTokens': return 'View All Tokens';
			default: return null;
		}
	}
}

