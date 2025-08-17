///
/// Generated file. Do not edit.
///
// coverage:ignore-file
// ignore_for_file: type=lint, unused_import

part of 'translations.g.dart';

// Path: <root>
typedef TranslationsTr = Translations; // ignore: unused_element
class Translations implements BaseTranslations<AppLocale, Translations> {
	/// Returns the current translations of the given [context].
	///
	/// Usage:
	/// final locale = Translations.of(context);
	static Translations of(BuildContext context) => InheritedLocaleData.of<AppLocale, Translations>(context).translations;

	/// You can call this constructor and build your own translation instance of this locale.
	/// Constructing via the enum [AppLocale.build] is preferred.
	Translations({Map<String, Node>? overrides, PluralResolver? cardinalResolver, PluralResolver? ordinalResolver, TranslationMetadata<AppLocale, Translations>? meta})
		: assert(overrides == null, 'Set "translation_overrides: true" in order to enable this feature.'),
		  $meta = meta ?? TranslationMetadata(
		    locale: AppLocale.tr,
		    overrides: overrides ?? {},
		    cardinalResolver: cardinalResolver,
		    ordinalResolver: ordinalResolver,
		    types: {
		      'price': ValueFormatter(() => NumberFormat.currency(symbol: '\$', locale: 'tr')),
		    },
		  ) {
		$meta.setFlatMapFunction(_flatMapFunction);
	}

	/// Metadata for the translations of <tr>.
	@override final TranslationMetadata<AppLocale, Translations> $meta;

	/// Access flat map
	dynamic operator[](String key) => $meta.getTranslation(key);

	late final Translations _root = this; // ignore: unused_field

	Translations $copyWith({TranslationMetadata<AppLocale, Translations>? meta}) => Translations(meta: meta ?? this.$meta);

	// Translations
	late final TranslationsAppTr app = TranslationsAppTr.internal(_root);
	late final TranslationsBottomNavigationTr bottomNavigation = TranslationsBottomNavigationTr.internal(_root);

	/// Global buton ve kullanımlar için çeviriler
	late final TranslationsGlobalTr global = TranslationsGlobalTr.internal(_root);

	late final TranslationsLoginTr login = TranslationsLoginTr.internal(_root);

	/// Butonlar için çeviriler
	late final TranslationsButtonsTr buttons = TranslationsButtonsTr.internal(_root);

	/// Snack bar'lar için çeviriler
	late final TranslationsSnackbarsTr snackbars = TranslationsSnackbarsTr.internal(_root);

	/// Giriş alanları ile ilgili çeviriler
	late final TranslationsInputsTr inputs = TranslationsInputsTr.internal(_root);

	/// Doğrulama mesajları
	late final TranslationsValidationTr validation = TranslationsValidationTr.internal(_root);

	/// Hata mesajları
	late final TranslationsExceptionTr exception = TranslationsExceptionTr.internal(_root);

	/// Onboarding ekranı çevirileri
	late final TranslationsOnboardingTr onboarding = TranslationsOnboardingTr.internal(_root);

	/// Ana sayfa çevirileri
	late final TranslationsHomeTr home = TranslationsHomeTr.internal(_root);

	/// Ödeme duvarı çevirileri
	late final TranslationsPaywallTr paywall = TranslationsPaywallTr.internal(_root);
}

// Path: app
class TranslationsAppTr {
	TranslationsAppTr.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	late final TranslationsAppThemeTr theme = TranslationsAppThemeTr.internal(_root);
}

// Path: bottomNavigation
class TranslationsBottomNavigationTr {
	TranslationsBottomNavigationTr.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// tr: 'Ana Sayfa'
	String get home => 'Ana Sayfa';

	/// tr: 'Tanı'
	String get diagnose => 'Tanı';

	/// tr: 'Bahçem'
	String get myGarden => 'Bahçem';

	/// tr: 'Profil'
	String get profile => 'Profil';
}

// Path: global
class TranslationsGlobalTr {
	TranslationsGlobalTr.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// tr: 'Tamam'
	String get ok => 'Tamam';

	/// tr: 'İptal'
	String get cancel => 'İptal';

	/// tr: 'Tekrar Dene'
	String get retry => 'Tekrar Dene';

	/// tr: 'Evet'
	String get yes => 'Evet';

	/// tr: 'Hayır'
	String get no => 'Hayır';

	/// tr: 'Kapat'
	String get close => 'Kapat';

	/// tr: 'Reddet'
	String get decline => 'Reddet';

	/// tr: 'Kabul Et'
	String get accept => 'Kabul Et';

	/// tr: 'Kaydet'
	String get save => 'Kaydet';

	/// tr: 'Sil'
	String get delete => 'Sil';

	/// tr: 'Sıfırla'
	String get reset => 'Sıfırla';

	/// tr: 'Yükleniyor...'
	String get loading => 'Yükleniyor...';

	/// tr: 'Hizmete Git'
	String get goToService => 'Hizmete Git';

	/// tr: 'Yeni'
	String get kNew => 'Yeni';

	/// tr: '$count Sonuç bulundu'
	TextSpan resultCount({required InlineSpan count}) => TextSpan(children: [
		count,
		const TextSpan(text: ' Sonuç bulundu'),
	]);

	/// tr: 'Temizle'
	String get clear => 'Temizle';

	/// tr: 'Filtrele'
	String get filter => 'Filtrele';

	/// tr: 'Filtreyi Uygula'
	String get applyFilter => 'Filtreyi Uygula';

	/// tr: 'Daha Fazlası'
	String get showMore => 'Daha Fazlası';

	/// tr: 'Daha Az'
	String get showLess => 'Daha Az';

	/// tr: 'Tümünü Göster'
	String get showAll => 'Tümünü Göster';

	/// tr: 'Konum'
	String get location => 'Konum';

	/// tr: 'Konumum'
	String get myLocation => 'Konumum';

	/// tr: 'Merhaba $name'
	String hello({required Object name}) => 'Merhaba ${name}';

	/// tr: 'Göster'
	String get show => 'Göster';

	/// tr: 'Gizle'
	String get hide => 'Gizle';

	/// tr: 'Yenile'
	String get refresh => 'Yenile';

	/// tr: 'Gün seçimi gereklidir!'
	String get dayError => 'Gün seçimi gereklidir!';

	/// tr: 'Detaylar'
	String get details => 'Detaylar';

	/// tr: 'Yol Tarifi'
	String get directions => 'Yol Tarifi';

	/// tr: 'İleri'
	String get next => 'İleri';

	/// tr: 'Devam Et'
	String get kContinue => 'Devam Et';

	/// tr: 'Atla'
	String get skip => 'Atla';
}

// Path: login
class TranslationsLoginTr {
	TranslationsLoginTr.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// tr: 'Merhabalar'
	String get title => 'Merhabalar';

	/// tr: 'Tempus varius a vitae interdum id tortor elementum tristique eleifend at.'
	String get subtitle => 'Tempus varius a vitae interdum id\ntortor elementum tristique eleifend at.';

	/// tr: 'Şifremi Unuttum'
	String get forgotPassword => 'Şifremi Unuttum';

	/// tr: 'Giriş Yap'
	String get loginButton => 'Giriş Yap';

	/// tr: 'Üye Ol'
	String get registerButton => 'Üye Ol';

	/// tr: 'Bir hesabınız yok mu? ${register(Kayıt Ol)}!'
	TextSpan dontHaveAccount({required InlineSpanBuilder register}) => TextSpan(children: [
		const TextSpan(text: 'Bir hesabınız yok mu? '),
		register('Kayıt Ol'),
		const TextSpan(text: '!'),
	]);

	/// tr: 'Geçersiz e-posta veya şifre!'
	String get invalidCredentials => 'Geçersiz e-posta veya şifre!';

	/// tr: 'Başarıyla giriş yapıldı!'
	String get loginSuccess => 'Başarıyla giriş yapıldı!';

	/// tr: 'Giriş yapılamadı!'
	String get loginFailed => 'Giriş yapılamadı!';
}

// Path: buttons
class TranslationsButtonsTr {
	TranslationsButtonsTr.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// tr: 'Fotoğraf Çek'
	String get takePhoto => 'Fotoğraf Çek';

	/// tr: 'Galeriden Seç'
	String get selectFromGallery => 'Galeriden Seç';

	/// tr: 'Kameradan Seç'
	String get selectFromCamera => 'Kameradan Seç';

	/// tr: 'Dosyalardan Seç'
	String get selectFromFiles => 'Dosyalardan Seç';
}

// Path: snackbars
class TranslationsSnackbarsTr {
	TranslationsSnackbarsTr.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// tr: 'Başarılı'
	String get success => 'Başarılı';

	/// tr: 'Hata'
	String get error => 'Hata';

	/// tr: 'Bilgi'
	String get info => 'Bilgi';

	/// tr: 'Uyarı'
	String get warning => 'Uyarı';
}

// Path: inputs
class TranslationsInputsTr {
	TranslationsInputsTr.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// Giriş alanları için ipuçları
	late final TranslationsInputsHintsTr hints = TranslationsInputsHintsTr.internal(_root);

	/// tr: 'E-posta'
	String get email => 'E-posta';

	/// tr: 'Şifre'
	String get password => 'Şifre';

	/// tr: 'Parolayı Onayla'
	String get confirmPassword => 'Parolayı Onayla';

	/// tr: 'Ad Soyad'
	String get name => 'Ad Soyad';
}

// Path: validation
class TranslationsValidationTr {
	TranslationsValidationTr.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// tr: 'E-posta adresi boş bırakılamaz!'
	String get emailCannotBeEmpty => 'E-posta adresi boş bırakılamaz!';

	/// tr: 'Lütfen geçerli bir e-posta adresi girin!'
	String get emailIsNotValid => 'Lütfen geçerli bir e-posta adresi girin!';

	/// tr: 'Lütfen geçerli bir kullanıcı adı girin!'
	String get usernameIsNotValid => 'Lütfen geçerli bir kullanıcı adı girin!';

	/// tr: 'Lütfen geçerli bir tarih girin!'
	String get invalidDate => 'Lütfen geçerli bir tarih girin!';

	/// tr: 'Şifre boş bırakılamaz!'
	String get passwordCannotBeEmpty => 'Şifre boş bırakılamaz!';

	/// tr: 'Parolanız en az 1 büyük harf, 1 küçük harf, 1 rakam ve işaret (#?!@%^&*-) içermelidir!'
	String get passwordIsNotValid => 'Parolanız en az 1 büyük harf, 1 küçük harf, 1 rakam ve işaret (#?!@%^&*-) içermelidir!';

	/// tr: 'Parolalar eşleşmiyor!'
	String get passwordsNotMatch => 'Parolalar eşleşmiyor!';

	/// tr: '$name alanı boş bırakılamaz!'
	String required({required Object name}) => '${name} alanı boş bırakılamaz!';

	/// tr: 'Lütfen geçerli bir telefon numarası girin!'
	String get invalidPhoneNumber => 'Lütfen geçerli bir telefon numarası girin!';

	/// tr: '$name alanı en az $min karakter olmalıdır!'
	String minLength({required Object name, required Object min}) => '${name} alanı en az ${min} karakter olmalıdır!';

	/// tr: '$name alanı en fazla $max karakter olmalıdır!'
	String maxLength({required Object name, required Object max}) => '${name} alanı en fazla ${max} karakter olmalıdır!';

	/// tr: '$name alanı $min tarihinden küçük olamaz!'
	String minDate({required Object name, required Object min}) => '${name} alanı ${min} tarihinden küçük olamaz!';

	/// tr: '$name alanı $max tarihinden büyük olamaz!'
	String maxDate({required Object name, required Object max}) => '${name} alanı ${max} tarihinden büyük olamaz!';

	/// tr: '$name alanını onaylamalısınız!'
	String requiredTrue({required Object name}) => '${name} alanını onaylamalısınız!';

	/// tr: '$name alanı geçerli bir formatta olmalıdır!'
	String pattern({required Object name}) => '${name} alanı geçerli bir formatta olmalıdır!';
}

// Path: exception
class TranslationsExceptionTr {
	TranslationsExceptionTr.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// tr: 'İnternet bağlantısı yok!'
	String get noInternetConnection => 'İnternet bağlantısı yok!';

	/// tr: 'İşlem zaman aşımına uğradı!'
	String get timeout => 'İşlem zaman aşımına uğradı!';

	/// tr: 'Bilinmeyen bir hata oluştu!'
	String get unknown => 'Bilinmeyen bir hata oluştu!';

	/// tr: 'İşlem iptal edildi!'
	String get cancellation => 'İşlem iptal edildi!';

	/// tr: 'Oturum süreniz doldu!'
	String get tokenExpired => 'Oturum süreniz doldu!';

	/// tr: 'Sunucu ile iletişim sırasında bir hata oluştu!'
	String get server => 'Sunucu ile iletişim sırasında bir hata oluştu!';

	Map<String, String> get errorCodes => {
		'USER_EXISTS': 'Kullanıcı zaten mevcut',
		'INVALID_CREDENTIALS': 'Geçersiz e-posta veya şifre',
		'REQUEST_ENTITY_TOO_LARGE': 'Gönderilen fotoğraf çok büyük, lütfen daha küçük bir fotoğraf yükleyin!',
	};
}

// Path: onboarding
class TranslationsOnboardingTr {
	TranslationsOnboardingTr.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// tr: 'Başlayalım'
	String get getStarted => 'Başlayalım';

	/// tr: 'Devam Et'
	String get kContinue => 'Devam Et';

	late final TranslationsOnboardingPage1Tr page1 = TranslationsOnboardingPage1Tr.internal(_root);
	late final TranslationsOnboardingPage2Tr page2 = TranslationsOnboardingPage2Tr.internal(_root);
	late final TranslationsOnboardingPage3Tr page3 = TranslationsOnboardingPage3Tr.internal(_root);

	/// tr: 'İleri'ye dokunarak PlantID ${terms(Kullanım Şartları)} & ${privacy(Gizlilik Politikasını)} kabul etmiş olursunuz'
	TextSpan termsText({required InlineSpanBuilder terms, required InlineSpanBuilder privacy}) => TextSpan(children: [
		const TextSpan(text: 'İleri\'ye dokunarak PlantID\n'),
		terms('Kullanım Şartları'),
		const TextSpan(text: ' & '),
		privacy('Gizlilik Politikasını'),
		const TextSpan(text: ' kabul etmiş olursunuz'),
	]);
}

// Path: home
class TranslationsHomeTr {
	TranslationsHomeTr.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	late final TranslationsHomeGreetingTr greeting = TranslationsHomeGreetingTr.internal(_root);

	/// tr: 'Bitkileri arayın'
	String get searchPlaceholder => 'Bitkileri arayın';

	late final TranslationsHomePremiumTr premium = TranslationsHomePremiumTr.internal(_root);

	/// tr: 'Bitki Tarayın'
	String get scanPlant => 'Bitki Tarayın';

	/// tr: 'Öne Çıkanlar'
	String get featured => 'Öne Çıkanlar';

	late final TranslationsHomeCategoriesTr categories = TranslationsHomeCategoriesTr.internal(_root);
	late final TranslationsHomeFeaturesTr features = TranslationsHomeFeaturesTr.internal(_root);
}

// Path: paywall
class TranslationsPaywallTr {
	TranslationsPaywallTr.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// tr: '${logo(PlantApp)} Premium'
	TextSpan title({required InlineSpanBuilder logo}) => TextSpan(children: [
		logo('PlantApp'),
		const TextSpan(text: ' Premium'),
	]);

	/// tr: 'Tüm özelliklere erişim'
	String get subtitle => 'Tüm özelliklere erişim';

	late final TranslationsPaywallFeaturesTr features = TranslationsPaywallFeaturesTr.internal(_root);
	late final TranslationsPaywallPricingTr pricing = TranslationsPaywallPricingTr.internal(_root);

	/// tr: '3 günlük ücretsiz deneme süresi sona erdikten sonra, deneme süresi sona ermeden önce iptal etmediğiniz takdirde yıllık ${amount: price} ücretlendirileceksiniz. Yıllık Abonelik Otomatik Yenilemelidir.'
	String bottomText({required num amount}) => '3 günlük ücretsiz deneme süresi sona erdikten sonra, deneme süresi sona ermeden önce iptal etmediğiniz takdirde yıllık ${_root.$meta.types['price']!.format(amount)} ücretlendirileceksiniz. Yıllık Abonelik Otomatik Yenilemelidir.';

	/// tr: 'Şartlar • Gizlilik • Geri Yükle'
	String get terms => 'Şartlar • Gizlilik • Geri Yükle';

	late final TranslationsPaywallActionsTr actions = TranslationsPaywallActionsTr.internal(_root);
}

// Path: app.theme
class TranslationsAppThemeTr {
	TranslationsAppThemeTr.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// tr: 'Uygulama Teması'
	String get title => 'Uygulama Teması';

	/// tr: 'Sistem'
	String get system => 'Sistem';

	/// tr: 'Aydınlık'
	String get light => 'Aydınlık';

	/// tr: 'Koyu'
	String get dark => 'Koyu';
}

// Path: inputs.hints
class TranslationsInputsHintsTr {
	TranslationsInputsHintsTr.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// tr: 'E-posta adresinizi buraya yazabilirsiniz'
	String get email => 'E-posta adresinizi buraya yazabilirsiniz';

	/// tr: 'Parolanızı buraya yazabilirsiniz'
	String get password => 'Parolanızı buraya yazabilirsiniz';

	/// tr: 'Parolanızı onaylamak için buraya yazabilirsiniz'
	String get confirmPassword => 'Parolanızı onaylamak için buraya yazabilirsiniz';

	/// tr: 'Adınızı buraya yazabilirsiniz'
	String get name => 'Adınızı buraya yazabilirsiniz';
}

// Path: onboarding.page1
class TranslationsOnboardingPage1Tr {
	TranslationsOnboardingPage1Tr.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// tr: '${app(PlantApp'e)} Hoş Geldiniz'
	TextSpan title({required InlineSpanBuilder app}) => TextSpan(children: [
		app('PlantApp\'e'),
		const TextSpan(text: ' Hoş Geldiniz'),
	]);

	/// tr: '3000'den fazla bitkiyi tanımlayın ve %88 doğruluk.'
	String get subtitle => '3000\'den fazla bitkiyi tanımlayın ve %88 doğruluk.';
}

// Path: onboarding.page2
class TranslationsOnboardingPage2Tr {
	TranslationsOnboardingPage2Tr.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// tr: 'Bitkiyi ${identify(tanımlamak)} için bir fotoğraf çekin!'
	TextSpan title({required InlineSpanBuilder identify}) => TextSpan(children: [
		const TextSpan(text: 'Bitkiyi '),
		identify('tanımlamak'),
		const TextSpan(text: ' için bir fotoğraf çekin!'),
	]);
}

// Path: onboarding.page3
class TranslationsOnboardingPage3Tr {
	TranslationsOnboardingPage3Tr.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// tr: 'Bitki ${careguides(bakım kılavuzları)} alın'
	TextSpan title({required InlineSpanBuilder careguides}) => TextSpan(children: [
		const TextSpan(text: 'Bitki '),
		careguides('bakım kılavuzları'),
		const TextSpan(text: ' alın'),
	]);
}

// Path: home.greeting
class TranslationsHomeGreetingTr {
	TranslationsHomeGreetingTr.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// tr: 'Merhaba bitki aşığı!'
	String get hiPlantLover => 'Merhaba bitki aşığı!';

	/// tr: 'Günaydın! ⛅'
	String get goodMorning => 'Günaydın! ⛅';

	/// tr: 'İyi Günler! ⛅'
	String get goodAfternoon => 'İyi Günler! ⛅';

	/// tr: 'İyi Akşamlar! 🌙'
	String get goodEvening => 'İyi Akşamlar! 🌙';
}

// Path: home.premium
class TranslationsHomePremiumTr {
	TranslationsHomePremiumTr.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// tr: 'ÜCRETSİZ Premium Mevcut'
	String get title => 'ÜCRETSİZ Premium Mevcut';

	/// tr: 'Hesabınızı yükseltmek için dokunun!'
	String get subtitle => 'Hesabınızı yükseltmek için dokunun!';
}

// Path: home.categories
class TranslationsHomeCategoriesTr {
	TranslationsHomeCategoriesTr.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// tr: 'Yenilebilir Bitkiler'
	String get ediblePlants => 'Yenilebilir Bitkiler';

	/// tr: 'Eğreltiotları'
	String get ferns => 'Eğreltiotları';

	/// tr: 'Kaktüs ve Sukulentler'
	String get cactiAndSucculents => 'Kaktüs ve Sukulentler';

	/// tr: 'Palmiyeler'
	String get palms => 'Palmiyeler';
}

// Path: home.features
class TranslationsHomeFeaturesTr {
	TranslationsHomeFeaturesTr.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// tr: 'PlantApp ile bitkileri kolayca nasıl tanımlarsınız?'
	String get identifyPlants => 'PlantApp ile bitkileri kolayca\nnasıl tanımlarsınız?';

	/// tr: 'Tür ve alt türler: fark nedir?'
	String get speciesDifference => 'Tür ve alt türler:\nfark nedir?';
}

// Path: paywall.features
class TranslationsPaywallFeaturesTr {
	TranslationsPaywallFeaturesTr.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	late final TranslationsPaywallFeaturesUnlimitedTr unlimited = TranslationsPaywallFeaturesUnlimitedTr.internal(_root);
	late final TranslationsPaywallFeaturesFasterTr faster = TranslationsPaywallFeaturesFasterTr.internal(_root);
	late final TranslationsPaywallFeaturesExclusiveTr exclusive = TranslationsPaywallFeaturesExclusiveTr.internal(_root);
}

// Path: paywall.pricing
class TranslationsPaywallPricingTr {
	TranslationsPaywallPricingTr.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	late final TranslationsPaywallPricingMonthlyTr monthly = TranslationsPaywallPricingMonthlyTr.internal(_root);
	late final TranslationsPaywallPricingYearlyTr yearly = TranslationsPaywallPricingYearlyTr.internal(_root);
}

// Path: paywall.actions
class TranslationsPaywallActionsTr {
	TranslationsPaywallActionsTr.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// tr: 'Abone Ol'
	String get subscribe => 'Abone Ol';

	/// tr: '3 Gün Ücretsiz Deneyin'
	String get tryFree => '3 Gün Ücretsiz Deneyin';
}

// Path: paywall.features.unlimited
class TranslationsPaywallFeaturesUnlimitedTr {
	TranslationsPaywallFeaturesUnlimitedTr.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// tr: 'Sınırsız'
	String get title => 'Sınırsız';

	/// tr: 'Bitki Tanımlama'
	String get description => 'Bitki Tanımlama';
}

// Path: paywall.features.faster
class TranslationsPaywallFeaturesFasterTr {
	TranslationsPaywallFeaturesFasterTr.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// tr: 'Daha Hızlı'
	String get title => 'Daha Hızlı';

	/// tr: 'İşlem'
	String get description => 'İşlem';
}

// Path: paywall.features.exclusive
class TranslationsPaywallFeaturesExclusiveTr {
	TranslationsPaywallFeaturesExclusiveTr.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// tr: 'Özel'
	String get title => 'Özel';

	/// tr: 'İçerik'
	String get description => 'İçerik';
}

// Path: paywall.pricing.monthly
class TranslationsPaywallPricingMonthlyTr {
	TranslationsPaywallPricingMonthlyTr.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// tr: '1 Aylık'
	String get title => '1 Aylık';

	/// tr: '${amount: price}/ay, otomatik yenileme'
	String description({required num amount}) => '${_root.$meta.types['price']!.format(amount)}/ay, otomatik yenileme';
}

// Path: paywall.pricing.yearly
class TranslationsPaywallPricingYearlyTr {
	TranslationsPaywallPricingYearlyTr.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// tr: '1 Yıllık'
	String get title => '1 Yıllık';

	/// tr: 'İlk 3 gün ücretsiz, ardından ${amount: price}/yıl'
	String description({required num amount}) => 'İlk 3 gün ücretsiz, ardından ${_root.$meta.types['price']!.format(amount)}/yıl';

	/// tr: '%50 Tasarruf'
	String get discount => '%50 Tasarruf';
}

/// Flat map(s) containing all translations.
/// Only for edge cases! For simple maps, use the map function of this library.
extension on Translations {
	dynamic _flatMapFunction(String path) {
		switch (path) {
			case 'app.theme.title': return 'Uygulama Teması';
			case 'app.theme.system': return 'Sistem';
			case 'app.theme.light': return 'Aydınlık';
			case 'app.theme.dark': return 'Koyu';
			case 'bottomNavigation.home': return 'Ana Sayfa';
			case 'bottomNavigation.diagnose': return 'Tanı';
			case 'bottomNavigation.myGarden': return 'Bahçem';
			case 'bottomNavigation.profile': return 'Profil';
			case 'global.ok': return 'Tamam';
			case 'global.cancel': return 'İptal';
			case 'global.retry': return 'Tekrar Dene';
			case 'global.yes': return 'Evet';
			case 'global.no': return 'Hayır';
			case 'global.close': return 'Kapat';
			case 'global.decline': return 'Reddet';
			case 'global.accept': return 'Kabul Et';
			case 'global.save': return 'Kaydet';
			case 'global.delete': return 'Sil';
			case 'global.reset': return 'Sıfırla';
			case 'global.loading': return 'Yükleniyor...';
			case 'global.goToService': return 'Hizmete Git';
			case 'global.kNew': return 'Yeni';
			case 'global.resultCount': return ({required InlineSpan count}) => TextSpan(children: [
				count,
				const TextSpan(text: ' Sonuç bulundu'),
			]);
			case 'global.clear': return 'Temizle';
			case 'global.filter': return 'Filtrele';
			case 'global.applyFilter': return 'Filtreyi Uygula';
			case 'global.showMore': return 'Daha Fazlası';
			case 'global.showLess': return 'Daha Az';
			case 'global.showAll': return 'Tümünü Göster';
			case 'global.location': return 'Konum';
			case 'global.myLocation': return 'Konumum';
			case 'global.hello': return ({required Object name}) => 'Merhaba ${name}';
			case 'global.show': return 'Göster';
			case 'global.hide': return 'Gizle';
			case 'global.refresh': return 'Yenile';
			case 'global.dayError': return 'Gün seçimi gereklidir!';
			case 'global.details': return 'Detaylar';
			case 'global.directions': return 'Yol Tarifi';
			case 'global.next': return 'İleri';
			case 'global.kContinue': return 'Devam Et';
			case 'global.skip': return 'Atla';
			case 'login.title': return 'Merhabalar';
			case 'login.subtitle': return 'Tempus varius a vitae interdum id\ntortor elementum tristique eleifend at.';
			case 'login.forgotPassword': return 'Şifremi Unuttum';
			case 'login.loginButton': return 'Giriş Yap';
			case 'login.registerButton': return 'Üye Ol';
			case 'login.dontHaveAccount': return ({required InlineSpanBuilder register}) => TextSpan(children: [
				const TextSpan(text: 'Bir hesabınız yok mu? '),
				register('Kayıt Ol'),
				const TextSpan(text: '!'),
			]);
			case 'login.invalidCredentials': return 'Geçersiz e-posta veya şifre!';
			case 'login.loginSuccess': return 'Başarıyla giriş yapıldı!';
			case 'login.loginFailed': return 'Giriş yapılamadı!';
			case 'buttons.takePhoto': return 'Fotoğraf Çek';
			case 'buttons.selectFromGallery': return 'Galeriden Seç';
			case 'buttons.selectFromCamera': return 'Kameradan Seç';
			case 'buttons.selectFromFiles': return 'Dosyalardan Seç';
			case 'snackbars.success': return 'Başarılı';
			case 'snackbars.error': return 'Hata';
			case 'snackbars.info': return 'Bilgi';
			case 'snackbars.warning': return 'Uyarı';
			case 'inputs.hints.email': return 'E-posta adresinizi buraya yazabilirsiniz';
			case 'inputs.hints.password': return 'Parolanızı buraya yazabilirsiniz';
			case 'inputs.hints.confirmPassword': return 'Parolanızı onaylamak için buraya yazabilirsiniz';
			case 'inputs.hints.name': return 'Adınızı buraya yazabilirsiniz';
			case 'inputs.email': return 'E-posta';
			case 'inputs.password': return 'Şifre';
			case 'inputs.confirmPassword': return 'Parolayı Onayla';
			case 'inputs.name': return 'Ad Soyad';
			case 'validation.emailCannotBeEmpty': return 'E-posta adresi boş bırakılamaz!';
			case 'validation.emailIsNotValid': return 'Lütfen geçerli bir e-posta adresi girin!';
			case 'validation.usernameIsNotValid': return 'Lütfen geçerli bir kullanıcı adı girin!';
			case 'validation.invalidDate': return 'Lütfen geçerli bir tarih girin!';
			case 'validation.passwordCannotBeEmpty': return 'Şifre boş bırakılamaz!';
			case 'validation.passwordIsNotValid': return 'Parolanız en az 1 büyük harf, 1 küçük harf, 1 rakam ve işaret (#?!@%^&*-) içermelidir!';
			case 'validation.passwordsNotMatch': return 'Parolalar eşleşmiyor!';
			case 'validation.required': return ({required Object name}) => '${name} alanı boş bırakılamaz!';
			case 'validation.invalidPhoneNumber': return 'Lütfen geçerli bir telefon numarası girin!';
			case 'validation.minLength': return ({required Object name, required Object min}) => '${name} alanı en az ${min} karakter olmalıdır!';
			case 'validation.maxLength': return ({required Object name, required Object max}) => '${name} alanı en fazla ${max} karakter olmalıdır!';
			case 'validation.minDate': return ({required Object name, required Object min}) => '${name} alanı ${min} tarihinden küçük olamaz!';
			case 'validation.maxDate': return ({required Object name, required Object max}) => '${name} alanı ${max} tarihinden büyük olamaz!';
			case 'validation.requiredTrue': return ({required Object name}) => '${name} alanını onaylamalısınız!';
			case 'validation.pattern': return ({required Object name}) => '${name} alanı geçerli bir formatta olmalıdır!';
			case 'exception.noInternetConnection': return 'İnternet bağlantısı yok!';
			case 'exception.timeout': return 'İşlem zaman aşımına uğradı!';
			case 'exception.unknown': return 'Bilinmeyen bir hata oluştu!';
			case 'exception.cancellation': return 'İşlem iptal edildi!';
			case 'exception.tokenExpired': return 'Oturum süreniz doldu!';
			case 'exception.server': return 'Sunucu ile iletişim sırasında bir hata oluştu!';
			case 'exception.errorCodes.USER_EXISTS': return 'Kullanıcı zaten mevcut';
			case 'exception.errorCodes.INVALID_CREDENTIALS': return 'Geçersiz e-posta veya şifre';
			case 'exception.errorCodes.REQUEST_ENTITY_TOO_LARGE': return 'Gönderilen fotoğraf çok büyük, lütfen daha küçük bir fotoğraf yükleyin!';
			case 'onboarding.getStarted': return 'Başlayalım';
			case 'onboarding.kContinue': return 'Devam Et';
			case 'onboarding.page1.title': return ({required InlineSpanBuilder app}) => TextSpan(children: [
				app('PlantApp\'e'),
				const TextSpan(text: ' Hoş Geldiniz'),
			]);
			case 'onboarding.page1.subtitle': return '3000\'den fazla bitkiyi tanımlayın ve %88 doğruluk.';
			case 'onboarding.page2.title': return ({required InlineSpanBuilder identify}) => TextSpan(children: [
				const TextSpan(text: 'Bitkiyi '),
				identify('tanımlamak'),
				const TextSpan(text: ' için bir fotoğraf çekin!'),
			]);
			case 'onboarding.page3.title': return ({required InlineSpanBuilder careguides}) => TextSpan(children: [
				const TextSpan(text: 'Bitki '),
				careguides('bakım kılavuzları'),
				const TextSpan(text: ' alın'),
			]);
			case 'onboarding.termsText': return ({required InlineSpanBuilder terms, required InlineSpanBuilder privacy}) => TextSpan(children: [
				const TextSpan(text: 'İleri\'ye dokunarak PlantID\n'),
				terms('Kullanım Şartları'),
				const TextSpan(text: ' & '),
				privacy('Gizlilik Politikasını'),
				const TextSpan(text: ' kabul etmiş olursunuz'),
			]);
			case 'home.greeting.hiPlantLover': return 'Merhaba bitki aşığı!';
			case 'home.greeting.goodMorning': return 'Günaydın! ⛅';
			case 'home.greeting.goodAfternoon': return 'İyi Günler! ⛅';
			case 'home.greeting.goodEvening': return 'İyi Akşamlar! 🌙';
			case 'home.searchPlaceholder': return 'Bitkileri arayın';
			case 'home.premium.title': return 'ÜCRETSİZ Premium Mevcut';
			case 'home.premium.subtitle': return 'Hesabınızı yükseltmek için dokunun!';
			case 'home.scanPlant': return 'Bitki Tarayın';
			case 'home.featured': return 'Öne Çıkanlar';
			case 'home.categories.ediblePlants': return 'Yenilebilir Bitkiler';
			case 'home.categories.ferns': return 'Eğreltiotları';
			case 'home.categories.cactiAndSucculents': return 'Kaktüs ve Sukulentler';
			case 'home.categories.palms': return 'Palmiyeler';
			case 'home.features.identifyPlants': return 'PlantApp ile bitkileri kolayca\nnasıl tanımlarsınız?';
			case 'home.features.speciesDifference': return 'Tür ve alt türler:\nfark nedir?';
			case 'paywall.title': return ({required InlineSpanBuilder logo}) => TextSpan(children: [
				logo('PlantApp'),
				const TextSpan(text: ' Premium'),
			]);
			case 'paywall.subtitle': return 'Tüm özelliklere erişim';
			case 'paywall.features.unlimited.title': return 'Sınırsız';
			case 'paywall.features.unlimited.description': return 'Bitki Tanımlama';
			case 'paywall.features.faster.title': return 'Daha Hızlı';
			case 'paywall.features.faster.description': return 'İşlem';
			case 'paywall.features.exclusive.title': return 'Özel';
			case 'paywall.features.exclusive.description': return 'İçerik';
			case 'paywall.pricing.monthly.title': return '1 Aylık';
			case 'paywall.pricing.monthly.description': return ({required num amount}) => '${_root.$meta.types['price']!.format(amount)}/ay, otomatik yenileme';
			case 'paywall.pricing.yearly.title': return '1 Yıllık';
			case 'paywall.pricing.yearly.description': return ({required num amount}) => 'İlk 3 gün ücretsiz, ardından ${_root.$meta.types['price']!.format(amount)}/yıl';
			case 'paywall.pricing.yearly.discount': return '%50 Tasarruf';
			case 'paywall.bottomText': return ({required num amount}) => '3 günlük ücretsiz deneme süresi sona erdikten sonra, deneme süresi sona ermeden önce iptal etmediğiniz takdirde yıllık ${_root.$meta.types['price']!.format(amount)} ücretlendirileceksiniz. Yıllık Abonelik Otomatik Yenilemelidir.';
			case 'paywall.terms': return 'Şartlar • Gizlilik • Geri Yükle';
			case 'paywall.actions.subscribe': return 'Abone Ol';
			case 'paywall.actions.tryFree': return '3 Gün Ücretsiz Deneyin';
			default: return null;
		}
	}
}

