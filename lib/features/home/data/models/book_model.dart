class BooksResponseModel {
  String? kind;
  int? totalItems;
  List<BookModel>? books;

  BooksResponseModel({this.kind, this.totalItems, this.books});

  BooksResponseModel.fromJson(Map<String, dynamic> json) {
    kind = json['kind'];
    totalItems = json['totalItems'];
    if (json['items'] != null) {
      books = <BookModel>[];
      json['items'].forEach((v) {
        books!.add(BookModel.fromJson(v));
      });
    }
  }
}

class BookModel {
  String? kind;
  String? id;
  String? etag;
  String? selfLink;
 late VolumeInfo volumeInfo;
  SaleInfo? saleInfo;
  AccessInfo? accessInfo;
  SearchInfo? searchInfo;

  BookModel.fromJson(Map<String, dynamic> json) {
    kind = json['kind'];
    id = json['id'];
    etag = json['etag'];
    selfLink = json['selfLink'];
    volumeInfo =  VolumeInfo.fromJson(json['volumeInfo']);
    saleInfo =
        json['saleInfo'] != null ? SaleInfo.fromJson(json['saleInfo']) : null;
    accessInfo = json['accessInfo'] != null
        ? AccessInfo.fromJson(json['accessInfo'])
        : null;
    searchInfo = json['searchInfo'] != null
        ? SearchInfo.fromJson(json['searchInfo'])
        : null;
  }
}

class VolumeInfo {
  String? title;
  List<String>? authors;
  String? publisher;
  String? publishedDate;
  String? description;
  List<IndustryIdentifiers>? industryIdentifiers;
  ReadingModes? readingModes;
  int? pageCount;
  String? printType;
  List<String>? categories;
  num? averageRating;
  int? ratingsCount;
  String? maturityRating;
  bool? allowAnonLogging;
  String? contentVersion;
  PanelizationSummary? panelizationSummary;
  ImageLinks? imageLinks;
  String? language;
  String? previewLink;
  String? infoLink;
  String? canonicalVolumeLink;
  String? subtitle;

  VolumeInfo.fromJson(Map<String, dynamic> json) {
    title = json['title'];
    authors = (json['authors'] as List<dynamic>?)?.cast<String>();
    publisher = json['publisher'];
    publishedDate = json['publishedDate'];
    description = json['description'];
    if (json['industryIdentifiers'] != null) {
      industryIdentifiers = <IndustryIdentifiers>[];
      json['industryIdentifiers'].forEach((v) {
        industryIdentifiers!.add(IndustryIdentifiers.fromJson(v));
      });
    }
    readingModes = json['readingModes'] != null
        ? ReadingModes.fromJson(json['readingModes'])
        : null;
    pageCount = json['pageCount'];
    printType = json['printType'];
    categories = (json['categories']as List<dynamic>?)?.cast<String>();
    averageRating = json['averageRating'];
    ratingsCount = json['ratingsCount'];
    maturityRating = json['maturityRating'];
    allowAnonLogging = json['allowAnonLogging'];
    contentVersion = json['contentVersion'];
    panelizationSummary = json['panelizationSummary'] != null
        ? PanelizationSummary.fromJson(json['panelizationSummary'])
        : null;
    imageLinks = json['imageLinks'] != null
        ? ImageLinks.fromJson(json['imageLinks'])
        : null;
    language = json['language'];
    previewLink = json['previewLink'];
    infoLink = json['infoLink'];
    canonicalVolumeLink = json['canonicalVolumeLink'];
    subtitle = json['subtitle'];
  }
}

class IndustryIdentifiers {
  String? type;
  String? identifier;

  IndustryIdentifiers.fromJson(Map<String, dynamic> json) {
    type = json['type'];
    identifier = json['identifier'];
  }
}

class ReadingModes {
  bool? text;
  bool? image;

  ReadingModes.fromJson(Map<String, dynamic> json) {
    text = json['text'];
    image = json['image'];
  }
}

class PanelizationSummary {
  bool? containsEpubBubbles;
  bool? containsImageBubbles;

  PanelizationSummary.fromJson(Map<String, dynamic> json) {
    containsEpubBubbles = json['containsEpubBubbles'];
    containsImageBubbles = json['containsImageBubbles'];
  }
}

class ImageLinks {
  String? smallThumbnail;
  String? thumbnail;

  ImageLinks.fromJson(Map<String, dynamic> json) {
    smallThumbnail = json['smallThumbnail'];
    thumbnail = json['thumbnail'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['smallThumbnail'] = smallThumbnail;
    data['thumbnail'] = thumbnail;
    return data;
  }
}

class SaleInfo {
  String? country;
  String? saleability;
  bool? isEbook;
  ListPrice? listPrice;
  ListPrice? retailPrice;
  String? buyLink;
  List<Offers>? offers;

  SaleInfo.fromJson(Map<String, dynamic> json) {
    country = json['country'];
    saleability = json['saleability'];
    isEbook = json['isEbook'];
    listPrice = json['listPrice'] != null
        ? ListPrice.fromJson(json['listPrice'])
        : null;
    retailPrice = json['retailPrice'] != null
        ? ListPrice.fromJson(json['retailPrice'])
        : null;
    buyLink = json['buyLink'];
    if (json['offers'] != null) {
      offers = <Offers>[];
      json['offers'].forEach((v) {
        offers!.add(Offers.fromJson(v));
      });
    }
  }
}

class ListPrice {
  double? amount;
  String? currencyCode;

  ListPrice.fromJson(Map<String, dynamic> json) {
    amount = json['amount'];
    currencyCode = json['currencyCode'];
  }
}

class Offers {
  int? finskyOfferType;
  ListPrice? listPrice;
  ListPrice? retailPrice;

  Offers({this.finskyOfferType, this.listPrice, this.retailPrice});

  Offers.fromJson(Map<String, dynamic> json) {
    finskyOfferType = json['finskyOfferType'];
    listPrice = json['listPrice'] != null
        ? ListPrice.fromJson(json['listPrice'])
        : null;
    retailPrice = json['retailPrice'] != null
        ? ListPrice.fromJson(json['retailPrice'])
        : null;
  }
}

class ListPricee {
  int? amountInMicros;
  String? currencyCode;

  ListPricee.fromJson(Map<String, dynamic> json) {
    amountInMicros = json['amountInMicros'];
    currencyCode = json['currencyCode'];
  }
}

class AccessInfo {
  String? country;
  String? viewAbility;
  bool? embeddable;
  bool? publicDomain;
  String? textToSpeechPermission;
  Epub? epub;
  Epub? pdf;
  String? webReaderLink;
  String? accessViewStatus;
  bool? quoteSharingAllowed;

  AccessInfo.fromJson(Map<String, dynamic> json) {
    country = json['country'];
    viewAbility = json['viewability'];
    embeddable = json['embeddable'];
    publicDomain = json['publicDomain'];
    textToSpeechPermission = json['textToSpeechPermission'];
    epub = json['epub'] != null ? Epub.fromJson(json['epub']) : null;
    pdf = json['pdf'] != null ? Epub.fromJson(json['pdf']) : null;
    webReaderLink = json['webReaderLink'];
    accessViewStatus = json['accessViewStatus'];
    quoteSharingAllowed = json['quoteSharingAllowed'];
  }
}

class Epub {
  bool? isAvailable;
  String? acsTokenLink;

  Epub({this.isAvailable, this.acsTokenLink});

  Epub.fromJson(Map<String, dynamic> json) {
    isAvailable = json['isAvailable'];
    acsTokenLink = json['acsTokenLink'];
  }
}

class SearchInfo {
  String? textSnippet;

  SearchInfo.fromJson(Map<String, dynamic> json) {
    textSnippet = json['textSnippet'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['textSnippet'] = textSnippet;
    return data;
  }
}
