class Pdf {
	bool? isAvailable;
	String? acsTokenLink;

	Pdf({this.isAvailable, this.acsTokenLink});

	factory Pdf.fromJson(Map<String, Object?> json) => Pdf(
				isAvailable: json['isAvailable'] as bool?,
				acsTokenLink: json['acsTokenLink'] as String?,
			);

	Map<String, Object?> toJson() => {
				'isAvailable': isAvailable,
				'acsTokenLink': acsTokenLink,
			};
}
