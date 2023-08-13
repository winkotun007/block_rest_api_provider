class GetAllandOneProduts {
  GetAllandOneProduts({
      this.productId, 
      this.barcode, 
      this.name, 
      this.shortName, 
      this.categoryId, 
      this.productTypeId, 
      this.brandId, 
      this.boughtPrice, 
      this.sellPriceRetail, 
      this.sellPricewhole, 
      this.updatedDate, 
      this.createdDate, 
      this.imageUrl, 
      this.alertQuantity, 
      this.isVisible, 
      this.brand, 
      this.category, 
      this.productType, 
      this.changedpricelogs, 
      this.sales, 
      this.searchedcounts, 
      this.warehouses,});

  GetAllandOneProduts.fromJson(dynamic json) {
    productId = json['ProductId'];
    barcode = json['Barcode'];
    name = json['Name'];
    shortName = json['ShortName'];
    categoryId = json['CategoryId'];
    productTypeId = json['ProductTypeId'];
    brandId = json['BrandId'];
    boughtPrice = json['BoughtPrice'];
    sellPriceRetail = json['SellPriceRetail'];
    sellPricewhole = json['SellPricewhole'];
    updatedDate = json['UpdatedDate'];
    createdDate = json['CreatedDate'];
    imageUrl = json['ImageUrl'];
    alertQuantity = json['AlertQuantity'];
    isVisible = json['IsVisible'];
    brand = json['Brand'];
    category = json['Category'];
    productType = json['ProductType'];
    if (json['Changedpricelogs'] != null) {
      changedpricelogs = [];
      json['Changedpricelogs'].forEach((v) {
        changedpricelogs?.add(Dynamic.fromJson(v));
      });
    }
    if (json['Sales'] != null) {
      sales = [];
      json['Sales'].forEach((v) {
        sales?.add(Dynamic.fromJson(v));
      });
    }
    if (json['Searchedcounts'] != null) {
      searchedcounts = [];
      json['Searchedcounts'].forEach((v) {
        searchedcounts?.add(Dynamic.fromJson(v));
      });
    }
    if (json['Warehouses'] != null) {
      warehouses = [];
      json['Warehouses'].forEach((v) {
        warehouses?.add(Dynamic.fromJson(v));
      });
    }
  }
  String? productId;
  String? barcode;
  String? name;
  dynamic shortName;
  String? categoryId;
  dynamic productTypeId;
  dynamic brandId;
  num? boughtPrice;
  num? sellPriceRetail;
  num? sellPricewhole;
  dynamic updatedDate;
  String? createdDate;
  dynamic imageUrl;
  num? alertQuantity;
  dynamic isVisible;
  dynamic brand;
  dynamic category;
  dynamic productType;
  List<dynamic>? changedpricelogs;
  List<dynamic>? sales;
  List<dynamic>? searchedcounts;
  List<dynamic>? warehouses;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['ProductId'] = productId;
    map['Barcode'] = barcode;
    map['Name'] = name;
    map['ShortName'] = shortName;
    map['CategoryId'] = categoryId;
    map['ProductTypeId'] = productTypeId;
    map['BrandId'] = brandId;
    map['BoughtPrice'] = boughtPrice;
    map['SellPriceRetail'] = sellPriceRetail;
    map['SellPricewhole'] = sellPricewhole;
    map['UpdatedDate'] = updatedDate;
    map['CreatedDate'] = createdDate;
    map['ImageUrl'] = imageUrl;
    map['AlertQuantity'] = alertQuantity;
    map['IsVisible'] = isVisible;
    map['Brand'] = brand;
    map['Category'] = category;
    map['ProductType'] = productType;
    if (changedpricelogs != null) {
      map['Changedpricelogs'] = changedpricelogs?.map((v) => v.toJson()).toList();
    }
    if (sales != null) {
      map['Sales'] = sales?.map((v) => v.toJson()).toList();
    }
    if (searchedcounts != null) {
      map['Searchedcounts'] = searchedcounts?.map((v) => v.toJson()).toList();
    }
    if (warehouses != null) {
      map['Warehouses'] = warehouses?.map((v) => v.toJson()).toList();
    }
    return map;
  }

}