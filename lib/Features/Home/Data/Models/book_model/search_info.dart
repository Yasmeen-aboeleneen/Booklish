class SearchInfo {
	String? textSnippet;

	SearchInfo({this.textSnippet});

	factory SearchInfo.fromJson(Map<String, Object?> json) => SearchInfo(
				textSnippet: json['textSnippet'] as String?,
			);

	Map<String, Object?> toJson() => {
				'textSnippet': textSnippet,
			};
}
