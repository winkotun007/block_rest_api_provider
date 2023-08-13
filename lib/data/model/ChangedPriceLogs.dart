class ChangedPriceLogs {
  ChangedPriceLogs({
      this.priceLogId, 
      this.productId, 
      this.changedDate, 
      this.latestBoughtPrice, 
      this.latestRetailPrice, 
      this.latestWholePrice, 
      this.product,});

  ChangedPriceLogs.fromJson(dynamic json) {
    priceLogId = json['PriceLogId'];
    productId = json['ProductId'];
    changedDate = json['ChangedDate'];
    latestBoughtPrice = json['LatestBoughtPrice'];
    latestRetailPrice = json['LatestRetailPrice'];
    latestWholePrice = json['LatestWholePrice'];
    product = json['Product'];
  }
  num? priceLogId;
  String? productId;
  String? changedDate;
  num? latestBoughtPrice;
  num? latestRetailPrice;
  num? latestWholePrice;
  dynamic product;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['PriceLogId'] = priceLogId;
    map['ProductId'] = productId;
    map['ChangedDate'] = changedDate;
    map['LatestBoughtPrice'] = latestBoughtPrice;
    map['LatestRetailPrice'] = latestRetailPrice;
    map['LatestWholePrice'] = latestWholePrice;
    map['Product'] = product;
    return map;
  }

}