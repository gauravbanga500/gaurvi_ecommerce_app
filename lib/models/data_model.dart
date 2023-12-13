import 'categories_model.dart';
import 'images_model.dart';

// class ProductListDataModel {
//
//   String? name;
//   String? average_rating;
//   String? date_created;
//   String? description;
//   int? id;
//   bool? on_sale;
//   String? price;
//   String? sale_price;
//   String? short_description;
//   String? stock_status;
//   List<CategoryModel>? category;
//   List<ImagesModel>? images;
//
//   ProductListDataModel({
//     this.name,
//     this.average_rating,
//     this.date_created,
//     this.description,
//     this.id,
//     this.on_sale,
//     this.price,
//     this.sale_price,
//     this.short_description,
//     this.stock_status,
//     this.category,
//     this.images
//   });
//
//
//   factory ProductListDataModel.fromJson(Map<String, dynamic> json){
//     List<CategoryModel> mCategory = [];
//     List<ImagesModel> mImages = [];
//
//
//     for (Map<String, dynamic> eachCat in json["category"]) {
//       mCategory.add(CategoryModel.fromJson(eachCat));
//     }
//     for (Map<String, dynamic> eachImage in json["images"]) {
//       mImages.add(ImagesModel.fromJson(eachImage));
//     }
//
//     return ProductListDataModel(
//       name: json['name'],
//       id: json['id'],
//       description: json['description'],
//       average_rating: json['average_rating'],
//       category: mCategory,
//       images: mImages,
//       date_created: json['date_created'],
//       on_sale: json['on_sale'],
//       price: json['price'],
//       sale_price: json['sale_price'],
//       short_description: json['short_description'],
//       stock_status: json['stock_status'],
//     );
//   }
// }




//
//
//
//
// class ProductListDataModel {
//   int? id;
//   String? name;
//   String? slug;
//   String? permalink;
//   String? dateCreated;
//   String? dateCreatedGmt;
//   String? dateModified;
//   String? dateModifiedGmt;
//   String? type;
//   String? status;
//   bool? featured;
//   String? catalogVisibility;
//   String? description;
//   String? shortDescription;
//   String? sku;
//   String? price;
//   String? regularPrice;
//   String? salePrice;
//   Null? dateOnSaleFrom;
//   Null? dateOnSaleFromGmt;
//   Null? dateOnSaleTo;
//   Null? dateOnSaleToGmt;
//   bool? onSale;
//   bool? purchasable;
//   int? totalSales;
//   bool? virtual;
//   bool? downloadable;
//   List<Null>? downloads;
//   int? downloadLimit;
//   int? downloadExpiry;
//   String? externalUrl;
//   String? buttonText;
//   String? taxStatus;
//   String? taxClass;
//   bool? manageStock;
//   Null? stockQuantity;
//   String? backorders;
//   bool? backordersAllowed;
//   bool? backordered;
//   Null? lowStockAmount;
//   bool? soldIndividually;
//   String? weight;
//   Dimensions? dimensions;
//   bool? shippingRequired;
//   bool? shippingTaxable;
//   String? shippingClass;
//   int? shippingClassId;
//   bool? reviewsAllowed;
//   String? averageRating;
//   int? ratingCount;
//   List<Null>? upsellIds;
//   List<Null>? crossSellIds;
//   int? parentId;
//   String? purchaseNote;
//   List<Categories>? categories;
//   List<Null>? tags;
//   List<Images>? images;
//   List<Null>? attributes;
//   List<Null>? defaultAttributes;
//   List<Null>? variations;
//   List<Null>? groupedProducts;
//   int? menuOrder;
//   String? priceHtml;
//   List<int>? relatedIds;
//   List<MetaData>? metaData;
//   String? stockStatus;
//   bool? hasOptions;
//   Links? lLinks;
//
//   ProductListDataModel(
//       {this.id,
//         this.name,
//         this.slug,
//         this.permalink,
//         this.dateCreated,
//         this.dateCreatedGmt,
//         this.dateModified,
//         this.dateModifiedGmt,
//         this.type,
//         this.status,
//         this.featured,
//         this.catalogVisibility,
//         this.description,
//         this.shortDescription,
//         this.sku,
//         this.price,
//         this.regularPrice,
//         this.salePrice,
//         this.dateOnSaleFrom,
//         this.dateOnSaleFromGmt,
//         this.dateOnSaleTo,
//         this.dateOnSaleToGmt,
//         this.onSale,
//         this.purchasable,
//         this.totalSales,
//         this.virtual,
//         this.downloadable,
//         this.downloads,
//         this.downloadLimit,
//         this.downloadExpiry,
//         this.externalUrl,
//         this.buttonText,
//         this.taxStatus,
//         this.taxClass,
//         this.manageStock,
//         this.stockQuantity,
//         this.backorders,
//         this.backordersAllowed,
//         this.backordered,
//         this.lowStockAmount,
//         this.soldIndividually,
//         this.weight,
//         this.dimensions,
//         this.shippingRequired,
//         this.shippingTaxable,
//         this.shippingClass,
//         this.shippingClassId,
//         this.reviewsAllowed,
//         this.averageRating,
//         this.ratingCount,
//         this.upsellIds,
//         this.crossSellIds,
//         this.parentId,
//         this.purchaseNote,
//         this.categories,
//         this.tags,
//         this.images,
//         this.attributes,
//         this.defaultAttributes,
//         this.variations,
//         this.groupedProducts,
//         this.menuOrder,
//         this.priceHtml,
//         this.relatedIds,
//         this.metaData,
//         this.stockStatus,
//         this.hasOptions,
//         this.lLinks});
//
//   ProductListDataModel.fromJson(Map<String, dynamic> json) {
//     id = json['id'];
//     name = json['name'];
//     slug = json['slug'];
//     permalink = json['permalink'];
//     dateCreated = json['date_created'];
//     dateCreatedGmt = json['date_created_gmt'];
//     dateModified = json['date_modified'];
//     dateModifiedGmt = json['date_modified_gmt'];
//     type = json['type'];
//     status = json['status'];
//     featured = json['featured'];
//     catalogVisibility = json['catalog_visibility'];
//     description = json['description'];
//     shortDescription = json['short_description'];
//     sku = json['sku'];
//     price = json['price'];
//     regularPrice = json['regular_price'];
//     salePrice = json['sale_price'];
//     dateOnSaleFrom = json['date_on_sale_from'];
//     dateOnSaleFromGmt = json['date_on_sale_from_gmt'];
//     dateOnSaleTo = json['date_on_sale_to'];
//     dateOnSaleToGmt = json['date_on_sale_to_gmt'];
//     onSale = json['on_sale'];
//     purchasable = json['purchasable'];
//     totalSales = json['total_sales'];
//     virtual = json['virtual'];
//     downloadable = json['downloadable'];
//     if (json['downloads'] != null) {
//       downloads = <Null>[];
//       json['downloads'].forEach((v) {
//         //downloads!.add(new Null.fromJson(v));
//       });
//     }
//     downloadLimit = json['download_limit'];
//     downloadExpiry = json['download_expiry'];
//     externalUrl = json['external_url'];
//     buttonText = json['button_text'];
//     taxStatus = json['tax_status'];
//     taxClass = json['tax_class'];
//     manageStock = json['manage_stock'];
//     stockQuantity = json['stock_quantity'];
//     backorders = json['backorders'];
//     backordersAllowed = json['backorders_allowed'];
//     backordered = json['backordered'];
//     lowStockAmount = json['low_stock_amount'];
//     soldIndividually = json['sold_individually'];
//     weight = json['weight'];
//     dimensions = json['dimensions'] != null
//         ? new Dimensions.fromJson(json['dimensions'])
//         : null;
//     shippingRequired = json['shipping_required'];
//     shippingTaxable = json['shipping_taxable'];
//     shippingClass = json['shipping_class'];
//     shippingClassId = json['shipping_class_id'];
//     reviewsAllowed = json['reviews_allowed'];
//     averageRating = json['average_rating'];
//     ratingCount = json['rating_count'];
//     // if (json['upsell_ids'] != null) {
//     //   upsellIds = <Null>[];
//     //   json['upsell_ids'].forEach((v) {
//     //     upsellIds!.add(new Null.fromJson(v));
//     //   });
//     // }
//     // if (json['cross_sell_ids'] != null) {
//     //   crossSellIds = <Null>[];
//     //   json['cross_sell_ids'].forEach((v) {
//     //     crossSellIds!.add(new Null.fromJson(v));
//     //   });
//     // }
//     parentId = json['parent_id'];
//     purchaseNote = json['purchase_note'];
//     if (json['categories'] != null) {
//       categories = <Categories>[];
//       json['categories'].forEach((v) {
//         categories!.add(new Categories.fromJson(v));
//       });
//     }
//     // if (json['tags'] != null) {
//     //   tags = <Null>[];
//     //   json['tags'].forEach((v) {
//     //     tags!.add(new Null.fromJson(v));
//     //   });
//     // }
//     if (json['images'] != null) {
//       images = <Images>[];
//       json['images'].forEach((v) {
//         images!.add(new Images.fromJson(v));
//       });
//     }
//     // if (json['attributes'] != null) {
//     //   attributes = <Null>[];
//     //   json['attributes'].forEach((v) {
//     //     attributes!.add(new Null.fromJson(v));
//     //   });
//     // }
//     // if (json['default_attributes'] != null) {
//     //   defaultAttributes = <Null>[];
//     //   json['default_attributes'].forEach((v) {
//     //     defaultAttributes!.add(new Null.fromJson(v));
//     //   });
//     // }
//     // if (json['variations'] != null) {
//     //   variations = <Null>[];
//     //   json['variations'].forEach((v) {
//     //     variations!.add(new Null.fromJson(v));
//     //   });
//     // }
//     // if (json['grouped_products'] != null) {
//     //   groupedProducts = <Null>[];
//     //   json['grouped_products'].forEach((v) {
//     //     groupedProducts!.add(new Null.fromJson(v));
//     //   });
//     // }
//     menuOrder = json['menu_order'];
//     priceHtml = json['price_html'];
//     relatedIds = json['related_ids'].cast<int>();
//     if (json['meta_data'] != null) {
//       metaData = <MetaData>[];
//       json['meta_data'].forEach((v) {
//         metaData!.add(new MetaData.fromJson(v));
//       });
//     }
//     stockStatus = json['stock_status'];
//     hasOptions = json['has_options'];
//     lLinks = json['_links'] != null ? new Links.fromJson(json['_links']) : null;
//   }
//
//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = new Map<String, dynamic>();
//     data['id'] = this.id;
//     data['name'] = this.name;
//     data['slug'] = this.slug;
//     data['permalink'] = this.permalink;
//     data['date_created'] = this.dateCreated;
//     data['date_created_gmt'] = this.dateCreatedGmt;
//     data['date_modified'] = this.dateModified;
//     data['date_modified_gmt'] = this.dateModifiedGmt;
//     data['type'] = this.type;
//     data['status'] = this.status;
//     data['featured'] = this.featured;
//     data['catalog_visibility'] = this.catalogVisibility;
//     data['description'] = this.description;
//     data['short_description'] = this.shortDescription;
//     data['sku'] = this.sku;
//     data['price'] = this.price;
//     data['regular_price'] = this.regularPrice;
//     data['sale_price'] = this.salePrice;
//     data['date_on_sale_from'] = this.dateOnSaleFrom;
//     data['date_on_sale_from_gmt'] = this.dateOnSaleFromGmt;
//     data['date_on_sale_to'] = this.dateOnSaleTo;
//     data['date_on_sale_to_gmt'] = this.dateOnSaleToGmt;
//     data['on_sale'] = this.onSale;
//     data['purchasable'] = this.purchasable;
//     data['total_sales'] = this.totalSales;
//     data['virtual'] = this.virtual;
//     data['downloadable'] = this.downloadable;
//     if (this.downloads != null) {
//       //data['downloads'] = this.downloads!.map((v) => v.toJson()).toList();
//     }
//     data['download_limit'] = this.downloadLimit;
//     data['download_expiry'] = this.downloadExpiry;
//     data['external_url'] = this.externalUrl;
//     data['button_text'] = this.buttonText;
//     data['tax_status'] = this.taxStatus;
//     data['tax_class'] = this.taxClass;
//     data['manage_stock'] = this.manageStock;
//     data['stock_quantity'] = this.stockQuantity;
//     data['backorders'] = this.backorders;
//     data['backorders_allowed'] = this.backordersAllowed;
//     data['backordered'] = this.backordered;
//     data['low_stock_amount'] = this.lowStockAmount;
//     data['sold_individually'] = this.soldIndividually;
//     data['weight'] = this.weight;
//     if (this.dimensions != null) {
//       data['dimensions'] = this.dimensions!.toJson();
//     }
//     data['shipping_required'] = this.shippingRequired;
//     data['shipping_taxable'] = this.shippingTaxable;
//     data['shipping_class'] = this.shippingClass;
//     data['shipping_class_id'] = this.shippingClassId;
//     data['reviews_allowed'] = this.reviewsAllowed;
//     data['average_rating'] = this.averageRating;
//     data['rating_count'] = this.ratingCount;
//     if (this.upsellIds != null) {
//      // data['upsell_ids'] = this.upsellIds!.map((v) => v.toJson()).toList();
//     }
//     // if (this.crossSellIds != null) {
//     //   data['cross_sell_ids'] =
//     //       this.crossSellIds!.map((v) => v.toJson()).toList();
//     // }
//     data['parent_id'] = this.parentId;
//     data['purchase_note'] = this.purchaseNote;
//     if (this.categories != null) {
//       data['categories'] = this.categories!.map((v) => v.toJson()).toList();
//     }
//     // if (this.tags != null) {
//     //   data['tags'] = this.tags!.map((v) => v.toJson()).toList();
//     // }
//     if (this.images != null) {
//       data['images'] = this.images!.map((v) => v.toJson()).toList();
//     }
//     // if (this.attributes != null) {
//     //   data['attributes'] = this.attributes!.map((v) => v.toJson()).toList();
//     // }
//     // if (this.defaultAttributes != null) {
//     //   data['default_attributes'] =
//     //       this.defaultAttributes!.map((v) => v.toJson()).toList();
//     // }
//     // if (this.variations != null) {
//     //   data['variations'] = this.variations!.map((v) => v.toJson()).toList();
//     // }
//     // if (this.groupedProducts != null) {
//     //   data['grouped_products'] =
//     //       this.groupedProducts!.map((v) => v.toJson()).toList();
//     // }
//     data['menu_order'] = this.menuOrder;
//     data['price_html'] = this.priceHtml;
//     data['related_ids'] = this.relatedIds;
//     if (this.metaData != null) {
//       data['meta_data'] = this.metaData!.map((v) => v.toJson()).toList();
//     }
//     data['stock_status'] = this.stockStatus;
//     data['has_options'] = this.hasOptions;
//     if (this.lLinks != null) {
//       data['_links'] = this.lLinks!.toJson();
//     }
//     return data;
//   }
// }
//
// class Dimensions {
//   String? length;
//   String? width;
//   String? height;
//
//   Dimensions({this.length, this.width, this.height});
//
//   Dimensions.fromJson(Map<String, dynamic> json) {
//     length = json['length'];
//     width = json['width'];
//     height = json['height'];
//   }
//
//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = new Map<String, dynamic>();
//     data['length'] = this.length;
//     data['width'] = this.width;
//     data['height'] = this.height;
//     return data;
//   }
// }
//
// class Categories {
//   int? id;
//   String? name;
//   String? slug;
//
//   Categories({this.id, this.name, this.slug});
//
//   Categories.fromJson(Map<String, dynamic> json) {
//     id = json['id'];
//     name = json['name'];
//     slug = json['slug'];
//   }
//
//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = new Map<String, dynamic>();
//     data['id'] = this.id;
//     data['name'] = this.name;
//     data['slug'] = this.slug;
//     return data;
//   }
// }
//
// class Images {
//   int? id;
//   String? dateCreated;
//   String? dateCreatedGmt;
//   String? dateModified;
//   String? dateModifiedGmt;
//   String? src;
//   String? name;
//   String? alt;
//
//   Images(
//       {this.id,
//         this.dateCreated,
//         this.dateCreatedGmt,
//         this.dateModified,
//         this.dateModifiedGmt,
//         this.src,
//         this.name,
//         this.alt});
//
//   Images.fromJson(Map<String, dynamic> json) {
//     id = json['id'];
//     dateCreated = json['date_created'];
//     dateCreatedGmt = json['date_created_gmt'];
//     dateModified = json['date_modified'];
//     dateModifiedGmt = json['date_modified_gmt'];
//     src = json['src'];
//     name = json['name'];
//     alt = json['alt'];
//   }
//
//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = new Map<String, dynamic>();
//     data['id'] = this.id;
//     data['date_created'] = this.dateCreated;
//     data['date_created_gmt'] = this.dateCreatedGmt;
//     data['date_modified'] = this.dateModified;
//     data['date_modified_gmt'] = this.dateModifiedGmt;
//     data['src'] = this.src;
//     data['name'] = this.name;
//     data['alt'] = this.alt;
//     return data;
//   }
// }
//
// class MetaData {
//   int? id;
//   String? key;
//   String? value;
//
//   MetaData({this.id, this.key, this.value});
//
//   MetaData.fromJson(Map<String, dynamic> json) {
//     id = json['id'];
//     key = json['key'];
//     value = json['value'];
//   }
//
//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = new Map<String, dynamic>();
//     data['id'] = this.id;
//     data['key'] = this.key;
//     data['value'] = this.value;
//     return data;
//   }
// }
//
// class Links {
//   List<Self>? self;
//  // List<Collection>? collection;
//
//   //Links({this.self, this.collection});
//
//   Links.fromJson(Map<String, dynamic> json) {
//     if (json['self'] != null) {
//       self = <Self>[];
//       json['self'].forEach((v) {
//         self!.add(new Self.fromJson(v));
//       });
//     }
//     // if (json['collection'] != null) {
//     //   collection = <Collection>[];
//     //   json['collection'].forEach((v) {
//     //     collection!.add(new Collection.fromJson(v));
//     //   });
//     // }
//   }
//
//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = new Map<String, dynamic>();
//     if (this.self != null) {
//       data['self'] = this.self!.map((v) => v.toJson()).toList();
//     }
//     // if (this.collection != null) {
//     //   data['collection'] = this.collection!.map((v) => v.toJson()).toList();
//     // }
//     return data;
//   }
// }
//
// class Self {
//   String? href;
//
//   Self({this.href});
//
//   Self.fromJson(Map<String, dynamic> json) {
//     href = json['href'];
//   }
//
//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = new Map<String, dynamic>();
//     data['href'] = this.href;
//     return data;
//   }
// }


import 'dart:convert';

List<ProductListDataModel> productListDataModelFromJson(String str) => List<ProductListDataModel>.from(json.decode(str).map((x) => ProductListDataModel.fromJson(x)));

String productListDataModelToJson(List<ProductListDataModel> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class ProductListDataModel {
  int? id;
  String? name;
  String? slug;
  String? permalink;
  DateTime? dateCreated;
  DateTime? dateCreatedGmt;
  DateTime? dateModified;
  DateTime? dateModifiedGmt;
  Type? type;
  Status? status;
  bool? featured;
  CatalogVisibility? catalogVisibility;
  String? description;
  String? shortDescription;
  String? sku;
  String? price;
  String? regularPrice;
  String? salePrice;
  dynamic dateOnSaleFrom;
  dynamic dateOnSaleFromGmt;
  dynamic dateOnSaleTo;
  dynamic dateOnSaleToGmt;
  bool? onSale;
  bool? purchasable;
  int? totalSales;
  bool? virtual;
  bool? downloadable;
  List<dynamic>? downloads;
  int? downloadLimit;
  int? downloadExpiry;
  String? externalUrl;
  String? buttonText;
  TaxStatus? taxStatus;
  String? taxClass;
  bool? manageStock;
  dynamic stockQuantity;
  Backorders? backorders;
  bool? backordersAllowed;
  bool? backordered;
  dynamic lowStockAmount;
  bool? soldIndividually;
  String? weight;
  Dimensions? dimensions;
  bool? shippingRequired;
  bool? shippingTaxable;
  String? shippingClass;
  int? shippingClassId;
  bool? reviewsAllowed;
  String? averageRating;
  int? ratingCount;
  List<dynamic>? upsellIds;
  List<dynamic>? crossSellIds;
  int? parentId;
  String? purchaseNote;
  List<Category>? categories;
  List<dynamic>? tags;
  List<Image>? images;
  List<Attribute>? attributes;
  List<dynamic>? defaultAttributes;
  List<int>? variations;
  List<dynamic>? groupedProducts;
  int? menuOrder;
  String? priceHtml;
  List<int>? relatedIds;
  List<MetaDatum>? metaData;
  StockStatus? stockStatus;
  bool? hasOptions;
  Links? links;

  ProductListDataModel({
    this.id,
    this.name,
    this.slug,
    this.permalink,
    this.dateCreated,
    this.dateCreatedGmt,
    this.dateModified,
    this.dateModifiedGmt,
    this.type,
    this.status,
    this.featured,
    this.catalogVisibility,
    this.description,
    this.shortDescription,
    this.sku,
    this.price,
    this.regularPrice,
    this.salePrice,
    this.dateOnSaleFrom,
    this.dateOnSaleFromGmt,
    this.dateOnSaleTo,
    this.dateOnSaleToGmt,
    this.onSale,
    this.purchasable,
    this.totalSales,
    this.virtual,
    this.downloadable,
    this.downloads,
    this.downloadLimit,
    this.downloadExpiry,
    this.externalUrl,
    this.buttonText,
    this.taxStatus,
    this.taxClass,
    this.manageStock,
    this.stockQuantity,
    this.backorders,
    this.backordersAllowed,
    this.backordered,
    this.lowStockAmount,
    this.soldIndividually,
    this.weight,
    this.dimensions,
    this.shippingRequired,
    this.shippingTaxable,
    this.shippingClass,
    this.shippingClassId,
    this.reviewsAllowed,
    this.averageRating,
    this.ratingCount,
    this.upsellIds,
    this.crossSellIds,
    this.parentId,
    this.purchaseNote,
    this.categories,
    this.tags,
    this.images,
    this.attributes,
    this.defaultAttributes,
    this.variations,
    this.groupedProducts,
    this.menuOrder,
    this.priceHtml,
    this.relatedIds,
    this.metaData,
    this.stockStatus,
    this.hasOptions,
    this.links,
  });

  factory ProductListDataModel.fromJson(Map<String, dynamic> json) => ProductListDataModel(
    id: json["id"],
    name: json["name"],
    slug: json["slug"],
    permalink: json["permalink"],
    dateCreated: json["date_created"] == null ? null : DateTime.parse(json["date_created"]),
    dateCreatedGmt: json["date_created_gmt"] == null ? null : DateTime.parse(json["date_created_gmt"]),
    dateModified: json["date_modified"] == null ? null : DateTime.parse(json["date_modified"]),
    dateModifiedGmt: json["date_modified_gmt"] == null ? null : DateTime.parse(json["date_modified_gmt"]),
    type: typeValues.map[json["type"]]!,
    status: statusValues.map[json["status"]]!,
    featured: json["featured"],
    catalogVisibility: catalogVisibilityValues.map[json["catalog_visibility"]]!,
    description: json["description"],
    shortDescription: json["short_description"],
    sku: json["sku"],
    price: json["price"],
    regularPrice: json["regular_price"],
    salePrice: json["sale_price"],
    dateOnSaleFrom: json["date_on_sale_from"],
    dateOnSaleFromGmt: json["date_on_sale_from_gmt"],
    dateOnSaleTo: json["date_on_sale_to"],
    dateOnSaleToGmt: json["date_on_sale_to_gmt"],
    onSale: json["on_sale"],
    purchasable: json["purchasable"],
    totalSales: json["total_sales"],
    virtual: json["virtual"],
    downloadable: json["downloadable"],
    downloads: json["downloads"] == null ? [] : List<dynamic>.from(json["downloads"]!.map((x) => x)),
    downloadLimit: json["download_limit"],
    downloadExpiry: json["download_expiry"],
    externalUrl: json["external_url"],
    buttonText: json["button_text"],
    taxStatus: taxStatusValues.map[json["tax_status"]]!,
    taxClass: json["tax_class"],
    manageStock: json["manage_stock"],
    stockQuantity: json["stock_quantity"],
    backorders: backordersValues.map[json["backorders"]]!,
    backordersAllowed: json["backorders_allowed"],
    backordered: json["backordered"],
    lowStockAmount: json["low_stock_amount"],
    soldIndividually: json["sold_individually"],
    weight: json["weight"],
    dimensions: json["dimensions"] == null ? null : Dimensions.fromJson(json["dimensions"]),
    shippingRequired: json["shipping_required"],
    shippingTaxable: json["shipping_taxable"],
    shippingClass: json["shipping_class"],
    shippingClassId: json["shipping_class_id"],
    reviewsAllowed: json["reviews_allowed"],
    averageRating: json["average_rating"],
    ratingCount: json["rating_count"],
    upsellIds: json["upsell_ids"] == null ? [] : List<dynamic>.from(json["upsell_ids"]!.map((x) => x)),
    crossSellIds: json["cross_sell_ids"] == null ? [] : List<dynamic>.from(json["cross_sell_ids"]!.map((x) => x)),
    parentId: json["parent_id"],
    purchaseNote: json["purchase_note"],
    categories: json["categories"] == null ? [] : List<Category>.from(json["categories"]!.map((x) => Category.fromJson(x))),
    tags: json["tags"] == null ? [] : List<dynamic>.from(json["tags"]!.map((x) => x)),
    images: json["images"] == null ? [] : List<Image>.from(json["images"]!.map((x) => Image.fromJson(x))),
    attributes: json["attributes"] == null ? [] : List<Attribute>.from(json["attributes"]!.map((x) => Attribute.fromJson(x))),
    defaultAttributes: json["default_attributes"] == null ? [] : List<dynamic>.from(json["default_attributes"]!.map((x) => x)),
    variations: json["variations"] == null ? [] : List<int>.from(json["variations"]!.map((x) => x)),
    groupedProducts: json["grouped_products"] == null ? [] : List<dynamic>.from(json["grouped_products"]!.map((x) => x)),
    menuOrder: json["menu_order"],
    priceHtml: json["price_html"],
    relatedIds: json["related_ids"] == null ? [] : List<int>.from(json["related_ids"]!.map((x) => x)),
    metaData: json["meta_data"] == null ? [] : List<MetaDatum>.from(json["meta_data"]!.map((x) => MetaDatum.fromJson(x))),
    stockStatus: stockStatusValues.map[json["stock_status"]]!,
    hasOptions: json["has_options"],
    links: json["_links"] == null ? null : Links.fromJson(json["_links"]),
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "name": name,
    "slug": slug,
    "permalink": permalink,
    "date_created": dateCreated?.toIso8601String(),
    "date_created_gmt": dateCreatedGmt?.toIso8601String(),
    "date_modified": dateModified?.toIso8601String(),
    "date_modified_gmt": dateModifiedGmt?.toIso8601String(),
    "type": typeValues.reverse[type],
    "status": statusValues.reverse[status],
    "featured": featured,
    "catalog_visibility": catalogVisibilityValues.reverse[catalogVisibility],
    "description": description,
    "short_description": shortDescription,
    "sku": sku,
    "price": price,
    "regular_price": regularPrice,
    "sale_price": salePrice,
    "date_on_sale_from": dateOnSaleFrom,
    "date_on_sale_from_gmt": dateOnSaleFromGmt,
    "date_on_sale_to": dateOnSaleTo,
    "date_on_sale_to_gmt": dateOnSaleToGmt,
    "on_sale": onSale,
    "purchasable": purchasable,
    "total_sales": totalSales,
    "virtual": virtual,
    "downloadable": downloadable,
    "downloads": downloads == null ? [] : List<dynamic>.from(downloads!.map((x) => x)),
    "download_limit": downloadLimit,
    "download_expiry": downloadExpiry,
    "external_url": externalUrl,
    "button_text": buttonText,
    "tax_status": taxStatusValues.reverse[taxStatus],
    "tax_class": taxClass,
    "manage_stock": manageStock,
    "stock_quantity": stockQuantity,
    "backorders": backordersValues.reverse[backorders],
    "backorders_allowed": backordersAllowed,
    "backordered": backordered,
    "low_stock_amount": lowStockAmount,
    "sold_individually": soldIndividually,
    "weight": weight,
    "dimensions": dimensions?.toJson(),
    "shipping_required": shippingRequired,
    "shipping_taxable": shippingTaxable,
    "shipping_class": shippingClass,
    "shipping_class_id": shippingClassId,
    "reviews_allowed": reviewsAllowed,
    "average_rating": averageRating,
    "rating_count": ratingCount,
    "upsell_ids": upsellIds == null ? [] : List<dynamic>.from(upsellIds!.map((x) => x)),
    "cross_sell_ids": crossSellIds == null ? [] : List<dynamic>.from(crossSellIds!.map((x) => x)),
    "parent_id": parentId,
    "purchase_note": purchaseNote,
    "categories": categories == null ? [] : List<dynamic>.from(categories!.map((x) => x.toJson())),
    "tags": tags == null ? [] : List<dynamic>.from(tags!.map((x) => x)),
    "images": images == null ? [] : List<dynamic>.from(images!.map((x) => x.toJson())),
    "attributes": attributes == null ? [] : List<dynamic>.from(attributes!.map((x) => x.toJson())),
    "default_attributes": defaultAttributes == null ? [] : List<dynamic>.from(defaultAttributes!.map((x) => x)),
    "variations": variations == null ? [] : List<dynamic>.from(variations!.map((x) => x)),
    "grouped_products": groupedProducts == null ? [] : List<dynamic>.from(groupedProducts!.map((x) => x)),
    "menu_order": menuOrder,
    "price_html": priceHtml,
    "related_ids": relatedIds == null ? [] : List<dynamic>.from(relatedIds!.map((x) => x)),
    "meta_data": metaData == null ? [] : List<dynamic>.from(metaData!.map((x) => x.toJson())),
    "stock_status": stockStatusValues.reverse[stockStatus],
    "has_options": hasOptions,
    "_links": links?.toJson(),
  };
}

class Attribute {
  int? id;
  String? name;
  int? position;
  bool? visible;
  bool? variation;
  List<String>? options;

  Attribute({
    this.id,
    this.name,
    this.position,
    this.visible,
    this.variation,
    this.options,
  });

  factory Attribute.fromJson(Map<String, dynamic> json) => Attribute(
    id: json["id"],
    name: json["name"],
    position: json["position"],
    visible: json["visible"],
    variation: json["variation"],
    options: json["options"] == null ? [] : List<String>.from(json["options"]!.map((x) => x)),
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "name": name,
    "position": position,
    "visible": visible,
    "variation": variation,
    "options": options == null ? [] : List<dynamic>.from(options!.map((x) => x)),
  };
}

enum Backorders {
  NO
}

final backordersValues = EnumValues({
  "no": Backorders.NO
});

enum CatalogVisibility {
  VISIBLE
}

final catalogVisibilityValues = EnumValues({
  "visible": CatalogVisibility.VISIBLE
});

class Category {
  int? id;
  String? name;
  String? slug;

  Category({
    this.id,
    this.name,
    this.slug,
  });

  factory Category.fromJson(Map<String, dynamic> json) => Category(
    id: json["id"],
    name: json["name"],
    slug: json["slug"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "name": name,
    "slug": slug,
  };
}

class Dimensions {
  String? length;
  String? width;
  String? height;

  Dimensions({
    this.length,
    this.width,
    this.height,
  });

  factory Dimensions.fromJson(Map<String, dynamic> json) => Dimensions(
    length: json["length"],
    width: json["width"],
    height: json["height"],
  );

  Map<String, dynamic> toJson() => {
    "length": length,
    "width": width,
    "height": height,
  };
}

class Image {
  int? id;
  DateTime? dateCreated;
  DateTime? dateCreatedGmt;
  DateTime? dateModified;
  DateTime? dateModifiedGmt;
  String? src;
  String? name;
  String? alt;

  Image({
    this.id,
    this.dateCreated,
    this.dateCreatedGmt,
    this.dateModified,
    this.dateModifiedGmt,
    this.src,
    this.name,
    this.alt,
  });

  factory Image.fromJson(Map<String, dynamic> json) => Image(
    id: json["id"],
    dateCreated: json["date_created"] == null ? null : DateTime.parse(json["date_created"]),
    dateCreatedGmt: json["date_created_gmt"] == null ? null : DateTime.parse(json["date_created_gmt"]),
    dateModified: json["date_modified"] == null ? null : DateTime.parse(json["date_modified"]),
    dateModifiedGmt: json["date_modified_gmt"] == null ? null : DateTime.parse(json["date_modified_gmt"]),
    src: json["src"],
    name: json["name"],
    alt: json["alt"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "date_created": dateCreated?.toIso8601String(),
    "date_created_gmt": dateCreatedGmt?.toIso8601String(),
    "date_modified": dateModified?.toIso8601String(),
    "date_modified_gmt": dateModifiedGmt?.toIso8601String(),
    "src": src,
    "name": name,
    "alt": alt,
  };
}

class Links {
  List<Collection>? self;
  List<Collection>? collection;

  Links({
    this.self,
    this.collection,
  });

  factory Links.fromJson(Map<String, dynamic> json) => Links(
    self: json["self"] == null ? [] : List<Collection>.from(json["self"]!.map((x) => Collection.fromJson(x))),
    collection: json["collection"] == null ? [] : List<Collection>.from(json["collection"]!.map((x) => Collection.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "self": self == null ? [] : List<dynamic>.from(self!.map((x) => x.toJson())),
    "collection": collection == null ? [] : List<dynamic>.from(collection!.map((x) => x.toJson())),
  };
}

class Collection {
  String? href;

  Collection({
    this.href,
  });

  factory Collection.fromJson(Map<String, dynamic> json) => Collection(
    href: json["href"],
  );

  Map<String, dynamic> toJson() => {
    "href": href,
  };
}

class MetaDatum {
  int? id;
  Key? key;
  dynamic value;

  MetaDatum({
    this.id,
    this.key,
    this.value,
  });

  factory MetaDatum.fromJson(Map<String, dynamic> json) => MetaDatum(
    id: json["id"],
    key: keyValues.map[json["key"]]!,
    value: json["value"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "key": keyValues.reverse[key],
    "value": value,
  };
}

enum Key {
  EKIT_POST_VIEWS_COUNT,
  RANK_MATH_ANALYTIC_OBJECT_ID,
  RANK_MATH_INTERNAL_LINKS_PROCESSED,
  WC_PRODUCTDATA_OPTIONS,
  WP_PAGE_TEMPLATE
}

final keyValues = EnumValues({
  "ekit_post_views_count": Key.EKIT_POST_VIEWS_COUNT,
  "rank_math_analytic_object_id": Key.RANK_MATH_ANALYTIC_OBJECT_ID,
  "rank_math_internal_links_processed": Key.RANK_MATH_INTERNAL_LINKS_PROCESSED,
  "wc_productdata_options": Key.WC_PRODUCTDATA_OPTIONS,
  "_wp_page_template": Key.WP_PAGE_TEMPLATE
});

class ValueElement {
  String? productBlock;
  String? topContent;
  String? bottomContent;
  String? bubbleNew;
  String? bubbleText;
  String? customTabTitle;
  String? customTab;
  String? productVideo;
  String? productVideoSize;
  String? productVideoPlacement;

  ValueElement({
    this.productBlock,
    this.topContent,
    this.bottomContent,
    this.bubbleNew,
    this.bubbleText,
    this.customTabTitle,
    this.customTab,
    this.productVideo,
    this.productVideoSize,
    this.productVideoPlacement,
  });

  factory ValueElement.fromJson(Map<String, dynamic> json) => ValueElement(
    productBlock: json["_product_block"],
    topContent: json["_top_content"],
    bottomContent: json["_bottom_content"],
    bubbleNew: json["_bubble_new"],
    bubbleText: json["_bubble_text"],
    customTabTitle: json["_custom_tab_title"],
    customTab: json["_custom_tab"],
    productVideo: json["_product_video"],
    productVideoSize: json["_product_video_size"],
    productVideoPlacement: json["_product_video_placement"],
  );

  Map<String, dynamic> toJson() => {
    "_product_block": productBlock,
    "_top_content": topContent,
    "_bottom_content": bottomContent,
    "_bubble_new": bubbleNew,
    "_bubble_text": bubbleText,
    "_custom_tab_title": customTabTitle,
    "_custom_tab": customTab,
    "_product_video": productVideo,
    "_product_video_size": productVideoSize,
    "_product_video_placement": productVideoPlacement,
  };
}

enum Status {
  PUBLISH
}

final statusValues = EnumValues({
  "publish": Status.PUBLISH
});

enum StockStatus {
  INSTOCK
}

final stockStatusValues = EnumValues({
  "instock": StockStatus.INSTOCK
});

enum TaxStatus {
  TAXABLE
}

final taxStatusValues = EnumValues({
  "taxable": TaxStatus.TAXABLE
});

enum Type {
  SIMPLE,
  VARIABLE
}

final typeValues = EnumValues({
  "simple": Type.SIMPLE,
  "variable": Type.VARIABLE
});

class EnumValues<T> {
  Map<String, T> map;
  late Map<T, String> reverseMap;

  EnumValues(this.map);

  Map<T, String> get reverse {
    reverseMap = map.map((k, v) => MapEntry(v, k));
    return reverseMap;

  }
}



