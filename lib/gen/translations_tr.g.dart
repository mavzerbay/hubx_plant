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

	/// Kimlik doğrulama ile ilgili çeviriler
	late final TranslationsAuthTr auth = TranslationsAuthTr.internal(_root);

	/// Kayıt ile ilgili çeviriler
	late final TranslationsRegisterTr register = TranslationsRegisterTr.internal(_root);

	/// Profil ile ilgili çeviriler
	late final TranslationsProfileTr profile = TranslationsProfileTr.internal(_root);

	/// Sınırlı teklif modal'ı ile ilgili çeviriler
	late final TranslationsLimitedOfferModalTr limitedOfferModal = TranslationsLimitedOfferModalTr.internal(_root);
}

// Path: bottomNavigation
class TranslationsBottomNavigationTr {
	TranslationsBottomNavigationTr.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// tr: 'Ana Sayfa'
	String get home => 'Ana Sayfa';

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

// Path: auth
class TranslationsAuthTr {
	TranslationsAuthTr.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// tr: 'Çıkış yapmak istediğinize emin misiniz?'
	String get logoutConfirmation => 'Çıkış yapmak istediğinize emin misiniz?';

	/// tr: 'Emin misiniz?'
	String get areYouSure => 'Emin misiniz?';

	/// tr: 'Fotoğraf yüklemek istediğinize emin misiniz?'
	String get areYouSureToUpload => 'Fotoğraf yüklemek istediğinize emin misiniz?';

	/// tr: 'Fotoğraf başarıyla yüklendi!'
	String get photoUploadSuccess => 'Fotoğraf başarıyla yüklendi!';
}

// Path: register
class TranslationsRegisterTr {
	TranslationsRegisterTr.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// tr: 'Hoşgeldiniz'
	String get title => 'Hoşgeldiniz';

	/// tr: 'Tempus varius a vitae interdum id tortor elementum tristique eleifend at.'
	String get subtitle => 'Tempus varius a vitae interdum id\ntortor elementum tristique eleifend at.';

	late final TranslationsRegisterButtonsTr buttons = TranslationsRegisterButtonsTr.internal(_root);
	late final TranslationsRegisterGdprTr gdpr = TranslationsRegisterGdprTr.internal(_root);

	/// tr: 'Zaten bir hesabın var mı? ${login(Giriş Yap)}!'
	TextSpan doYouHaveAccount({required InlineSpanBuilder login}) => TextSpan(children: [
		const TextSpan(text: 'Zaten bir hesabın var mı? '),
		login('Giriş Yap'),
		const TextSpan(text: '!'),
	]);
}

// Path: profile
class TranslationsProfileTr {
	TranslationsProfileTr.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// tr: 'Profil Detayı'
	String get title => 'Profil Detayı';

	/// tr: 'Sınırlı Teklif'
	String get limitedOffer => 'Sınırlı Teklif';

	/// tr: 'Fotoğraf Ekle'
	String get addPhoto => 'Fotoğraf Ekle';

	/// tr: 'Beğendiğim Filmler'
	String get favoriteMovies => 'Beğendiğim Filmler';

	/// tr: 'Henüz beğenilen film yok'
	String get noFavoriteMovies => 'Henüz beğenilen film yok';

	/// tr: 'Beğendiğiniz filmleri buradan takip edin'
	String get followFavoriteMovies => 'Beğendiğiniz filmleri buradan takip edin';

	late final TranslationsProfileSettingsTr settings = TranslationsProfileSettingsTr.internal(_root);
	late final TranslationsProfileAddPhotoPageTr addPhotoPage = TranslationsProfileAddPhotoPageTr.internal(_root);
}

// Path: limitedOfferModal
class TranslationsLimitedOfferModalTr {
	TranslationsLimitedOfferModalTr.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// tr: 'Sınırlı Teklif'
	String get title => 'Sınırlı Teklif';

	/// tr: 'Jeton paketi'ni seçerek bonus kazanın ve yeni bölümlerin kilidini açın!'
	String get subtitle => 'Jeton paketi\'ni seçerek bonus kazanın ve yeni bölümlerin kilidini açın!';

	late final TranslationsLimitedOfferModalBonusSectionTr bonusSection = TranslationsLimitedOfferModalBonusSectionTr.internal(_root);
	late final TranslationsLimitedOfferModalPackageSectionTr packageSection = TranslationsLimitedOfferModalPackageSectionTr.internal(_root);
	late final TranslationsLimitedOfferModalButtonTr button = TranslationsLimitedOfferModalButtonTr.internal(_root);
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

// Path: register.buttons
class TranslationsRegisterButtonsTr {
	TranslationsRegisterButtonsTr.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// tr: 'Şimdi Kaydol'
	String get submit => 'Şimdi Kaydol';

	/// tr: '${gdpr(Kullanıcı sözleşmesini)} okudum ve kabul ediyorum. Bu sözleşmeyi okuyarak devam ediniz lütfen'
	TextSpan gdpr({required InlineSpanBuilder gdpr}) => TextSpan(children: [
		gdpr('Kullanıcı sözleşmesini'),
		const TextSpan(text: ' okudum ve kabul ediyorum. Bu sözleşmeyi okuyarak devam ediniz lütfen'),
	]);
}

// Path: register.gdpr
class TranslationsRegisterGdprTr {
	TranslationsRegisterGdprTr.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// tr: 'Kullanıcı Sözleşmesi'
	String get title => 'Kullanıcı Sözleşmesi';

	/// tr: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam tincidunt vel quam non porta. Sed eget arcu pellentesque, euismod lacus vel, vehicula magna. Ut leo tortor, auctor nec odio nec, vehicula porta lectus. Mauris quis tristique tellus. Aliquam nisi mi, semper sit amet ex at, elementum ultricies enim. Maecenas eleifend risus sapien, in ultricies lorem aliquam sed. Suspendisse non porta mi, eget rhoncus tellus. Morbi a ligula a ligula viverra tempor a vel dolor. Nullam egestas ultricies pretium. Aliquam sagittis massa leo, in hendrerit tortor consectetur ut. Aliquam iaculis ligula sit amet enim bibendum, ut pharetra sapien rutrum. Fusce sit amet lorem id nunc volutpat interdum eu eu tellus. Cras id orci turpis. Sed posuere arcu nec vestibulum lobortis. Sed lacinia luctus venenatis. Donec bibendum congue condimentum. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Sed sapien felis, fermentum sed tellus quis, tincidunt congue ipsum. Vestibulum nec purus non quam posuere varius vitae sed purus. Aenean et nulla nec sapien finibus imperdiet. Nam fermentum lobortis tellus. Etiam fermentum vulputate tellus eu sollicitudin.'
	String get content => 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam tincidunt vel quam non porta. Sed eget arcu pellentesque, euismod lacus vel, vehicula magna. Ut leo tortor, auctor nec odio nec, vehicula porta lectus. Mauris quis tristique tellus. Aliquam nisi mi, semper sit amet ex at, elementum ultricies enim. Maecenas eleifend risus sapien, in ultricies lorem aliquam sed. Suspendisse non porta mi, eget rhoncus tellus. Morbi a ligula a ligula viverra tempor a vel dolor. Nullam egestas ultricies pretium. Aliquam sagittis massa leo, in hendrerit tortor consectetur ut. Aliquam iaculis ligula sit amet enim bibendum, ut pharetra sapien rutrum. Fusce sit amet lorem id nunc volutpat interdum eu eu tellus. Cras id orci turpis. Sed posuere arcu nec vestibulum lobortis.\n\nSed lacinia luctus venenatis. Donec bibendum congue condimentum. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Sed sapien felis, fermentum sed tellus quis, tincidunt congue ipsum. Vestibulum nec purus non quam posuere varius vitae sed purus. Aenean et nulla nec sapien finibus imperdiet. Nam fermentum lobortis tellus. Etiam fermentum vulputate tellus eu sollicitudin.';
}

// Path: profile.settings
class TranslationsProfileSettingsTr {
	TranslationsProfileSettingsTr.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// tr: 'Ayarlar'
	String get title => 'Ayarlar';

	/// tr: 'Tema'
	String get theme => 'Tema';

	/// tr: 'Dil'
	String get language => 'Dil';

	/// tr: 'Çıkış Yap'
	String get logout => 'Çıkış Yap';

	/// tr: 'Karanlık'
	String get dark => 'Karanlık';

	/// tr: 'Aydınlık'
	String get light => 'Aydınlık';

	/// tr: 'Sistem'
	String get system => 'Sistem';

	/// tr: 'Türkçe'
	String get turkish => 'Türkçe';

	/// tr: 'English'
	String get english => 'English';
}

// Path: profile.addPhotoPage
class TranslationsProfileAddPhotoPageTr {
	TranslationsProfileAddPhotoPageTr.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// tr: 'Fotoğraflarınızı Yükleyin'
	String get title => 'Fotoğraflarınızı Yükleyin';

	/// tr: 'Resources out incentivize relaxation floor loss cc.'
	String get subtitle => 'Resources out incentivize\nrelaxation floor loss cc.';

	/// tr: 'Devam Et'
	String get continueButton => 'Devam Et';
}

// Path: limitedOfferModal.bonusSection
class TranslationsLimitedOfferModalBonusSectionTr {
	TranslationsLimitedOfferModalBonusSectionTr.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// tr: 'Alacağınız Bonuslar'
	String get title => 'Alacağınız Bonuslar';

	/// tr: 'Premium Hesap'
	String get premiumAccount => 'Premium\nHesap';

	/// tr: 'Daha Fazla Eşleşme'
	String get moreMatches => 'Daha\nFazla Eşleşme';

	/// tr: 'Öne Çıkarma'
	String get featured => 'Öne\nÇıkarma';

	/// tr: 'Daha Fazla Beğeni'
	String get moreLikes => 'Daha\nFazla Beğeni';
}

// Path: limitedOfferModal.packageSection
class TranslationsLimitedOfferModalPackageSectionTr {
	TranslationsLimitedOfferModalPackageSectionTr.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// tr: 'Kilidi açmak için bir jeton paketi seçin'
	String get title => 'Kilidi açmak için bir jeton paketi seçin';

	/// tr: 'Jeton'
	String get token => 'Jeton';

	/// tr: 'Başına haftalık'
	String get weeklyPrice => 'Başına haftalık';
}

// Path: limitedOfferModal.button
class TranslationsLimitedOfferModalButtonTr {
	TranslationsLimitedOfferModalButtonTr.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// tr: 'Tüm Jetonları Gör'
	String get viewAllTokens => 'Tüm Jetonları Gör';
}

/// Flat map(s) containing all translations.
/// Only for edge cases! For simple maps, use the map function of this library.
extension on Translations {
	dynamic _flatMapFunction(String path) {
		switch (path) {
			case 'bottomNavigation.home': return 'Ana Sayfa';
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
			case 'auth.logoutConfirmation': return 'Çıkış yapmak istediğinize emin misiniz?';
			case 'auth.areYouSure': return 'Emin misiniz?';
			case 'auth.areYouSureToUpload': return 'Fotoğraf yüklemek istediğinize emin misiniz?';
			case 'auth.photoUploadSuccess': return 'Fotoğraf başarıyla yüklendi!';
			case 'register.title': return 'Hoşgeldiniz';
			case 'register.subtitle': return 'Tempus varius a vitae interdum id\ntortor elementum tristique eleifend at.';
			case 'register.buttons.submit': return 'Şimdi Kaydol';
			case 'register.buttons.gdpr': return ({required InlineSpanBuilder gdpr}) => TextSpan(children: [
				gdpr('Kullanıcı sözleşmesini'),
				const TextSpan(text: ' okudum ve kabul ediyorum. Bu sözleşmeyi okuyarak devam ediniz lütfen'),
			]);
			case 'register.gdpr.title': return 'Kullanıcı Sözleşmesi';
			case 'register.gdpr.content': return 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam tincidunt vel quam non porta. Sed eget arcu pellentesque, euismod lacus vel, vehicula magna. Ut leo tortor, auctor nec odio nec, vehicula porta lectus. Mauris quis tristique tellus. Aliquam nisi mi, semper sit amet ex at, elementum ultricies enim. Maecenas eleifend risus sapien, in ultricies lorem aliquam sed. Suspendisse non porta mi, eget rhoncus tellus. Morbi a ligula a ligula viverra tempor a vel dolor. Nullam egestas ultricies pretium. Aliquam sagittis massa leo, in hendrerit tortor consectetur ut. Aliquam iaculis ligula sit amet enim bibendum, ut pharetra sapien rutrum. Fusce sit amet lorem id nunc volutpat interdum eu eu tellus. Cras id orci turpis. Sed posuere arcu nec vestibulum lobortis.\n\nSed lacinia luctus venenatis. Donec bibendum congue condimentum. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Sed sapien felis, fermentum sed tellus quis, tincidunt congue ipsum. Vestibulum nec purus non quam posuere varius vitae sed purus. Aenean et nulla nec sapien finibus imperdiet. Nam fermentum lobortis tellus. Etiam fermentum vulputate tellus eu sollicitudin.';
			case 'register.doYouHaveAccount': return ({required InlineSpanBuilder login}) => TextSpan(children: [
				const TextSpan(text: 'Zaten bir hesabın var mı? '),
				login('Giriş Yap'),
				const TextSpan(text: '!'),
			]);
			case 'profile.title': return 'Profil Detayı';
			case 'profile.limitedOffer': return 'Sınırlı Teklif';
			case 'profile.addPhoto': return 'Fotoğraf Ekle';
			case 'profile.favoriteMovies': return 'Beğendiğim Filmler';
			case 'profile.noFavoriteMovies': return 'Henüz beğenilen film yok';
			case 'profile.followFavoriteMovies': return 'Beğendiğiniz filmleri buradan takip edin';
			case 'profile.settings.title': return 'Ayarlar';
			case 'profile.settings.theme': return 'Tema';
			case 'profile.settings.language': return 'Dil';
			case 'profile.settings.logout': return 'Çıkış Yap';
			case 'profile.settings.dark': return 'Karanlık';
			case 'profile.settings.light': return 'Aydınlık';
			case 'profile.settings.system': return 'Sistem';
			case 'profile.settings.turkish': return 'Türkçe';
			case 'profile.settings.english': return 'English';
			case 'profile.addPhotoPage.title': return 'Fotoğraflarınızı Yükleyin';
			case 'profile.addPhotoPage.subtitle': return 'Resources out incentivize\nrelaxation floor loss cc.';
			case 'profile.addPhotoPage.continueButton': return 'Devam Et';
			case 'limitedOfferModal.title': return 'Sınırlı Teklif';
			case 'limitedOfferModal.subtitle': return 'Jeton paketi\'ni seçerek bonus kazanın ve yeni bölümlerin kilidini açın!';
			case 'limitedOfferModal.bonusSection.title': return 'Alacağınız Bonuslar';
			case 'limitedOfferModal.bonusSection.premiumAccount': return 'Premium\nHesap';
			case 'limitedOfferModal.bonusSection.moreMatches': return 'Daha\nFazla Eşleşme';
			case 'limitedOfferModal.bonusSection.featured': return 'Öne\nÇıkarma';
			case 'limitedOfferModal.bonusSection.moreLikes': return 'Daha\nFazla Beğeni';
			case 'limitedOfferModal.packageSection.title': return 'Kilidi açmak için bir jeton paketi seçin';
			case 'limitedOfferModal.packageSection.token': return 'Jeton';
			case 'limitedOfferModal.packageSection.weeklyPrice': return 'Başına haftalık';
			case 'limitedOfferModal.button.viewAllTokens': return 'Tüm Jetonları Gör';
			default: return null;
		}
	}
}

