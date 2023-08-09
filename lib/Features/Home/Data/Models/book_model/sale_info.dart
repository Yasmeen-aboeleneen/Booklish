class SaleInfo {
	String? country;
	String? saleability;
	bool? isEbook;

	SaleInfo({this.country, this.saleability, this.isEbook});

	factory SaleInfo.fromJson(Map<String, Object?> json) => SaleInfo(
				country: json['country'] as String?,
				saleability: json['saleability'] as String?,
				isEbook: json['isEbook'] as bool?,
			);

	Map<String, Object?> toJson() => {
				'country': country,
				'saleability': saleability,
				'isEbook': isEbook,
			};
}
