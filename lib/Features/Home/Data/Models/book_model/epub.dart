class Epub {
	bool? isAvailable;

	Epub({this.isAvailable});

	factory Epub.fromJson(Map<String, Object?> json) => Epub(
				isAvailable: json['isAvailable'] as bool?,
			);

	Map<String, Object?> toJson() => {
				'isAvailable': isAvailable,
			};
}
